<?php

namespace App\Http\Controllers\Backend\UserDashboard;

use App\Utils\ImageManager;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;
use Illuminate\Validation\Rules\Password;
use App\Notifications\PasswordChangedNotification;
use App\Http\Requests\Backend\UserDashboard\SettingsUpdateRequest;

class SettingsController extends Controller
{
    public function index()
    {
        return view('backend.user-dashboard.settings');
    }

    public function update(SettingsUpdateRequest $request, ImageManager $imageManager)
    {
        $user = auth()->user();
        try{
            DB::beginTransaction();
            $imageData = $imageManager->updateImage($request, $user, 'users');
        
            $user->update([
                'name' => $request->name,
                'user_name' => $request->user_name,
                'email' => $request->email ?? $user->email,
                'phone' => $request->phone ?? $user->phone,
                'country' => $request->country ?? $user->country,
                'city' => $request->city ?? $user->city,
                'street' => $request->street ?? $user->street,
                'image' => $imageData['path'],
                'bio' => $request->bio ?? $user->bio,
            ]);
            DB::commit();
            
        }catch(\Exception $e){
            DB::rollBack();
            if(isset($imageData['path']) && file_exists(public_path($imageData['path']))){
                unlink(public_path($imageData['path']));
            }
            return redirect()->back()->withErrors(['errors'=> $e->getMessage()]);
        }
        Session::flash('success', 'Setting Updated Successfuly');
        return redirect()->back();
    }

    public function updatePassword(Request $request){
        $request->validate([
            'current_password' => ['required', 'current_password'],
            'password' => ['required', 'confirmed', Password::defaults()],
        ]);
        
        $user = auth()->user();
        $user->update([
            'password' => $request->password
        ]);
        
        $user->notify(new PasswordChangedNotification());

        auth()->logoutOtherDevices($request->password);

        Session::flash('success', 'Password Updated Successfuly');
        return redirect()->back();
    }

}
