@extends('layouts.app')

@section('content')
<h5 class="text-center text-primary">All Published Posts</h5>
	<table class="table table-hover table-bordered">
	  <thead>
	    <tr>
	      <th scope="col">Image</th>
	      <th scope="col">Title</th>
	      <th scope="col">Edit</th>
	      <th scope="col">Trash</th>
	    </tr>
	  </thead>
	  <tbody>
		  @if($posts->count() > 0)
		  @foreach($posts as $post)
			<tr>
			<td><img src="{{$post->featured}}" alt="{{$post->title}}" height="50px" width="90px"></td>
			<td>{{$post->title}}</td>
			<td>
				<a href="{{route('post.edit',['id'=>$post->id])}}" class="btn btn-info btn-sm">Edit</a>
			</td>
			<td>
				<a href="{{route('post.delete',['id'=>$post->id])}}" class="btn btn-danger btn-sm">Trash</a>
			</td>
			</tr>
		  @endforeach
		  @else
        <tr>
            <th colspan="4" class="text-center">No published post</th>
        </tr>
        @endif
	  </tbody>
	</table>
@endsection

