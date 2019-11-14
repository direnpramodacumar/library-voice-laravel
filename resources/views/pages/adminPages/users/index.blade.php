@extends('layouts.appAdmin')

@section('title')
    Users
@endsection

@section('activeUser')
   active    
@endsection

@section('contentAdmin')
  @if(count($users)>0)
  <div class="card">
  <div class="card-header">
      <a href="{{ url('dynamic_pdf/pdf/user') }}" class="btn btn-danger">Generate Report</a>
      <div class="row float-right"> 
            <form id="searchform" class="form-inline " method="get">
                <input id="searchuser" class="form-control mr-sm-2" type="search"  name="q" placeholder="Search User" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0 float-right" type="submit">Search</button>
            </form>
      </div>
    </div>
    <div class="card-body">
    <div class="table-responsive">
      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
          <tr>
            <th>ID</th>
            <th>Image</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Address</th>
            <th>Phone Number</th>
            <th>Admin</th>
            <th>Active</th>
            <th>Edit</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($users as $user)
            <input type="hidden" id="userNumber" value="{{$loop->count}}">
              <tr>  
                <td>{{$user->id}}</td>
                <td><img id="tableimgprofile"src="/storage/cover_images/{{$user->image}}" alt=""></td>
                <td>{{$user->first_name}}</td>
                <td>{{$user->last_name}}</td>
                <td>{{$user->email}}</td>
                <td>{{$user->address}}</td>
                <td>{{$user->phone_number}}</td>
                <td>
                    @if (($user->admin)==1)
                        Yes
                    @else
                        No
                    @endif
                </td>
                <td>
                    @if (($user->active)==1)
                        Yes
                    @else
                        No
                    @endif
                </td>              
                <td>
                    <a class="btn btn-primary" data-toggle="tooltip" data-placement="top" title="Edit Book" href="user/{{$user->id}}/edit" role="button"><i class="far fa-edit"></i></a> 
                </td>
              </tr> 
            @endforeach
        </tbody>
      </table>                        
    </div>
    <div class="mx-auto">
        {{$users->links('vendor.pagination.bootstrap-4')}}
    </div>
  </div>
</div>
  @else
    <p>No Users Found</p>
    <a class="btn btn-primary float-left" href="/users" role="button">Go Back</a>
  @endif 
@endsection