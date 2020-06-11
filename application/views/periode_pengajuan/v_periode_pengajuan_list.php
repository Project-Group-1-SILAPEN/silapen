<?php require ('application/views/kotak.php'); ?>
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Periode Pengajuan</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '3' || $sesi == '4' || $sesi == '5'|| $sesi == '7') {
                echo button('load_silent("pengajuan/periode_pengajuan/form/base","#modal")','Add New periode pengajuan','btn btn-success');
              } else {
                # code...
              }
              ?>
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                
                <th>Id</th>
                <th>Id Pengajuan</th>
                <th>Semester</th>
                <th>Bulan</th>
                <th>Tahun Pengajuan</th>
                <th>Sumber Pendanaan</th>
                <th>Tanggal Pendanaan Turun</th>
                <th>Pajak</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($periode_pengajuan->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->id_pengajuan?></td>
            <td align="center"><?=$row->semester?></td>
            <td align="center"><?=$row->bulan?></td>
            <td align="center"><?=$row->tahun_pengajuan?></td>
            <td align="center"><?=$row->sumber_pendanaan?></td>
            <td align="center"><?=$row->tanggal_pendanaan_turun?></td>
            <td align="center"><?=$row->pajak?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1') {
                echo button('load_silent("pengajuan/periode_pengajuan/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');
                echo button('load_silent("pengajuan/periode_pengajuan/form/sub/'.$row->id.'","#modal")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');
              } else {
                # code...
              }
              ?>
            </td>
          </tr>

        <?php endforeach;?>
        </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#tableku').DataTable( {
      "ordering": false,
    } );
  });
</script>