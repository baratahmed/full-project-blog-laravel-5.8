@extends('layouts.app')

@section('content')
	<h5 class="text-center text-primary">Categories</h5>
	<table class="table table-hover table-bordered">
	  <thead>
	    <tr>
	      <th scope="col">Category Name</th>
	      <th scope="col">Edit</th>
	      <th scope="col">Delete</th>
	    </tr>
	  </thead>
	  <tbody>
		  @if($categories->count(0 > 0))
		  @foreach($categories as $category)
	    <tr>
	      <td>{{$category->name}}</td>
	      <td>
	      		<a href="{{route('category.edit',['id'=>$category->id])}}" class="btn btn-info btn-sm">Edit</a>
	      </td>
	      <td>
	      	<a href="{{route('category.delete',['id'=>$category->id])}}" class="btn btn-danger btn-sm">Delete</a>
	      </td>
	    </tr>
		@endforeach
		@else
        <tr>
            <th colspan="3" class="text-center">No categories yet</th>
        </tr>
        @endif
	  </tbody>
	</table>
@endsection