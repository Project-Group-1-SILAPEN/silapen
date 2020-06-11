<?php require ('application/views/kotak.php'); ?>
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola Modul</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4' || $sesi == '5' || $sesi == '6'|| $sesi == '7'|| $sesi == '8') {
                echo button('load_silent("kelola/modul/form/base","#modal")','Add New modul','btn btn-success');
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
                <th>Mata Kuliah</th>
                <th>Nama Modul</th>
                <th>File Modul</th>
                <th>Deskripsi Modul</th>
                <th>Dosen Pengarang</th>
                <th>status</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($modul->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->mata_kuliah?></td>
            <td align="center"><?=$row->nama_modul?></td>
            <td align="center"><?=$row->file_modul?></td>
            <td align="center"><?=$row->deskripsi_modul?></td>
            <td align="center"><?=$row->dosen_pengarang?></td>
            <td align="center"><?=$row->status?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("kelola/modul/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');
                echo button('load_silent("kelola/modul/form/sub/'.$row->id.'","#modal")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');
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