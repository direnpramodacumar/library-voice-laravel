<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session; 
use App\Book;
use App\User;
use App\Loan;
use App\Fine;

class HomeController extends Controller
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
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $useradmin=auth()->user()->admin;
        $active=auth()->user()->active;
        Session::put('admin',$useradmin);
       
       //check if it an admin
        if($useradmin==1){
            $book=Book::all();
            $user=User::all();
            $loan=Loan::all();
            $fine=Fine::where('paid', '=', 0)->get();
            return view('pages.adminPages.adminindex')
                    ->with('books',$book)
                    ->with('users',$user)
                    ->with('loans',$loan)
                    ->with('fines',$fine)
                    ->with('useradmin',$useradmin);
        }
        //check if it an user anf if it active
        if($useradmin==0 && $active==1){
                $useradmin=auth()->user()->admin;
                $userId=auth()->user()->id;
                $loan=Loan::where('user_id', '=', $userId)->get();
                $fine=Fine::where('user_id', '=', $userId)->get();
                return view('pages.userPages.userIIndex')
                        ->with('loans',$loan)
                        ->with('fines',$fine)
                        ->with('useradmin',$useradmin);
        }
        else {
            return redirect('/login')->with('error','User not active');
        }
        
    }
}
