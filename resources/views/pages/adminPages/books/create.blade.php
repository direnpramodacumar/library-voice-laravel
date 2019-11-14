@extends('layouts.appAdmin')

@section('title')
    New Book
@endsection
 <!-- book form-->       
@section('contentAdmin')
            {!! Form::open(['id'=>'myform','action' => 'BooksController@store','method'=>'POST']) !!}
            <div class="row">
                <div class="form-group col-md-6 mb-3 ">
                    {{ Form::label('title', 'Title')}}
                    {{ Form::text('title', '',['class' => 'form-control'])}}
                </div>
                <div class="form-group col-md-6 mb-3">
                    {{ Form::label('author', 'Author')}}
                    {{ Form::text('author', '',['class' => 'form-control'])}}
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-3 mb-3">
                    {{ Form::label('quantity', 'Quantity')}}
                    {{ Form::text('quantity', '',['class' => 'form-control'])}}
                </div>
                <div class="form-group col-md-3 mb-3">
                        {{ Form::label('publisher', 'Publisher')}}
                        {{ Form::text('publisher', '',['class' => 'form-control'])}}
                    </div>
                <div class="form-group col-md-3 mb-3">
                    {{ Form::label('isbn', 'ISBN')}}
                    {{ Form::text('isbn', '',['class' => 'form-control'])}}
                </div>
            </div>
            {{ Form::label('category', 'Category:')}}
            <div class="row">
                <div class="form-group col-md-3 mb-3">
                        {{ Form::label('category', 'Art & Art History')}}
                        {{ Form::checkbox('category', '1', false,['id' =>'artandarthistory'])}}
                </div>
                <div class="form-group col-md-3 mb-3">
                        {{ Form::label('category', 'Biographies')}}
                        {{ Form::checkbox('category', '2', false,['id' =>'biographies'])}}
                </div>
                <div class="form-group col-md-3 mb-3">
                        {{ Form::label('category', 'Business & Management')}}
                        {{ Form::checkbox('category', '3', false,['id' =>'businessandmanagement'])}}
                </div>
                <div class="form-group col-md-3 mb-3">
                        {{ Form::label('category', 'Law')}}
                        {{ Form::checkbox('category', '4', false,['id' =>'law'])}}
                </div>         
                <div class="form-group col-md-3 mb-3">
                    {{ Form::label('category', 'Computer Science')}}
                    {{ Form::checkbox('category', '5', false,['id' =>'computerscience'])}}
                </div>    
                <div class="form-group col-md-3 mb-3">
                    {{ Form::label('category', 'Information Technology')}}
                    {{ Form::checkbox('category', '6', false,['id' =>'informationtechnology'])}}
                </div> 
                <div class="form-group col-md-3 mb-3">
                    {{ Form::label('category', 'Health & Lifestyle')}}
                    {{ Form::checkbox('category', '7', false,['id' =>'healthandlifestyle'])}}
                </div>
                <div class="form-group col-md-3 mb-3">
                    {{ Form::label('category', 'History')}}
                    {{ Form::checkbox('category', '8', false,['id' =>'history'])}}
                </div>      
                <div class="form-group col-md-3 mb-3">
                    {{ Form::label('category', 'Philosophy')}}
                    {{ Form::checkbox('category', '9', false,['id' =>'philosophy'])}}
                </div>      
                <div class="form-group col-md-3 mb-3">
                    {{ Form::label('category', 'Politics & Government')}}
                    {{ Form::checkbox('category', '10', false,['id' =>'politicsandgovernment'])}}
                </div>      
                <div class="form-group col-md-3 mb-3">
                    {{ Form::label('category', 'Sport')}}
                    {{ Form::checkbox('category', '11', false,['id' =>'sport'])}}
                </div>
                <div class="form-group col-md-3 mb-3">
                    {{ Form::label('category', 'Fitness & Diet')}}
                    {{ Form::checkbox('category', '12', false,['id' =>'fitnessanddiet'])}}
                </div>  
            </div>    
            <div class="form-group">
                {{ Form::label('image', 'Image')}}
                {{ Form::text('image', '',['class' => 'form-control'])}}
            </div>
            {{Form::submit('Add Book',['class' => 'btn btn-primary'])}}
          {!! Form::close() !!}
@endsection