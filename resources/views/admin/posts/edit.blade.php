@extends('layouts.app')

@section('content')
	@include('admin.includes.errors')

	<div class="card">
		<div class="card-header ">
        <h3 class="text-success">Edit post: {{$post->title}}</h3>
		</div>
		<div class="card-body">
			<form method="post" action="{{route('post.update',['id'=>$post->id])}}" enctype="multipart/form-data">
				{{csrf_field()}}
			<div class="form-group">
				<label for="title">Title</label>
				<input type="text" name="title" id="title" value="{{$post->title}}" class="form-control">
			</div>
			<div class="form-group">
				<label for="featured">Featured Image</label>
				<input type="file" name="featured" id="featured" class="form-control">
			</div>
			<div class="form-group">
				<label for="category">Select a Category</label>
				<select name="category_id" id="category" class="form-control">
					@foreach($categories as $category)
					<option value="{{$category->id}}"
						@if($post->category->id == $category->id)
						selected
						@endif	
					>{{$category->name}}</option>
					@endforeach
				</select>
			</div>
			<div class="form-group">
				<label for="tags">Select tags</label>
				@foreach($tags as $tag)
				<div class="custom-control custom-checkbox">
					<input type="checkbox" name="tags[]" value="{{$tag->id}}" class="custom-control-input" id="customCheck{{$tag->id}}" 
						@foreach($post->tags as $t)
							@if($tag->id == $t->id)
								checked
							@endif
						@endforeach
					>
					<label class="custom-control-label" for="customCheck{{$tag->id}}">{{$tag->tag}}</label>
				</div>
				@endforeach
			</div>
			<div class="form-group">
				<label for="content">Content</label>
                <textarea id="content" name="content" cols="5" rows="5" class="form-control">{{$post->content}}</textarea>
			</div>
			<div class="form-group">
				<div class="text-center">
					<button class="btn btn-success" type="submit">Update Post</button>
				</div>
			</div>
			</form>
		</div>
	</div>
@endsection