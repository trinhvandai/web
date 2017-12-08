@extends('layouts.layout')
<head>
<style>
.content{
    font-color:blue;
    font-size: 110%;
}
.actname{
    font-color:blue;
    font-size: 140%;
}
.actcont{
    font-size:100%;
    margin-left:20px;
}
</style>
</head>
@section('content')   
<section id="advertisement">
    <div class="container">
        {{-- <img src="images/shop/home.jpg" alt="" /> --}}
    </div>
</section>

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    @include('shared.sidebar')
                    <h2>Coach Information</h2>

                    <p class="content">Coach's Name: {{$coach->name}}</p> 
                    <p class="content">Email: {{$coach->email}}</p> 
                </div>
            </div>
            <div class="col-sm-9">
                <div class="blog-post-area">
                    <h2 class="title text-center">Latest From our Blog</h2>
                    <div class="single-blog-post">
                        {{-- <h3>{{$data['post']['title']}}</h3> --}}
                        <h3>{{$title}}</h3>
                        
                        <div class="post-meta">
                            <ul>
                                <li><i class="fa fa-user"></i> Admin</li>
                                {{-- <li><i class="fa fa-clock-o"></i> {{date('h:i:s A', strtotime($data['post']['created_at']))}}</li> --}}
                                <li><i class="fa fa-clock-o"></i> {{date('h:i:s A', strtotime($post->created_at))}}</li>
                                {{-- <li><i class="fa fa-calendar"></i> {{date('d M, Y', strtotime($data['post']['created_at']))}}</li> --}}
                                <li><i class="fa fa-calendar"></i> {{date('d M, Y', strtotime($post->created_at))}}</li>
                            </ul>
                        </div>
                        <a href="">
                            {{-- <img src="{{asset('images/blog/'.$data['post']['image'])}}" alt=""> --}}
                            {{-- <img src="{{asset('images/blog/'.$post->image)}}" alt=""> --}}
                        </a>


                        <?php
                                if ($prog->level==1) echo "<p style='color:green; font-size:150%;'>"."Program Level: Nhẹ"."</p>";
                                else if ($prog->level==2) echo "<p style='color:green; font-size:150%;'>"."Program Level: Trung Bình"."</p>";
                                else if ($prog->level==3) echo "<p style='color:green; font-size:150%;'>"."Program Level: Nặng"."</p>";
                        ?>
                            
                        @if (count($action_date))
                        @foreach ($action_date as $date)
                           
                            <?php
                                $ngay = $date->date;
                                echo "<p style='font-size:130%;'>"."Ngày ".$ngay.": "."</p>";
                                $actions = DB::table('batchs')->select('actid', 'start', 'end')->where('date', $ngay)->get();
                                
                                foreach ($actions as $key => $object) {
                                    echo "<span style='margin-left:50px;'>".$object->start." - ".$object->end.": "."</span>";
                                    $action = DB::table('actions')->select('name', 'content')->where('actid', $object->actid)->first();
                                    echo $action->name;
                                    echo "<br>";

                                }
                                 echo "<br>";
                                
                                
                            ?>
                        @endforeach
                        @endif
                        <form class="form-horizontal" role="form" method="GET" action="{{url('blog/'.$post->url)}}">
                                {{ csrf_field() }}
                                <input type="hidden" name="nuserid" value="<?php if (isset($user->id)) echo $user->id; ?>" />
                                <input type="hidden" name="nprogid" value="{{$prog->id}}" />
                        <?php
                            if ((isset($user->id) && (Auth::user()->customer==1))){
                                $yes = DB::table('participate')->where('userid', $user->id)->where('prgid', $prog->id)->first();
                                

                                    if (is_null($yes))
                                    echo '<button type="submit" action="blog_post" class="btn btn-success" id="join1">
                                            <i class="fa fa-btn fa-user"></i> Participate
                                        </button>';
                                    else echo '<button type="submit" action="blog_post" class="btn btn-danger" id="join2">
                                        <i class="fa fa-btn fa-user"></i> Cancel
                                    </button>';
                            }
                       ?>
                         </form>
                       

                        
                       
                        
                        <div class="pager-area">
                            <ul class="pager pull-right">
                                {{-- <li><a href="{{$data['previous_url']}}">Pre</a></li> --}}
                                <li><a href="{{$prev_url}}">Pre</a></li>
                                {{-- <li><a href="{{$data['next_url']}}">Next</a></li> --}}
                                <li><a href="{{$next_url}}">Next</a></li>
                            </ul>
                        </div>
                    </div>
                </div><!--/blog-post-area-->

                <div class="rating-area">
                   {{--  <ul class="ratings">
                        <li class="rate-this">Rate this item:</li>
                        <li>
                            <i class="fa fa-star color"></i>
                            <i class="fa fa-star color"></i>
                            <i class="fa fa-star color"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </li>
                        <li class="color">(6 votes)</li>
                    </ul> --}}
                    <ul class="tag">
                      
                    </ul>
                </div><!--/rating-area-->

                <div class="socials-share">
                    {{-- <a href=""><img src="{{asset('images/blog/socials.png')}}" alt=""></a> --}}
                </div><!--/socials-share-->

                <div class="media commnets">
                    {{-- <a class="pull-left" href="#">
                        <img class="media-object" src="{{asset('images/blog/man-one.jpg')}}" alt="">
                    </a> --}}
                    <div class="media-body">
                        {{-- <h4 class="media-heading">Annie Davis</h4> --}}
                        <p></p>
                        {{-- <div class="blog-socials">
                            <ul>
                                <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                <li><a href=""><i class="fa fa-dribbble"></i></a></li>
                                <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                            <a class="btn btn-primary" href="">Other Posts</a>
                        </div> --}}
                    </div>
                </div><!--Comments-->
                <div class="response-area">
                    {{-- <h2>3 RESPONSES</h2> --}}
                    <ul class="media-list">
                        {{-- <li class="media">

                            <a class="pull-left" href="#">
                                <img class="media-object" src="{{asset('images/blog/man-two.jpg')}}" alt="">
                            </a>
                            <div class="media-body">
                                <ul class="sinlge-post-meta">
                                    <li><i class="fa fa-user"></i>Janis Gallagher</li>
                                    <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                                    <li><i class="fa fa-calendar"></i> DEC 5, 2013</li>
                                </ul>
                                <p></p>
                                <a class="btn btn-primary" href=""><i class="fa fa-reply"></i>Replay</a>
                            </div>
                        </li>
                        <li class="media second-media">
                            <a class="pull-left" href="#">
                                <img class="media-object" src="{{asset('images/blog/man-three.jpg')}}" alt="">
                            </a>
                            <div class="media-body">
                                <ul class="sinlge-post-meta">
                                    <li><i class="fa fa-user"></i>Janis Gallagher</li>
                                    <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                                    <li><i class="fa fa-calendar"></i> DEC 5, 2013</li>
                                </ul>
                                <p></p>
                                <a class="btn btn-primary" href=""><i class="fa fa-reply"></i>Replay</a>
                            </div>
                        </li> --}}
                        {{-- <li class="media">
                            <a class="pull-left" href="#">
                                <img class="media-object" src="{{asset('images/blog/man-four.jpg')}}" alt="">
                            </a>
                            <div class="media-body">
                                <ul class="sinlge-post-meta">
                                    <li><i class="fa fa-user"></i>Janis Gallagher</li>
                                    <li><i class="fa fa-clock-o"></i> 1:33 pm</li>
                                    <li><i class="fa fa-calendar"></i> DEC 5, 2013</li>
                                </ul>
                                <p></p>
                                <a class="btn btn-primary" href=""><i class="fa fa-reply"></i>Replay</a>
                            </div>
                        </li> --}}
                    </ul>                   
                </div><!--/Response-area-->
                <div class="replay-box">
                    <div class="row">
                        <div class="col-sm-4">
                            {{-- <h2>Leave a replay</h2>
                            <form>
                                <div class="blank-arrow">
                                    <label>Your Name</label>
                                </div>
                                <span>*</span>
                                <input type="text" placeholder="write your name...">
                                <div class="blank-arrow">
                                    <label>Email Address</label>
                                </div>
                                <span>*</span>
                                <input type="email" placeholder="your email address...">
                                <div class="blank-arrow">
                                    <label>Web Site</label>
                                </div>
                                <input type="email" placeholder="current city...">
                            </form> --}}
                        </div>
                        <div class="col-sm-8">
                            {{-- <div class="text-area">
                                <div class="blank-arrow">
                                    <label>Your Name</label>
                                </div>
                                <span>*</span>
                                <textarea name="message" rows="11"></textarea>
                                <a class="btn btn-primary" href="">post comment</a>
                            </div> --}}
                        </div>
                    </div>
                </div><!--/Repaly Box-->
            </div>  
        </div>
    </div>
</section>

@endsection