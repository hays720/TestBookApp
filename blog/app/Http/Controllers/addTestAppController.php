<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use App\testApp;
use Illuminate\Support\Facades\DB;

class addTestAppController extends Controller
{
    public function addBook (Request $request){

        $date = Carbon::now().' '.$_FILES['image']['name'];
        if($request->isMethod('post')){

            if($request->hasFile('image')) {
                $file = $request->file('image');
                $file->move( 'img',$date);

            }

            $Title = $request->input('Title');
            $Author = $request->input('Author');
            $pages = $request->input('Pages');
            $Description = $request->input('Description');
            $Image = $date;

            $dbadd = array('Title'=>$Title, 'Author'=> $Author, 'Pages'=>$pages, 'Disc'=>$Description, 'Image'=>$Image);
            DB::table('testApp')->insert($dbadd);

            return redirect('/');
        }
    }
}
