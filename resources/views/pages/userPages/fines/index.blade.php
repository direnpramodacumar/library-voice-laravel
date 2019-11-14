@extends('layouts.appUser')

@section('title')
    Fines
@endsection

@section('activeFine')
   active    
@endsection

@section('contentUser')
@if(count($fines)>0)
  <div class="card">
    <div class="card-body">
    <div class="table-responsive-sm">
      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
          <tr>
            <th>Book</th>
            <th>Price</th>
            <th>Paid</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($fines as $fine)
            <tr>
              <td>{{$fine->loan->book->title}}</td>
              <td>£{{$fine->price}}</td>
              <td>
                  @if (($fine->paid)==1)
                    Yes
                  @else
                    No
                  @endif
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