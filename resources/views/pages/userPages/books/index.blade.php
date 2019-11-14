@extends('layouts.appUser')

@section('title')
    Books
@endsection

@section('activeBook')
   active    
@endsection

@section('contentUser')
  @if(count($books)>0)
  <div class="card">
    <div class="card-header">
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

          </tr>
        </thead>
        <tbody>
            @foreach ($books as $book)
              <tr>
                <input type="hidden" id="bookNumber" value="{{$loop->count}}">
                <td>{{$book->id}}</td>
                <td><img src="{{$book->image}}" alt="" width="50px" height="50px" class="mx-auto"></td>
                <td><a href="book/{{$book->id}}">{{$book->title}}</a></td>
                <td>{{$book->author}}</td>
                <td>{{$book->quantity}}</td>
                <td>{{$book->category->name}}</td>
                <td>{{$book->publisher}}</td>
                <td>{{$book->isbn}}</td>
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