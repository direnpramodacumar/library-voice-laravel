@extends('layouts.appAdmin')

@section('title')
    Edit Book
@endsection

@section('contentAdmin')
        <div class="card mx-auto mt-5">
            <div class="card-body">
                @include('layouts.messages')
                {!! Form::open(['action' => ['BooksController@update',$books->id],'method'=>'POST']) !!}
                  <div class="form-group">
                      {{ Form::label('title', 'Title')}}
                      {{ Form::text('title', $books->title,['class' => 'form-control','required'])}}
                  </div>
                  <div class="form-group">
                      {{ Form::label('author', 'Author')}}
                      {{ Form::text('author', $books->author,['class' => 'form-control','required'])}}
                  </div>
                  <div class="form-group">
                      {{ Form::label('quantity', 'Quantity')}}
                      {{ Form::text('quantity', $books->quantity,['class' => 'form-control','required'])}}
                  </div>
                  <div class="form-group">
                      {{ Form::label('publisher', 'Publisher')}}
                      {{ Form::text('publisher', $books->publisher,['class' => 'form-control','required'])}}
                  </div>
                  <div class="form-group">
                      {{ Form::label('isbn', 'ISBN')}}
                      {{ Form::text('isbn', $books->isbn,['class' => 'form-control','required'])}}
                  </div>
                  <div class="form-group">
                      {{ Form::label('image', 'Image')}}
                      {{ Form::text('image', $books->image,['class' => 'form-control','required'])}}
                  </div>
                  {{Form::hidden('_method', 'PUT')}}
                  {{Form::submit('Save',['class' => 'btn btn-primary'])}}
                {!! Form::close() !!}
            </div>
        </div>
@endsection