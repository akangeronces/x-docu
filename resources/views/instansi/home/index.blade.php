@extends('master')

@section('title','dashboard')

@section('judul')
<section class="content-header">
  <h1>

    <small>Dashboard Usul Instansi</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="#">Instansi</a></li>
    <li class="active">Dashboard Usul</li>
  </ol>
</section>
@endsection

@section('content')
<!-- Main content -->


<section class="content">

  <div class="btn-group-vertical" style="margin-bottom:10px">
    <a href="{{ route('usul.tambahUsul') }}" class="btn btn-success">Tambah Tiket</a>
  </div>

  <input type="file" id="uploadzip" style="display:none" />
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
                <th>Nomor Tiket</th>
                <th>Nomor Usul</th>
                <th>Pelayanan</th>
                <th>Total</th>
                <th>ACC</th>
                <th>BTL</th>
                <th>TMS</th>
                <th>Progress</th>
                <th style="width: 40px"></th>
                <th>Status</th>
                <th style="width: 170px">Tindakan</th>
              </tr>
            </thead>
            <tbody>
              @foreach($tickets as $index => $ticket)
              <tr>
                <td>{{ $index + 1 }}.</td>
                <td>{{ $ticket->no_tiket }}</td>
                <td>{{ $ticket->no_pengantar }}</td>
                @php ($pelayanan = $ticket->pelayanan)
                <td>
                  @if ($pelayanan)
                    {{ $pelayanan->nm_pelayanan }}
                    @php($bidang = $pelayanan->bidang)
                    @if ($bidang)
                      ({{ $bidang->nm_bidang }})
                    @endif
                  @endif
                </td>
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
                <td>
                  <p class="text-success"><strong>INSTANSI</strong></p>
                </td>
                <td>

                  <div class="btn-group">
                    <button type="button" class="btn btn-default btn-flat"><i class="fa fa-send-o"></i></button>
                    <button type="button" class="btn btn-default btn-flat"><i class="fa fa-pencil"></i></button>
                    <button type="button" class="btn btn-default btn-flat"><i class="fa fa-remove"></i></button>
                    <button type="button" class="btn btn-default btn-flat uploadzipClick"><i class="fa fa-upload"></i></button>
                  </div>
                </td>
              </tr>
              @endforeach
              <tr>

                <td>1.</td>
                <td>256489</td>
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
                <td>
                  <p class="text-success"><strong>INSTANSI</strong></p>
                </td>
                <td>

                  <div class="btn-group">
                    <button type="button" class="btn btn-default btn-flat"><i class="fa fa-send-o"></i></button>
                    <button type="button" class="btn btn-default btn-flat"><i class="fa fa-pencil"></i></button>
                    <button type="button" class="btn btn-default btn-flat"><i class="fa fa-remove"></i></button>
                    <button type="button" class="btn btn-default btn-flat uploadzipClick"><i class="fa fa-upload"></i></button>
                  </div>
                </td>
              </tr>
              <tr>
                <td>2.</td>
                <td>564895</td>
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
                <td>
                  <p class="text-success"><strong>BKN</strong></p>
                </td>
                <td>

                  <div class="btn-group">
                    <button type="button" class="btn btn-default btn-flat" disabled><i class="fa fa-send-o"></i></button>
                    <button type="button" class="btn btn-default btn-flat"><i class="fa fa-pencil"></i></button>
                    <button type="button" class="btn btn-default btn-flat"><i class="fa fa-remove"></i></button>
                    <button type="button" class="btn btn-default btn-flat uploadzipClick"><i class="fa fa-upload"></i></button>
                  </div>
                </td>
              </tr>
              <tr>
                <td>3.</td>
                <td>213489</td>
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
                <td>
                  <p class="text-warning"><strong>DIPROSES BKN</strong></p>
                </td>
                <td>
                  <div class="btn-group">
                    <button type="button" class="btn btn-default btn-flat" disabled><i class="fa fa-send-o"></i></button>
                    <button type="button" class="btn btn-default btn-flat" disabled><i class="fa fa-pencil"></i></button>
                    <button type="button" class="btn btn-default btn-flat" disabled><i class="fa fa-remove"></i></button>
                    <button type="button" class="btn btn-default btn-flat uploadzipClick" disabled><i class="fa fa-upload"></i></button>
                  </div>
                </td>
              </tr>
              <tr>
                <td>4.</td>
                <td>648751</td>
                <td>157/bkpsdm/2020</td>
                <td>Karpeg</td>
                <td>15</td>
                <td>3</td>
                <td>1</td>
                <td>0</td>
                <td>
                  <div class="progress progress-xs progress-striped active">
                    <div class="progress-bar bg-success" style="width: 90%"></div>
                  </div>
                </td>
                <td><span class="badge bg-success">90%</span></td>
                <td>
                  <p class="text-warning"><strong>DIPROSES BKN</strong></p>
                </td>
                <td>

                  <div class="btn-group">
                    <button type="button" class="btn btn-default btn-flat" disabled><i class="fa fa-send-o"></i></button>
                    <button type="button" class="btn btn-default btn-flat" disabled><i class="fa fa-pencil"></i></button>
                    <button type="button" class="btn btn-default btn-flat" disabled><i class="fa fa-remove"></i></button>
                    <button type="button" class="btn btn-default btn-flat uploadzipClick"><i class="fa fa-upload"></i></button>
                  </div>
                </td>
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


  <!-- detail nip -->
  <div class="box">
    <div class="box-header">
      <h3 class="box-title"><b>648751</b></h3>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
      <table id="table1" class="table table-bordered table-striped">
        <thead>
          <tr>
            <th class="no-sort" style="width: 10px"><input type="checkbox" class="form-check-input" id="checkedAll"></th>
            <th style="width: 10px">NO</th>
            <th>NIP</th>
            <th>Nama Pegawai</th>
            <th>Status</th>
            <th>Keterangan</th>
          </tr>
        </thead>
        <tbody>


          <tr>
            <td><input type="checkbox" class="form-check-input checkSingle"> </td>
            <td>1</td>
            <td>198703121987032003</td>
            <td>Andi Matupalesa</td>
            <td>ACC</td>
            <td></td>
          </tr>

          <tr>
            <td><input type="checkbox" class="form-check-input checkSingle"> </td>
            <td>2</td>
            <td>197703121952032003</td>
            <td>Dina Mardiana</td>
            <td>BTL</td>
            <td></td>
          </tr>
      </table>
    </div>
    <!-- /.box-body -->
  </div>
  <!-- /.box -->
  <div class="btn-group-vertical" style="margin-top:-10px">
    <a href="{{ route('usul.tambahUsul') }}" class="btn btn-success">Pickup for me</a>
  </div>


</section>
@endsection