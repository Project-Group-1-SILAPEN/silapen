<?php require ('application/views/kotak.php'); ?>
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Pengajuan Bahan</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '3' || $sesi == '4' || $sesi == '5'|| $sesi == '7') {
                echo button('load_silent("pengajuan/pengajuan_bahan/form/base","#modal")','Add New pengajuan bahan','btn btn-success');
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
                <th>Nama Bahan</th>
                <th>Seri Bahan</th>
                <th>Merk Bahan</th>
                <th>Jumlah Grosir</th>
                <th>Satuan Grosir</th>
                <th>Harga Grosir</th>
                <th>Estimasi Jumlah Bahan</th>
                <th>Harga Dasar Bahan</th>
                <th>jenis Bahan</th>
                <th>Tahun</th>
                <th>Nama Lab</th>
                <th>keterangan</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($pengajuan_bahan->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama_bahan?></td>
            <td align="center"><?=$row->seri_bahan?></td>
            <td align="center"><?=$row->merk_bahan?></td>
            <td align="center"><?=$row->jumlah_grosir?></td>
            <td align="center"><?=$row->satuan_grosir?></td>
            <td align="center"><?=$row->harga_grosir?></td>
            <td align="center"><?=$row->estimasi_jumlah_bahan?></td>
            <td align="center"><?=$row->harga_dasar_bahan?></td>
            <td align="center"><?=$row->jenis_bahan?></td>
            <td align="center"><?=$row->tahun_bahan?></td>
            <td align="center"><?=$row->nama_lab?></td>
            <td align="center"><?=$row->keterangan?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1') {
                echo button('load_silent("pengajuan/pengajuan_bahan/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
              <?php echo button('load_silent("pengajuan/pengajuan_bahan/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?> 
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