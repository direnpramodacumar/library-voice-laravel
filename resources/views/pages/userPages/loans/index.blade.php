@extends('layouts.appUser')

@section('title')
    Loans
@endsection

@section('activeLoan')
   active    
@endsection

@section('contentUser')
@if(count($loans)>0)
  <div class="card">
    <div class="card-body">
    <div class="table-responsive-sm">
      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
          <tr>
            <th>Book</th>
            <th>Created At</th>
            <th>Due At</th>
            <th>Returned At</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($loans as $loan)
            <tr>
              <td>{{$loan->book->title}}</td>
              <td>{{$loan->created_at}}</td>
              <td>{{$loan->due_date}}</td>
              <td>{{$loan->return_date}}</td>   
            </tr> 
          @endforeach
      </tbody>
    </table>                        
  </div>
  <div class="mx-auto">
      {{$loans->links('vendor.pagination.bootstrap-4')}}
  </div>
</div>
</div>
@else
  <p>No Loans</p>
  <a class="btn btn-primary float-left" href="/loan" role="button">Go Back</a>
@endif 
@endsection