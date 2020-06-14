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
                <th>Gambar</th>
                <th>File Abstrak</th>
                <th>Lembar Pengesahan</th>
                <th>Cover</th>
                <th>Kartu DP 1</th>
                <th>Kartu DP 2</th>
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
            <td align="center"><img src="<?php echo base_url().$row->gambar; ?>" class="file-preview-image"></td>
            <td align="center"><?=$row->file_abstrak?></td>
            <td align="center"><?=$row->lembar_pengesahan?></td>
            <td align="center"><?=$row->cover?></td>
            <td align="center"><?=$row->kartu_dp1?></td>
            <td align="center"><?=$row->kartu_dp2?></td>
            <td align="center"><?=$row->tahun_skripsi?></td>
            <td align="center"><?=$row->status_skripsi?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '8') {
                echo button('load_silent("kelola/skripsi/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
              <a href="<?= site_url('kelola/skripsi/delete/'.$row->id) ?>" class="btn btn-danger" onclick="return confirm('Anda yakin ingin menghapus data skripsi tersebut ?')"><i class="fa fa-trash"></i></a>
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