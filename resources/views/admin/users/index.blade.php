@extends('layouts.app')

@section('content')
<h5 class="text-center text-primary">All Users</h5>
	<table class="table table-hover table-bordered">
	  <thead>
	    <tr>
	      <th scope="col">Image</th>
	      <th scope="col">Name</th>
	      <th scope="col">Permissions</th>
	      <th scope="col">Delete</th>
	    </tr>
	  </thead>
	  <tbody>
		  @if($users->count() > 0)
		  @foreach($users as $user)
			<tr>
                <td>
                    <img src="{{asset($user->profile->avatar)}}" alt="{{$user->name}}" width="60px" height="60px" style="border-radius:50%">
                </td>
                <td>
                    {{$user->name}}
                </td>
                <td>
					@if($user->admin)
						<a href="{{route('user.not.admin',['id'=>$user->id])}}" class="btn btn-primary btn-sm">Remove Permissions</a>
					@else
						<a href="{{route('user.admin',['id'=>$user->id])}}" class="btn btn-success btn-sm">Make Admin</a>
					@endif
                </td>
                <td>
                    @if(Auth::id() !== $user->id)
						<a href="{{route('user.delete',['id'=>$user->id])}}" class="btn btn-danger btn-sm">Delete</a>
					@endif
                </td>
			</tr>
		  @endforeach
		  @else
        <tr>
            <th colspan="4" class="text-center">No users</th>
        </tr>
        @endif
	  </tbody>
	</table>
@endsection