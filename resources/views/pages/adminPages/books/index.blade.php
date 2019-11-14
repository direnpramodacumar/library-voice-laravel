@extends('layouts.appAdmin')

@section('title')
    Books
@endsection

@section('activeBook')
   active    
@endsection

@section('contentAdmin')
  @if(count($books)>0)
  <div class="card">
    <div class="card-header">
        <a class="btn btn-primary float-left" href="/book/create" role="button">New Book</a>
        <a href="{{ url('dynamic_pdf/pdf/book') }}"  class="btn btn-danger">Generate Report</a>
      <div class="row float-right"> 
            <form id="searchform" class="form-inline " method="get">
                <input class="form-control mr-sm-2" type="search"  id="search" name="q" placeholder="Search book" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0 float-right" type="submit">Search</button>
            </form>
      </div>
    </div>
    <div class="card-body">
    <div class="table-responsive-sm">
      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
          <tr>
            <th>ID</th>
            <th>Image</th>
            <th>Title</th>
            <th>Author</th>
            <th>Quantity</th>
            <th>Category</th>
            <th>Publisher</th>
            <th>ISBN</th>
            <th>Edit</th>
            <th>Delete</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($books as $book)
              <tr>
                <input type="hidden" id="bookNumber" value="{{count($books)}}">
                <td>{{$book->id}}</td>
                <td><img src="{{$book->image}}" alt="" width="50px" height="50px" class="mx-auto"></td>
                <td>{{$book->title}}</td>
                <td>{{$book->author}}</td>
                <td>{{$book->quantity}}</td>
                <td>{{$book->category->name}}</td>
                <td>{{$book->publisher}}</td>
                <td>{{$book->isbn}}</td>
                <td>
                  <a class="btn btn-primary" data-toggle="tooltip" data-placement="top" title="Edit Book" href="https://bookapp.test/book/{{$book->id}}/edit" role="button"><i class="far fa-edit"></i></a> 
                </td> 
                <td>
                    {!! Form::open(['action'=>['BooksController@destroy',$book->id],'method'=>'POST','class'=>'float-right','id'=>$book->id])!!}
                      {{Form::hidden('_method', 'DELETE')}}
                      {{Form::button('<i class="far fa-trash-alt"></i>',['type'=> 'submit','class' => 'btn btn-danger','data-toggle' =>"tooltip" ,'data-placement' =>"top" ,'title' =>"Delete Book"])}}
                    {!! Form::close()!!}
                </td>
              </tr> 
            @endforeach
        </tbody>
      </table>                        
    </div>
    <div class="mx-auto">
        {{$books->links('vendor.pagination.bootstrap-4')}}
    </div>
  </div>
</div>
  @else
    <p>No Books Found</p>
    <a class="btn btn-primary float-left" href="/book" role="button">Go Back</a>
  @endif 
@endsection