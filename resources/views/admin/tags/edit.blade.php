@extends('layouts.app')

@section('content')
	@include('admin.includes.errors')
	
	<div class="card">
		<div class="card-header ">
            <h3 class="text-success">Edit Tag: {{$tag->tag}}</h3>
		</div>
		<div class="card-body">
			<form method="post" action="{{route('tag.update',['id'=>$tag->id])}}">
				{{csrf_field()}}
			<div class="form-group">
				<label for="tag">Tag Name:</label>
                <input type="text" name="tag" id="tag" value="{{$tag->tag}}" class="form-control">
			</div>
			<div class="form-group">
				<div class="text-center">
					<button class="btn btn-success" type="submit">Update Tag</button>
				</div>
			</div>
			</form>
		</div>
	</div>
@endsection