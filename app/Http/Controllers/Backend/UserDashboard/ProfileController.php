<?php

namespace App\Http\Controllers\Backend\UserDashboard;

use App\Http\Requests\backend\UserDassboard\PostStoreRequest;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\View\View;

class ProfileController extends Controller
{
    public function index(){
        return view('backend.user-dashboard.dashboard');
    } 

    public function store(PostStoreRequest $request){
        dd($request);
    }
}
