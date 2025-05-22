<?php

namespace App\Http\Controllers\Backend\UserDashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class NotificationsController extends Controller
{
   public function index(){
        return view('backend.user-dashboard.notifications');
   }
}
