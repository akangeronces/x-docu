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
  <link rel="stylesheet" href="{{ asset('lte') }}/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
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
          <p>akangeronces</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Kota Langsa</a>
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
<script src="{{ asset('lte') }}/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="{{ asset('lte') }}/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="{{ asset('lte') }}/dist/js/adminlte.min.js"></script>
{{-- <script src="{{ asset('lte') }}/dist/js/demo.js"></script> --}}
<script>
  $(document).ready(function () {
   $('.sidebar-menu').tree()
   $('.uploadzipClick').click(function(){ $('#uploadzip').trigger('click'); });

  $("#checkedAll").change(function(){
    if(this.checked){
      $(".checkSingle").each(function(){
        this.checked=true;
      })              
    }else{
      $(".checkSingle").each(function(){
        this.checked=false;
      })              
    }
  });

  $(".checkSingle").click(function () {
    if ($(this).is(":checked")){
      var isAllChecked = 0;
      $(".checkSingle").each(function(){
        if(!this.checked)
           isAllChecked = 1;
      })              
      if(isAllChecked == 0){ $("#checkedAll").prop("checked", true); }     
    }else {
      $("#checkedAll").prop("checked", false);
    }
  });



  })

  $(function () {
    $('#table1').DataTable({
      'columnDefs': [ {
      'targets': [0,5],
      'orderable': false
      } ]
    })
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>
{{-- @livewireScripts --}}
</body>
</html>
