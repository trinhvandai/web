<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Action;
use App\Program;
use DB;

class SearchController extends Controller
{
    //
    public function getSearch(Request $request){
        $search1=$request->search;
        // $coachs = DB::table('users')->where('coach', 1)->whereRaw("MATCH (name) AGAINST (? IN BOOLEAN MODE)", [$search1])->get();
        // DB::statement("SELECT * FROM 'users' WHERE 'coach' = 1 AND 'name' MATCH");
        $coachs = DB::select( DB::raw("SELECT * FROM users WHERE coach = 1 AND  MATCH (name) AGAINST ('$search1')") );  

        $title = 'Search';
        $page = 'search';
        $description = 'Joined Prorgams and Tutorial';
        
        $data = compact('coachs', 'search1', 'title', 'page', 'description');

        return view('search', $data);
    }
    
}
