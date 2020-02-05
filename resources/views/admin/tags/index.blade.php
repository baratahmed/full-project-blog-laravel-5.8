@extends('layouts.app')

@section('content')
	<h5 class="text-center text-primary">Tags</h5>
	<table class="table table-hover table-bordered">
	  <thead>
	    <tr>
	      <th scope="col">Tag Name</th>
	      <th scope="col">Edit</th>
	      <th scope="col">Delete</th>
	    </tr>
	  </thead>
	  <tbody>
		  @if($tags->count(0 > 0))
		  @foreach($tags as $tag)
	    <tr>
	      <td>{{$tag->tag}}</td>
	      <td>
	      		<a href="{{route('tag.edit',['id'=>$tag->id])}}" class="btn btn-info btn-sm">Edit</a>
	      </td>
	      <td>
	      	<a href="{{route('tag.delete',['id'=>$tag->id])}}" class="btn btn-danger btn-sm">Delete</a>
	      </td>
	    </tr>
		@endforeach
		@else
        <tr>
            <th colspan="3" class="text-center">No tags yet</th>
        </tr>
        @endif
	  </tbody>
	</table>
@endsection