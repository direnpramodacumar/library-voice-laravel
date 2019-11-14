<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Book;
use App\Category;
use Jenssegers\Agent\Agent;

class BooksController extends Controller
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
        return view('pages.adminPages.books.index')->with('books',$books);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        
        return view('pages.adminPages.books.create')->with('categories',$categories);
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

                'title'=>'required',
                'author'=>'required',
                'quantity'=>'required|numeric',
                'publisher'=>'required',
                'category'=>'required',
                'isbn'=>'required',
                'image'=>'required'

       ]);

       //create book
       $book =new Book;
       $book->title = $request->input('title');
       $book->author = $request->input('author');
       $book->quantity = $request->input('quantity');
       $book->category_id =$request->input('category');
       $book->publisher = $request->input('publisher');
       $book->isbn = $request->input('isbn');
       $book->image = $request->input('image');
       $book->save();

       return redirect('/book')->with('success','Book Added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $books=Book::find($id);
        return view('pages.adminPages.books.show')->with('books',$books);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id){
        $books=Book::find($id);
       
        $categories=Category::find($books->category_id);
       
        return view('pages.adminPages.books.edit')
                    ->with('books',$books)
                    ->with('categories',$categories);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $idd
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[

            'title'=>'required',
            'author'=>'required',
            'quantity'=>'required|numeric',
            'publisher'=>'required',
            'category'=>'required',
            'isbn'=>'required',
            'image'=>'required'
        ]);

        //create book
        $book = Book::find($id);
        $book->title = $request->input('title');
        $book->author = $request->input('author');
        $book->quantity = $request->input('quantity');
        $book->category_id =$request->input('category');
        $book->publisher = $request->input('publisher');
        $book->isbn = $request->input('isbn');
        $book->image = $request->input('image');
        $book->save();

        return redirect('/book')->with('success','Book Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $books=Book::find($id);
        $books->delete();

        return redirect('/book')->with('success','Book Removed');
    }

    public function autocomplete(Request $request){
        $term = $request->input('term');
        
        $results = array();
        
        $queries = Book::where('isbn', 'LIKE', '%'.$term.'%')->take(10)->get();
        
        foreach ($queries as $query)
        {
            $results[] = [ 'id' => $query->id, 'value' => $query->isbn];
        }
    return response()->json($results);
    }
}
