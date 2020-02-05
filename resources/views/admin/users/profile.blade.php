@extends('layouts.app')

@section('content')
	@include('admin.includes.errors')
	
	<div class="card">
		<div class="card-header ">
			<h3 class="text-success">Edit your profile</h3>
		</div>
		<div class="card-body">
			<form method="post" action="{{route('user.profile.update')}}" enctype="multipart/form-data">
				{{csrf_field()}}
			<div class="form-group">
				<label for="name">Username:</label>
				<input type="text" name="name" value="{{$user->name}}" id="name" class="form-control">
			</div>
			<div class="form-group">
				<label for="email">Email:</label>
				<input type="email" name="email" value="{{$user->email}}" id="email" class="form-control">
            </div>
            <div class="form-group">
				<label for="password">New Password:</label>
				<input type="password" name="password" id="password" class="form-control">
            </div>
            <div class="form-group">
				<label for="avatar">Upload a Avatar:</label>
				<input type="file" name="avatar" id="avatar" class="form-control">
            </div>
            <div class="form-group">
				<label for="facebook">Facebook:</label>
				<input type="text" name="facebook" value="{{$user->profile->facebook}}" id="facebook" class="form-control">
            </div>
            <div class="form-group">
				<label for="youtube">Youtube:</label>
				<input type="text" name="youtube" id="youtube"  value="{{$user->profile->youtube}}" class="form-control">
            </div>
            <div class="form-group">
				<label for="about">About you:</label>
				<textarea name="about" id="about" cols="6" rows="6" class="form-control"> {{$user->profile->about}}</textarea>
			</div>
			<div class="form-group">
				<div class="text-center">
					<button class="btn btn-success" type="submit">Update Profile</button>
				</div>
			</div>
			</form>
		</div>
	</div>
@endsection