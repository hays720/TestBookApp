<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\testApp;
use Illuminate\Support\Facades\DB;

class mainePageController extends Controller
{
    public function execute(Request $request){
     $pages = testApp::paginate(3);
    return view('site.index', [
         'page'=> $pages
        ]
    );}
}
