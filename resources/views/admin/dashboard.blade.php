@extends('layouts.app')

@section('content')
<div class="card">
    <div class="card-header">Dashboard</div>

    <div class="row">
        <div class="card-body col-lg-3">
            <div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
                <div class="card-header text-center">POSTED</div>
                <div class="card-body">
                  <h5 class="card-title text-center">{{$posts_count}}</h5>
                </div>
              </div>
        </div>
        <div class="card-body col-lg-3">
            <div class="card text-white bg-danger mb-3" style="max-width: 18rem;">
                <div class="card-header text-center">TRASHED</div>
                <div class="card-body">
                  <h5 class="card-title text-center">{{$trashed_count}}</h5>
                </div>
              </div>
        </div>
        <div class="card-body col-lg-3">
            <div class="card text-white bg-success mb-3" style="max-width: 18rem;">
                <div class="card-header text-center">USERS</div>
                <div class="card-body">
                  <h5 class="card-title text-center">{{$users_count}}</h5>
                </div>
              </div>
        </div>
        <div class="card-body col-lg-3">
            <div class="card text-white bg-secondary mb-3" style="max-width: 18rem;">
                <div class="card-header text-center">CATEGORIES</div>
                <div class="card-body">
                  <h5 class="card-title text-center">{{$categories_count}}</h5>
                </div>
              </div>
        </div>
    </div>
</div>
@endsection
