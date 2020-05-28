<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">kode</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'kode','value'=>$row->kode,'class'=>'form-control'));?>
            <?php echo form_error('kode');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Tipe Lab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_tipe_lab','value'=>$row->nama_tie_lab,'class'=>'form-control'));?>
            <?php echo form_error('nama_tipe_lab');?>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'keterangan','value'=>$row->keterangan,'class'=>'form-control'));?>
            <?php echo form_error('keterangan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/tipe_lab/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
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