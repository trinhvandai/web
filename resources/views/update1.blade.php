@extends('layouts.layout')

@section('content') 
<section id="advertisement">
    <div class="container">
        <img src="images/shop/advertisement.jpg" alt="" />
    </div>
</section>

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <?php
                        if (!empty($user)) echo $user;
                    ?>
                </div>
            </div>
            <div class="col-md-8 col-md-offset-2" style="margin-left: 80px;">
                <div class="panel panel-success">
                    <div class="panel-heading">Edit Profile</div>

                    <div class="panel-body">
                        <form method="GET" class="form-horizontal" role="form" action="{{url('update')}}">
                            <input type="hidden" name="_token" value="{{csrf_token()}}" />
                            
                            <div class="form-group">
                                <label class="col-md-4 control-label" style="padding-left: 150px; padding-top: 7px;">Email</label>
                                <div class="col-md-6">
                                    <input type="email" disabled class="form-control" name="email" value="{{ $user->email }}" >                            
                                </div>
                            </div>

                             <div class="form-group">
                                <label class="col-md-4 control-label" style="padding-left: 150px; padding-top: 7px;">User Name</label>
                                <div class="col-md-6">
                                    <input type="text" disabled class="form-control" name="username" value="{{ $user->username }}" >                            
                                </div>
                            </div>

                             <div class="form-group">
                                <label class="col-md-4 control-label " style="padding-left: 150px; padding-top: 7px;">Name</label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" name="name" value="{{ $user->name }}" >                            
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label" style="padding-left: 150px; padding-top: 7px;">Birth Day</label>
                                <div class="col-md-6">
                                    <input type="date" class="form-control" name="bday" value="{{ $user->bday }}" >                            
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label" style="padding-left: 150px; padding-top: 7px;">Adress</label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" name="adress" value="{{ $user->address }}" >                            
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label" style="padding-left: 150px; padding-top: 7px;">Weight (kg)</label>
                                <div class="col-md-6">
                                    <input type="number" step="any" class="form-control" name="weight" value="{{ $user->weight }}" >                            
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label" style="padding-left: 150px; padding-top: 7px;">Job</label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" name="job" value="{{ $user->job }}" >                            
                                </div>
                            </div>

                            {{-- <div class="col-md-6">
                            <input type="password" name="password" placeholder="Password">
                            </div> --}}
                            <div class="form-group">
                                <div class="col-md-6 col-md-offset-4">
                                    <button type="submit" class="btn btn-primary" id="SubBtn">
                                        <i class="fa fa-btn fa-user"></i> Update Profile
                                    </button>
                                </div>
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
            
        </div>
    
    </div>
</section>
@endsection