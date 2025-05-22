<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Contact;
use App\Http\Requests\Frontend\ContactStoreRequest;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ContactController extends Controller
{
   public function index(){
      return view('frontend.contact');
   }

   public function store(ContactStoreRequest $request){
      $request->validated();
      $request->merge([
         'ip_address' => $request->ip()
      ]);
      $contact = Contact::create($request->except('_token'));

      if(!$contact){
         flash()->error('Faild Operation!');
      }

      flash()->success('Operation completed successfully!');
      return redirect()->back();
   }
}
