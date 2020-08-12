@extends('master')

@section('title','dashboard')
    
@section('judul')
<section class="content-header">
    <h1>
     
      <small>Dashboard Usul Instansi</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="#">Examples</a></li>
      <li class="active">Blank page</li>
    </ol>
  </section>
@endsection

@section('content')
        <!-- Main content -->


        <section class="content">
          
          
        <div class="btn-group-vertical">
          <button type="button" class="btn btn-success">Tambah Tiket</button>
        </div>


            <!-- Default box -->
            <div class="box">
          
              <div class="box-body">

                <div class="card">
                       <!-- /.card-header -->
                  <div class="card-body p-0">
                    <table class="table">
                      <thead>
                        <tr>
                          <th style="width: 10px">#</th>
                          <th>Nomor Usul</th>
                          <th>Pelayanan</th>
                          <th>Total</th>
                          <th>ACC</th>
                          <th>BTL</th>
                          <th>TMS</th>
                          <th>Progress</th>
                          <th style="width: 40px">Label</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>1.</td>
                          <td>154/bkpsdm/2020</td>
                          <td>Pindah Instansi</td>
                          <td>15</td>
                          <td>1</td>
                          <td>0</td>
                          <td>0</td>
                          <td>
                            <div class="progress progress-xs">
                              <div class="progress-bar progress-bar-danger" style="width: 55%"></div>
                            </div>
                          </td>
                          <td><span class="badge bg-danger">55%</span></td>
                        </tr>
                        <tr>
                          <td>2.</td>
                          <td>155/bkpsdm/2020</td>
                          <td>Perbaikan Masa Kerja</td>
                          <td>15</td>
                          <td>1</td>
                          <td>0</td>
                          <td>0</td>
                          <td>
                            <div class="progress progress-xs">
                              <div class="progress-bar bg-warning" style="width: 70%"></div>
                            </div>
                          </td>
                          <td><span class="badge bg-warning">70%</span></td>
                        </tr>
                        <tr>
                          <td>3.</td>
                          <td>156/bkpsdm/2020</td>
                          <td>Konversi NIP</td>
                          <td>15</td>
                          <td>1</td>
                          <td>0</td>
                          <td>0</td>
                          <td>
                            <div class="progress progress-xs progress-striped active">
                              <div class="progress-bar bg-primary" style="width: 30%"></div>
                            </div>
                          </td>
                          <td><span class="badge bg-primary">30%</span></td>
                        </tr>
                        <tr>
                          <td>4.</td>
                          <td>157/bkpsdm/2020</td>
                          <td>Karpeg</td>
                          <td>15</td>
                          <td>1</td>
                          <td>0</td>
                          <td>0</td>
                          <td>
                            <div class="progress progress-xs progress-striped active">
                              <div class="progress-bar bg-success" style="width: 90%"></div>
                            </div>
                          </td>
                          <td><span class="badge bg-success">90%</span></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <!-- /.card-body -->
                </div>


              </div>
              <!-- /.box-body -->
          
              <!-- /.box-footer-->
            </div>
            <!-- /.box -->
      
          </section>
@endsection
