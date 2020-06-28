<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Id</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'id','value'=>$row->id,'class'=>'form-control'));?>
            <?php echo form_error('id');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Id Anggota</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'id_anggota','value'=>$row->id_anggota,'class'=>'form-control'));?>
            <?php echo form_error('id_anggota');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Anggota</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_anggota','value'=>$row->nama_anggota,'class'=>'form-control'));?>
            <?php echo form_error('nama_anggota');?>
            </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
            <select name ='status'>
          <div class="col-sm-8">
          <option value ='aktif'>Aktif</option>
          <option value ='tidak aktif'>Tidak Aktif</option>
          </select>
            </div>   
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/anggota_lab/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>


<script type="text/javascript">
$(document).ready(function() {
    $(".select2").select2();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>