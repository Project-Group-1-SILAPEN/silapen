<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">User</h3>

            <div class="box-tools pull-right">
              <?php 
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' ) {
                echo button('load_silent("cms/user/show_addForm/","#content")','Add New User','btn btn-success');
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
                <th>Gambar</th>
                <th>Username</th>
                <th>password</th>
                <th>Level</th>
                <th>no HP</th>
                <th>Alamat</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($user->result() as $row):
          $avatar = parse_avatar($row->gambar,$row->nama,75,'');             
          ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama?></td>
            <td align="center"><?=$avatar?></td>
            <td align="center"><?=$row->username?></td>
            <td align="center"><?=$row->password?></td>
            <td align="center"><?=$row->level?></td>
            <td align="center"><?=$row->no_hp?></td>
            <td align="center"><?=$row->alamat?></td>
            <td align="center">
            <?php 
            $sesi = from_session('level');
            if ($sesi == '1' || $sesi == '2') {
            echo button('load_silent("cms/user/show_editForm_user/'.$row->id.'","#content")','Edit','btn btn-info','data-toggle="tooltip" title="Edit User"');
          } else {
            # code...
          }
            ?> 
            <?php echo button('load_silent("cms/user/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?> 
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