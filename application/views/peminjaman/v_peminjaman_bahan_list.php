<?php require ('application/views/kotak.php'); ?>
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Peminjaman Bahan</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("peminjaman/peminjaman_bahan/form/base","#modal")','Add New peminjaman_bahan','btn btn-success');
              } else {
                # code...
              }
              ?>
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>Id</th>
                <th>Nama Bahan</th>
                <th>Nama Peminjam</th>
                <th>Tanggal Pinjam</th>
                <th>Satuan</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($peminjaman_bahan->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->id?></td>
            <td align="center"><?=$row->nama_bahan?></td>
            <td align="center"><?=$row->nama_peminjam?></td>
            <td align="center"><?=$row->tanggal_pinjam?></td>
            <td align="center"><?=$row->satuan?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("peminjaman/peminjaman_bahan/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');
                echo button('load_silent("peminjaman/peminjaman_bahan/form/sub/'.$row->id.'","#modal")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');
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