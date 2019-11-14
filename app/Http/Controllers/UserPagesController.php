<?php

namespace App\Http\Controllers;
use App\Book;
use App\Loan;
use App\Fine;
use App\Category;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;

class UserPagesController extends Controller
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

    public function book(Request $request){
        if($request->has('q')&& $request->input('q')!=''){
            $keyword=$request->input('q');
            $books=Book::where('title', 'like', "%{$keyword}%")->
            orwhere('author', 'like', "%{$keyword}%")->
            orwhere('publisher', 'like', "%{$keyword}%")->
            orwhere('isbn', 'like', "%{$keyword}%")->paginate(5)->appends('q',$keyword);
        }
        else{
            $books=Book::paginate(10);
        }
        return view('pages.userPages.books.index')->with('books',$books);
    }

    public function fine(){
       
        $keyword=auth()->user()->id;
        $fines=Fine::where('user_id', '=', $keyword)->
            paginate(5)->appends('userid',$keyword);
       
        return view('pages.userPages.fines.index')->with('fines', $fines);
    }
    public function loan(){
        $keyword=auth()->user()->id;
        $loans=Loan::where('user_id', '=', $keyword)->
            paginate(5)->appends('userid',$keyword);

        return view('pages.userPages.loans.index')->with('loans', $loans);
    }

 
}
