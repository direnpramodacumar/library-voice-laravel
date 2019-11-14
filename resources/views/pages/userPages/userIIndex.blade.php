@extends('layouts.appUser')
@section('title')
    Dashboard
@endsection

@section('activeDashboard')
   active    
@endsection

@section('contentUser')
<div class="row">
        <!-- Icon Cards-->
          <div class="col">
            <div class="card text-white bg-success o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-shopping-cart"></i>
                </div>
                <div class="mr-5">{{count($loans)}} Loans</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="/loan">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          <div class="col">
            <div class="card text-white bg-danger o-hidden h-100">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-fw fa-life-ring"></i>
                </div>
                <div class="mr-5">{{count($fines)}} Pending Fines</div>
              </div>
              <a class="card-footer text-white clearfix small z-1" href="/fine">
                <span class="float-left">View Details</span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
      </div>
@endsection