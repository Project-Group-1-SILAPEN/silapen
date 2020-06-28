<?php require ('application/views/kotak.php'); ?>
<?php require ('application/views/chart.php'); ?>
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Kritik dan Saran</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4' || $sesi == '6' || $sesi == '7'|| $sesi == '8') {
                echo button('load_silent("kelola/kritik_saran/form/base","#modal")','Add New Kritik Saran','btn btn-success');
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
                <th>Pengirim</th>
                <th>Tanggal Pengiriman</th>
                <th>Lab Tujuan</th>
                <th>Kritik</th>
                <th>Saran</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($kritik_saran->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->pengirim?></td>
            <td align="center"><?=$row->tgl_pengiriman?></td>
            <td align="center"><?=$row->lab_tujuan?></td>
            <td align="center"><?=$row->kritik?></td>
            <td align="center"><?=$row->saran?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("kelola/kritik_saran/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
              <?php echo button('load_silent("kelola/kritik_saran/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?> 
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