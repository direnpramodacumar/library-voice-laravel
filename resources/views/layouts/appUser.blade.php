@extends('layouts.app')

@section('content')
    <div class="container-fluid">
        <div class="row">
             <!-- User SideBar-->       
            <nav class="col-md-2 d-none d-md-block sidebar">
                <div class="sidebar-sticky">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link @yield('activeDashboard')" href="/home">
                                <i class="fas fa-tachometer-alt"></i>
                                Dashboard <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link @yield('activeBook')" href="/user/book">
                                <i class="fas fa-book"></i>
                                Book
                            </a>
                        </li>
                        <li class="nav-item">
                                <a class="nav-link @yield('activeLoan')" href="/user/loan">
                                    <i class="fas fa-file-import"></i>
                                    Loan
                                </a>
                            </li>
                        <li class="nav-item">
                            <a class="nav-link @yield('activeFine')" href="/user/fine">
                                <i class="fas fa-money-bill"></i>
                               Fines
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
      
            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
                      <h1 class="h2">@yield('title')</h1>
                </div>
                @include('layouts.messages')
                @yield('contentUser')
            </main>
       
        </div>
    </div>
@endsection