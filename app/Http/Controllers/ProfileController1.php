<?php

namespace App\Http\Controllers;

use Auth;
use App\User;
use Validator;
use Illuminate\Http\Request;


class ProfileController extends Controller
{
	
	// public function __construct()
 //    {
 //        $this->middleware('auth');
 //    }
	public function show() {

        $user = Auth::user();
        // $user = User::find(Auth::user()->id);  
        $description = 'Update';
        $title = 'Update';
        $page = 'home';
        $data = compact('user', 'title', 'page', 'description');

        if ($user)
        return view('update', $data);

    }

    public function update(Request $request){

        $this->validate($request, [
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|confirmed|min:6',
            'username' => 'required|max:20|unique:users',   
            'customer' => 'boolean',
            'coach' => 'boolean',
            'bday' => 'date',
            'adress',
            'weight' => 'between:0,99.99',
            'job',     
        ]);
        $name = $request->get('name');
       
        $user1 = User::find('name', $request->name)->first();
        // $user = Auth::user();
        
        
        $user1->bday = $request->bday;
        $user1->address = $request->adress;
        $user1->weight = $request->weight;
        $user1->job = $request->job;
        
        $user1->update($request->all());
        DB::table('users')
            ->where('name', $name)
            ->update(['job' => $request->get('job')]);

        $title = 'Update';
        $data = compact('user1', 'title', 'page', 'description');
        return redirect()->back();

    }
   
}
