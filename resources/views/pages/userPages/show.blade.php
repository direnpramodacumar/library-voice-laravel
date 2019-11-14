@extends('layouts.appUser')

@section('title')
    My Details
@endsection

@section('contentUser')
        <div class="card mx-auto mt-5">
            <div class="card-body">
                {!! Form::open(['action' => ['UsersController@update',$users->id],'method'=>'POST','enctype'=>"multipart/form-data" ]) !!}
                    <div class="form-group">
                        {{ Form::label('first_name', 'First Name')}}
                        {{ Form::text('first_name', $users->first_name,['class' => 'form-control','required'])}}
                    </div>
                    <div class="form-group">
                            {{ Form::label('last_name', 'Last Name')}}
                            {{ Form::text('last_name', $users->last_name,['class' => 'form-control','required'])}}
                        </div>
                    <div class="form-group">
                        {{ Form::label('email', 'Email')}}
                        {{ Form::text('email', $users->email,['class' => 'form-control','required'])}}
                    </div>
                    <div class="form-group">
                        {{ Form::label('phone_number', 'Phone Number')}}
                        {{ Form::text('phone_number', $users->phone_number,['class' => 'form-control','required'])}}
                    </div>
                    <div class="form-group">
                        {{ Form::label('address', 'Address')}}
                        {{ Form::text('address', $users->address,['class' => 'form-control','required'])}}
                    </div>
                    <div class="form-group">
                        {{ Form::hidden('admin', $users->admin,['class' => 'form-control','required'])}}
                    </div>
                    <div class="form-group">
                            {{ Form::label('image', 'Image')}}
                            {{ Form::file('image',['class' => 'form-control'])}}
                    </div>
                  {{Form::hidden('_method', 'PUT')}}
                  {{Form::submit('Save',['class' => 'btn btn-primary'])}}
                {!! Form::close() !!}
            </div>
        </div>
@endsection