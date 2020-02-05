@extends('layouts.app')

@section('content')
	@include('admin.includes.errors')

	<div class="card">
		<div class="card-header ">
			<h3 class="text-success">Create a new post</h3>
		</div>
		<div class="card-body">
			<form method="post" action="{{route('post.store')}}" enctype="multipart/form-data">
				{{csrf_field()}}
			<div class="form-group">
				<label for="title">Title</label>
				<input type="text" name="title" id="title" class="form-control">
			</div>
			<div class="form-group">
				<label for="featured">Featured Image</label>
				<input type="file" name="featured" id="featured" class="form-control">
			</div>
			<div class="form-group">
				<label for="category">Select a Category</label>
				<select name="category_id" id="category" class="form-control">
					@foreach($categories as $category)
					<option value="{{$category->id}}">{{$category->name}}</option>
					@endforeach
				</select>
			</div>
			<div class="form-group">
				<label for="tags">Select tags</label>
				@foreach($tags as $tag)
				<div class="custom-control custom-checkbox">
					<input type="checkbox" name="tags[]" value="{{$tag->id}}" class="custom-control-input" id="customCheck{{$tag->id}}">
					<label class="custom-control-label" for="customCheck{{$tag->id}}">{{$tag->tag}}</label>
				</div>
				@endforeach
			</div>
			<div class="form-group">
				<label for="content">Content</label>
				<textarea id="content" name="content" cols="5" rows="5" class="form-control"></textarea>
			</div>
			<div class="form-group">
				<div class="text-center">
					<button class="btn btn-success" type="submit">Store Post</button>
				</div>
			</div>
			</form>
		</div>
	</div>
@endsection

{{-- @section('styles')
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.css" rel="stylesheet">
@endsection

@section('scripts')
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.js"></script>
	<script>
		$(document).ready(function() {
		$('#content').summernote();
		});
	</script>
@endsection --}}