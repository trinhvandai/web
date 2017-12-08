@extends('layouts.layout')

@section('content') 
<section id="advertisement">
    <div class="container">
        <img src="images/shop/home.jpg" alt="" />
    </div>
</section>

<section>
    <div class="container">
        <div class="row">
            
            <div class="col-sm-10" style="margin-left:80px;" >
                <div class="blog-post-area" >
                    <h2 class="title text-center">Our Programs</h2>
                    @if (count($data['progs']))
                    @foreach ($data['progs'] as $post)
                    <div class="single-blog-post">
                        <h3>{{$post->title}}</h3>
                        
                        <div class="post-meta">
                            <ul>
                                <li><i class="fa fa-user"></i> Admin</li>
                                <li><i class="fa fa-clock-o"></i> {{date('h:i:s A', strtotime($post->created_at))}}</li>
                                <li><i class="fa fa-calendar"></i> {{date('d M, Y', strtotime($post->created_at))}}</li>
                            </ul>
                        </div>
                        <a href="">
                            <img src="images/blog/{{$post->image}}" alt="">
                        </a>
                        <p>{{str_limit($post->content, 200)}}</p>
                        <a  class="btn btn-primary" href="{{url('blog/'.$post->url)}}">Read More</a>
                    </div>
                    @endforeach
                    @endif
                    <div class="pagination-area">
                        <ul class="pagination">
                            {!! $data['progs']->render() !!}
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection