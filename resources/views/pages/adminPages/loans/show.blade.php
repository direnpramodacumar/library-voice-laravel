@extends('layouts.appAdmin')

@section('title')
    Dashboard
@endsection

@section('contentAdmin')
    <div class="card card-body bg-light">
        <h3>{{$books-> title}}</h3>
    </div>
    <a href="http:/books/{{$books->id}}/edit" class="btn btn-primary">Edit</a>
    {!! Form::open(['action'=>['BooksController@destroy',$books->id],'method'=>'POST','class'=>'float-right'])!!}
        {{Form::hidden('_method', 'DELETE')}}
        {{Form::submit('Delete',['class' => 'btn btn-primary'])}}
    {!! Form::close()!!}
@endsection