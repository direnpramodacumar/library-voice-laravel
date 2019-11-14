@extends('layouts.appAdmin')

@section('title')
    Fines
@endsection

@section('activeFine')
   active    
@endsection

@section('contentAdmin')
@if(count($fines)>0)
  <div class="card">
    <div class="card-header">
        <a href="{{ url('dynamic_pdf/pdf/fine') }}" class="btn btn-danger">Generate Report</a>
      <div class="row float-right"> 
          <form class="form-inline " method="get" id="searchform" >
            <input class="form-control mr-sm-2" type="search" id="searchuser" name="username" placeholder="Search user" aria-label="Search">
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
            <th>Price</th>
            <th>Paid</th>
            <th>Pay</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($fines as $fine)
            <tr>
              <td>{{$fine->id}}</td>
              <td>{{$fine->user->first_name}} {{$fine->user->last_name}}</td>
              <td>{{$fine->loan->book->title}}</td>
              <td>£{{$fine->price}}</td>
              <td>
                  @if (($fine->paid)==1)
                    Yes
                  @else
                    No
                  @endif
              </td>  
              <td>
                  {!! Form::open(['action'=>['FinesController@update',$fine->id],'method'=>'POST','class'=>'float-right','id'=>$fine->id])!!}
                    {{Form::hidden('_method', 'PUT')}}
                    {{Form::button('<i class="fab fa-amazon-pay"></i>',['type'=> 'submit','class' => 'btn btn-danger','data-toggle' =>"tooltip" ,'data-placement' =>"top" ,'title' =>"Pay Fine"])}}
                  {!! Form::close()!!}
              </td>
                
            </tr> 
          @endforeach
      </tbody>
    </table>                        
  </div>
  <div class="mx-auto">
      {{$fines->links('vendor.pagination.bootstrap-4')}}
  </div>
</div>
</div>
@else
  <p>No Fines Found</p>
  <a class="btn btn-primary float-left" href="/fine" role="button">Go Back</a>
@endif 
@endsection