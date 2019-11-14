<?php

namespace App\Http\Controllers;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\User;

class UsersController extends Controller
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
            $users=User::whereRaw("concat(first_name, ' ', last_name) like '%{$keyword}%' ")->
            orwhere('last_name', 'like', "%{$keyword}%")->
            orwhere('email', 'like', "%{$keyword}%")->
            orwhere('phone_number', 'like', "%{$keyword}%")->paginate(5)->appends('q',$keyword);
            
        }
        
        else{
            $users=User::orderBy('id','asc')->paginate(10);
        }
        //$books=Book::all();
        return view('pages.adminPages.users.index')->with('users',$users);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
        $keyword=auth()->user()->id;
        $users=User::find($keyword);
        if($users->admin == 0){
            return view('pages.userPages.show')->with('users',$users);
        }
        else{
            return view('pages.adminPages.users.show')->with('users',$users);
        }
        
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $users=User::find($id);
        return view('pages.adminPages.users.edit')->with('users',$users);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[

            'first_name'=>'required',
            'last_name'=>'required',
            'email'=>'required',
            'address'=>'required',
            'phone_number'=>'required',
            'admin'=>'required|numeric',
            'active'=>'required|numeric'
        ]);
        // Handle File Upload
        if($request->hasFile('image')){
            // Get filename with the extension
            $filenameWithExt = $request->file('image')->getClientOriginalName();
            // Get just filename
            $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
            // Get just ext
            $extension = $request->file('image')->getClientOriginalExtension();
            // Filename to store
            $fileNameToStore= $filename.'_'.time().'.'.$extension;
            // Upload Image
            $path = $request->file('image')->storeAs('public/cover_images', $fileNameToStore);
        } else {
            $fileNameToStore = 'default.png';
        }
        //create book
        $users=User::find($id);
        if($request->input('active')==null){
             $active=$users->active;
        } 
        else {
            $active= $request->input('active');
        }
        $users->first_name = $request->input('first_name');
        $users->last_name = $request->input('last_name');
        $users->email = $request->input('email');
        $users->phone_number = $request->input('phone_number');
        $users->address = $request->input('address');
        $users->image =  $fileNameToStore;
        $users->admin = $request->input('admin');
        $users->active = $active;
        $users->save();

        return redirect('/user')->with('success','User Updated');
    
    }

    public function autocomplete(Request $request){
        $term = $request->input('term');
        
        $results = array();
        
        $queries = User::where('id', 'LIKE', '%'.$term.'%')->get();
        
        foreach ($queries as $query)
        {
            $results[] = ['value' => $query->id];
        }
    return response()->json($results);
    }
}
