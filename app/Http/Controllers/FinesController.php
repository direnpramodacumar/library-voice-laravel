<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Fine;
use Carbon\Carbon;

class FinesController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
      
        if($request->has('username') && $request->input('username')!=''){
            $keyword=$request->input('username');
            $pieces = explode(" ", $keyword);
    
            if(strpos($keyword,' ')==false){
                $users=User::where('first_name', 'like', "%{$pieces[0]}%")->get();
            }
            else{
                $users=User::where('first_name', 'like', "%{$pieces[0]}%")
                            ->where('last_name', 'like', "%{$pieces[1]}%")->get();
            }
            if(count($users)>0){
                foreach ($users as $user) {
                    $fines=Fine::where('user_id', '=', $user->id)->
                    paginate(5)->appends('user_id',$keyword);
                }
                return view('pages.adminPages.fines.index')->with('fines', $fines);
            }
            else {
                return redirect('fine')->with('error','User not found');
            }
        }
        else{
            $fines=Fine::orderBy('id','asc')->paginate(10);
        }
       
        return view('pages.adminPages.fines.index')->with('fines', $fines);
    }

    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update($id)
    {
        $fines=Fine::where('id', $id)->get();
        foreach ($fines as $fine) {
            if (($fine->paid)==0) {
                $fine=Fine::where('id', $id)->update(['paid' => 1]);
                return redirect('fine')->with('success','Fine Paid');
             } else {
                return redirect('fine')->with('error','Fine already Paid');
             }
        }
    }

}
