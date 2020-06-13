
<?php require ('application/views/warning.php'); ?>
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Daftar Peminjaman yang Menunggu Persetujuan</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4' || $sesi == '5' || $sesi == '6'|| $sesi == '7'|| $sesi == '8') {
                echo button('load_silent("kelola/pengumuman/form/base","#modal")','Add New pengumuman','btn btn-success');
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
                <th>Nama</th>
                <th>Nomor Induk</th>
                <th>Status</th>
                <th>kategori Pinjam</th>
                <th>Tanggal Pinjam</th>
                <th>Tanggal Kembali</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($pengumuman->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama?></td>
            <td align="center"><?=$row->nomor_induk?></td>
            <td align="center"><?=$row->status?></td>
            <td align="center"><?=$row->kategori_pinjam?></td>
            <td align="center"><?=$row->tanggal_pinjam?></td>
            <td align="center"><?=$row->tanggal_kembali?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("kelola/pengumuman/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
              <a href="<?= site_url('master/pengumuman/delete/'.$row->id) ?>" class="btn btn-danger" onclick="return confirm('Anda yakin ingin menghapus pengumuman tersebut ?')"><i class="fa fa-trash"></i></a>
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