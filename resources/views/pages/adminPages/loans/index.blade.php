@extends('layouts.appAdmin')

@section('title')
    Loans
@endsection

@section('activeLoan')
   active    
@endsection

@section('contentAdmin')
@if(count($loans)>0)
  <div class="card">
    <div class="card-header">
      <a class="btn btn-primary float-left" href="/loan/create" role="button">New Issue</a>
      <a href="{{ url('dynamic_pdf/pdf/loan') }}" class="btn btn-danger">Generate Report</a>
      <div class="row float-right"> 
          <form class="form-inline " method="get">
            <input class="form-control mr-sm-2" type="search" name="username"id="username" placeholder="Search user" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0 float-right" type="submit">Search</button>
          </form>
      </div>
    </div>
    <div class="card-body">
    <div class="table-responsive-sm">
      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
          <tr>
            <th>ID</th>
            <th>User</th>
            <th>Book</th>
            <th>Created At</th>
            <th>Due At</th>
            <th>Returned At</th>
            <th>Return</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($loans as $loan)
            <tr>
              <td>{{$loan->id}}</td>
              <td>{{$loan->user->first_name}} {{$loan->user->last_name}}</td>
              <td>{{$loan->book->title}}</td>
              <td>{{$loan->created_at}}</td>
              <td>{{$loan->due_date}}</td>
              <td>{{$loan->return_date}}</td>
              <td>
                  {!! Form::open(['action'=>['LoansController@update',$loan->id],'method'=>'POST','class'=>'float-right', 'id'=>$loan->id])!!}
                  {{Form::hidden('_method', 'PUT')}}
                  {{Form::button('<i class="fas fa-undo"></i></i>',['type'=> 'submit','class' => 'btn btn-danger','data-toggle' =>"tooltip" ,'data-placement' =>"top" ,'title' =>"Return Book"])}}
                  {!! Form::close()!!}
                
              </td>       
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