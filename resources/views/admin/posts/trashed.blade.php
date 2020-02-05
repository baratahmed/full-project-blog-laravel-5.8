@extends('layouts.app')

@section('content')
<h5 class="text-center text-primary">All Trashed Posts</h5>
	<table class="table table-hover table-bordered">
	  <thead>
	    <tr>
	      <th scope="col">Image</th>
	      <th scope="col">Title</th>
	      <th scope="col">Edit</th>
	      <th scope="col">Restore</th>
	      <th scope="col">Destroy</th>
	    </tr>
	  </thead>
	  <tbody>
        @if($posts->count() > 0)
        @foreach($posts as $post)
	    <tr>
	      <td><img src="{{$post->featured}}" alt="{{$post->title}}" height="50px" width="90px"></td>
	      <td>{{$post->title}}</td>
	      <td>
	      		<a href="{{route('category.edit',['id'=>$post->id])}}" class="btn btn-info btn-sm">Edit</a>
	      </td>
	      <td>
	      	<a href="{{route('post.restore',['id'=>$post->id])}}" class="btn btn-success btn-sm">Restore</a>
          </td>
          <td>
            <a href="{{route('post.kill',['id'=>$post->id])}}" class="btn btn-danger btn-sm">Delete</a>
        </td>
	    </tr>
	    @endforeach
        @else
        <tr>
            <th colspan="5" class="text-center">No trashed post</th>
        </tr>
        @endif
	  </tbody>
	</table>
@endsection