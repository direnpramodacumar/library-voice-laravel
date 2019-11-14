<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg sticky-top">
    <a class="nhover navbar-brand" href="{{ url('/home') }}">LavBook</a>
    <button class="custom-toggler navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
      
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
        </ul>
        <ul class="navbar-nav navbar-right">
            @guest
                <li class=" nav-item @yield('activeLogin')">
                    <a class="nhover nav-link" href="{{ route('login') }}">Login</a>
                </li>
                <li class="nav-item @yield('activeRegister')">
                    <a class="nhover nav-link" href="{{ route('register') }}">Register</a>
                </li>
            @else
                <li class="nav-item dropdown">
                    <a class="nhover nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img id="imgnavbar" src="/storage/cover_images/{{ Auth::user()->image }}" alt="">  {{ Auth::user()->first_name }} {{ Auth::user()->last_name }}
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a id="drop" class="dropdown-item" href="/user/show">My Details</a>
                        <a id="drop" class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Logout</a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            {{ csrf_field() }}
                        </form> 
                    </div>
                </li>
            @endguest   
        </ul>
    </div>
</nav>
        

                    