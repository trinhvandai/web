<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Auth;
use App\User;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Program;
use App\Batch;
use Illuminate\Support\Facades\DB;

class ProgramController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function blog() {
        $progs = Program::where('id', '>', 0)->paginate(5);

        $progs->setPath('blog');
        $data['progs'] = $progs;

        // $actid = DB::table('batchs')->select('actid')->where('prgid', '=', $progs['id'])->get();
        
        // $actions = DB::table('actions')->select('content')->where('actid', '=', $actid)->get();
        // $data['progs'] = $actions;

        return view('blog', array('data' => $data, 'title' => 'Latest Blog Programs', 'description' => '', 'page' => 'blog'));
    }

    public function blog_post($url, Request $request) {
        $nuserid = $request->get('nuserid');
        $nprogid = $request->get('nprogid');
        

        $prog = Program::whereUrl($url)->first();
        $tags = $prog->tags;
        $prev_url = Program::prevBlogPostUrl($prog->url);
        $next_url = Program::nextBlogPostUrl($prog->url);
        $title = $prog->title;
        $description = $prog->description;
        $page = 'blog';
        $prog = Program::find($prog->id);
        $batchs = Program::find($prog->id)->batchs;
        $actions = DB::table('actions')->where('id', '')->join('batchs', 'actions.id', '=', 'batchs.actid')->select('action.*')->where('batch.prg', $prog->id);
        // $actions = Program::find($prog->id)->actions;
        $coach = Program::find($prog->id)->coach;
        $action_date = Batch::select('date')->where('prgid', $prog->id)->distinct()->get();
        if (isset(Auth::user()->id)) $user = Auth::user();
        if ((isset($nuserid)) && (Auth::user()->customer==1)){
            $yes = DB::table('participate')->where('userid', $nuserid)->where('prgid', $nprogid)->first();
                                
            if (is_null($yes)){ 
                DB::table('participate')->insert(
                    ['prgid' => $nprogid, 'userid' => $nuserid]
                );
            }
            else DB::table('participate')->where('prgid', $nprogid)->where('userid', $nuserid)->delete();
        }
        
       

        // $coach = DB::table('users')->select('name', 'adress')->where('id', '=', $coach[0]->id)->get();
        $post = $prog;
        $data = compact('prev_url', 'next_url', 'tags', 'post', 'title', 'description', 'page', 'actions', 'batchs', 'coach', 'haha', 'prog', 'action_date', 'user');

        return view('blog_post', $data);
    }

    

}
