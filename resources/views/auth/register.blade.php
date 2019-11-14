@extends('layouts.app')

@section('activeRegister')
      active   
@endsection

@section('content')
<div class="row">
    <div class="card mx-auto mt-5 " style="width: 20rem;">
            <img class="card-img-top" src="https://www.dourovisit.com/wp-content/uploads/2018/06/livraria-lello-livraria-famosa-em-porto-portugal-80507663.jpg" alt="Card image cap">
        <div class="card-header">Register</div>
        <div class="card-body">
            <form class="form-horizontal" method="POST" enctype="multipart/form-data" action="{{ route('register') }}"  >
            {{ csrf_field() }}
                <div class="form-group {{ $errors->has('first_name') ? ' has-error' : '' }}">
                        <label for="first_name">First Name</label>
                        <input id="first_name" type="text" class="form-control" name="first_name" value="{{ old('first_name') }}" required autofocus>
                        @if ($errors->has('first_name'))
                        <span class="help-block">
                            <strong>{{ $errors->first('first_name') }}</strong>
                        </span>
                    @endif
                </div>
                <div class="form-group {{ $errors->has('last_name') ? ' has-error' : '' }}">
                    <label for="last_name">Last Name</label>
                    <input id="last_name" type="text" class="form-control" name="last_name" value="{{ old('last_name') }}" required autofocus>
                    @if ($errors->has('last_name'))
                        <span class="help-block">
                            <strong>{{ $errors->first('last_name') }}</strong>
                        </span>
                    @endif
                </div>

                <div class="form-group {{ $errors->has('email') ? ' has-error' : '' }}">
                        <label for="email">E-Mail Address</label>
                        <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>

                        @if ($errors->has('email'))
                            <span class="help-block">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                        @endif
                </div>

                <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                        <label for="password">Password</label>
                        <input id="password" type="password" class="form-control" name="password" required>

                        @if ($errors->has('password'))
                            <span class="help-block">
                                <strong>{{ $errors->first('password') }}</strong>
                            </span>
                        @endif
                </div>

                <div class="form-group">
                    <label for="password-confirm">Confirm Password</label>
                    <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                </div>

                <div class="form-group {{ $errors->has('phone_number') ? ' has-error' : '' }}">
                    <label for="phone_number">Phone Number</label>
                    <input id="phone_number" type="text" class="form-control" name="phone_number" value="{{ old('phone_number') }}" required autofocus>
                    @if ($errors->has('phone_number'))
                        <span class="help-block">
                            <strong>{{ $errors->first('phone_number') }}</strong>
                        </span>
                    @endif
                </div>

                <div class="form-group {{ $errors->has('address') ? ' has-error' : '' }}">
                    <label for="address"> Address</label>
                        <input id="address" type="text" class="form-control" name="address" value="{{ old('address') }}" required autofocus>

                        @if ($errors->has('address'))
                            <span class="help-block">
                                <strong>{{ $errors->first('address') }}</strong>
                            </span>
                        @endif
                </div>
                <div class="form-group">
                        <input type="file" class="form-control-file" name="image" id="image" aria-describedby="fileHelp"  autofocus>
                        <small id="fileHelp" class="form-text text-muted">Please upload a valid image file.</small>
                       
                    </div>

                <div class="form-group">
                        <button type="submit" class="btn btn-primary">
                            Register
                        </button>
                </div>           
            </form>
        </div>
    </div>
</div>
@endsection
