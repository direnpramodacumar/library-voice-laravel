@extends('layouts.app')

@section('content')
    <div class="container-fluid">
        <div class="row">
             <!-- Admin SideBar-->       
            <nav class="col-md-2 d-none d-md-block  sidebar">
                <div class="sidebar-sticky">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link @yield('activeDashboard')" href="/home">
                                <i class="fas fa-tachometer-alt"></i>
                                Dashboard <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle @yield('activeBook')" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                <i class="fas fa-book"></i>
                                Book
                            </a>
                            <div class="collapse" id="collapseExample">
                                <a class="dropdown-item" href="/book">Books</a>
                                <a class="dropdown-item" href="/book/create">New Book</a>
                            </div>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link @yield('activeUser')" href="/user">
                                <i class="fas fa-users"></i>
                                Users
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle @yield('activeLoan')" data-toggle="collapse" href="#collapseExampl" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    <i class="fas fa-file-import"></i>
                                    Loan
                                </a>
                                <div class="collapse" id="collapseExampl">
                                    <a class="dropdown-item" href="/loan">Loans</a>
                                    <a class="dropdown-item" href="/loan/create">Issue Book</a>
                                </div>
                            </li>
                        <li class="nav-item">
                            <a class="nav-link @yield('activeFine')" href="/fine">
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
                @yield('contentAdmin')
            </main>
            
        </div>
    </div>
@endsection