@extends('layouts.appAdmin')

@section('title')
    Issue Book
@endsection

@section('contentAdmin')

<div class="card">
    <div class="card-header">
           
   
    </div>
    <div class="card-body">
            {!! Form::open(['action' => 'LoansController@store','method'=>'POST','id'=>'myform']) !!}
            <div class="row">
                <div class="form-group col-md-6 mb-3 ">
                    {{ Form::label('userid', 'User ID')}}
                    {{ Form::text('userid', '',['class' => 'form-control'])}}
                </div>
                <div class="form-group col-md-6 mb-3">
                    {{ Form::label('isbn', 'Book ISBN')}}
                    {{ Form::text('isbn', '',['class' => 'form-control'])}}
                </div>
                <input type="text" id="bookid" name="bookid" style="display:none" >
                
            </div>
            {{Form::submit('Submit',['class' => 'btn btn-primary'])}}
          {!! Form::close() !!}
    </div>
</div>
@endsection

@section('script')

@endsection