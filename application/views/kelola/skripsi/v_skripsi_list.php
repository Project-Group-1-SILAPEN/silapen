<?php require ('application/views/kotak.php'); ?>
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Daftar Skripsi</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4' || $sesi == '5' || $sesi == '8') {
                echo button('load_silent("kelola/skripsi/form/base","#modal")','Add New Skripsi','btn btn-success');
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
                <th>Judul Skripsi/TA</th>
                <th>Nama Penulis</th>
                <th>Dosen Pembimbing 1</th>
                <th>Dosen Pembimbing 2</th>
                <th>Link File Abstrak, Cover, Lembar Pengesahan, dan Kartu DP </th>
                <th>Tahun Skripsi/TA</th>
                <th>Status Skripsi/TA</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($skripsi->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->judul_skripsi?></td>
            <td align="center"><?=$row->nama_penulis?></td>
            <td align="center"><?=$row->dosen_pembimbing1?></td>
            <td align="center"><?=$row->dosen_pembimbing2?></td>
            <td align="center"><?=$row->link_file?></td>
            <td align="center"><?=$row->tahun_skripsi?></td>
            <td align="center"><span class="badge bg-green"><?=$row->status_skripsi?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '8') {
                echo button('load_silent("kelola/skripsi/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
              <?php echo button('load_silent("kelola/skripsi/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?> 
            </td>
          </tr>

        <?php endforeach;?>
        <?php require ('application/views/informasi.php'); ?>
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