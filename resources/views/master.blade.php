<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>@yield('title') | </title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="{{ asset('lte') }}/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="{{ asset('lte') }}/bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="{{ asset('lte') }}/bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="{{ asset('lte') }}/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="{{ asset('lte') }}/dist/css/skins/skin-blue.css">
  <link rel="stylesheet" href="{{ asset('lte') }}/dist/css/akangeronces.css">
  {{-- @livewireStyles --}}
  {{-- <script src="{{ asset('js/app.js') }}"></script> --}}
 </head>
<body class="hold-transition skin-blue sidebar-mini fixed">
<!-- Site wrapper -->
<div class="wrapper">
  @include ('layouts.header')
  <aside class="main-sidebar bordered1">
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="{{ asset('lte') }}/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Alexander Pierce</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
@include('layouts.menu')
    </section>
  </aside>
  <div class="content-wrapper">
    @yield('judul')
    @yield('content')
  </div>
@include('layouts.footer')
@include('layouts.rightbar')

<script src="{{ asset('lte') }}/bower_components/jquery/dist/jquery.min.js"></script>
<script src="{{ asset('lte') }}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="{{ asset('lte') }}/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="{{ asset('lte') }}/bower_components/fastclick/lib/fastclick.js"></script>
<script src="{{ asset('lte') }}/dist/js/adminlte.min.js"></script>
{{-- <script src="{{ asset('lte') }}/dist/js/demo.js"></script> --}}
<script>
  $(document).ready(function () {
    $('.sidebar-menu').tree()
  })
</script>
{{-- @livewireScripts --}}
</body>
</html>
