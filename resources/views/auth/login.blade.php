@extends('layouts.app')

@section('activeLogin')
       active    
@endsection

@section('content')

    <div class="row">
        <div class="card mx-auto  mt-5" style="width: 20rem;">
            <img class="card-img-top" src="https://www.dourovisit.com/wp-content/uploads/2018/06/livraria-lello-livraria-famosa-em-porto-portugal-80507663.jpg" alt="Card image cap">
           <div class="card-header">Login</div>
           
                <div class="card-body">
                    <form class="form-horizontal" method="POST" action="{{ route('login') }}">
                        {{ csrf_field() }}
                        <div class="form-group {{ $errors->has('email') ? ' has-error' : '' }}"">
                            <label for="email">Email address</label>
                                <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" name="email" value="{{ old('email') }}" required autofocus>
                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                        </div>
                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password">Password</label>
                                <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
                                @if ($errors->has('password'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('password') }}</strong>
                                </span>
                                @endif
                                </div>
                            <div class="form-check">
                                    <label>
                                            <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Remember Me
                                        </label>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <a class="btn btn-link" href="{{ route('password.request') }}">
                                Forgot Your Password?
                            </a>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
