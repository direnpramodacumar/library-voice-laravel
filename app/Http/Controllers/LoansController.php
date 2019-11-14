<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Loan;
use App\Book;
use App\User;
use App\Fine;
use Carbon\Carbon;




class LoansController extends Controller
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
                    $loans=Loan::where('user_id', '=', $user->id)->
                    paginate(5)->appends('user_id',$keyword);
                }
                return view('pages.adminPages.loans.index')->with('loans', $loans);
            }
            else {
                return redirect('loan')->with('error','User not found');
            }
           
        }
        else{
            $loans=Loan::orderBy('id','asc')->paginate(10);
            return view('pages.adminPages.loans.index')->with('loans', $loans);
        }
       
       
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        
        return view('pages.adminPages.loans.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[

            
            'userid'=>'required|numeric',
            'isbn'=>'required|numeric',
        ]);
        $loan = new Loan;
        $books=Book::where('isbn', $request->input('isbn'))->get();
        $users=User::where('id', $request->input('userid'))->get();
      
        if(count($books)>0 && count($users)>0){
            foreach ($books as $book) {
                if($book->quantity!=0){
                    $loan->user_id = $request->input('userid');
                    $loan->book_id = $book->id;
                    $loan->due_date= Carbon::now()->addDays(10)->toDateTimeString();
                    $loan->save();
        
                    $book->decrement('quantity',1);
                }
                else{
                    return redirect('/loan')->with('error','Book Not Available');
                }
            }
            return redirect('/loan')->with('success','Book loaned');
        }else {
            return redirect('loan/create')->with('error','Wrong User Email or ISBN ');
        }
        
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
        $loans=Loan::where('id', $id)->get();
        foreach ($loans as $loan) {
            if (is_null($loan->return_date)) {
                
                $loans=Loan::where('id', $id)->update(['return_date' => Carbon::now()]);

                Book::where('id',$loan->book_id)->increment('quantity',1);
               
                $due_date = Carbon::parse($loan->due_date);
                $now = Carbon::parse($loan->return_date);
               
                $lengthOfAd = $due_date->diffInDays($now);
              
                if($lengthOfAd > 0){
                    $fines = new Fine;
                    $fines->user_id = $loan->user_id;
                    $fines->price = $lengthOfAd;
                    $fines->loan_id = $loan->id;
                    $fines->save();
                }
                return redirect('/loan')->with('success','Book Returned');
                
             } else {
                return redirect('/loan')->with('error','Book already Returned');
             }
        }
        
    }
  
}
