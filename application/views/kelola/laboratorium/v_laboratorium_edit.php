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
            <label class="col-sm-4 control-label">Kode Laboratorium</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode_laboratorium','value'=>$row->kode_laboratorium,'class'=>'form-control'));?>
            <?php echo form_error('kode_laboratorium');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Laboratorium</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_laboratorium','value'=>$row->nama_laboratorium,'class'=>'form-control'));?>
            <?php echo form_error('nama_laboratorium');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jenis Laboratorium</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jenis_laboratorium','value'=>$row->jenis_laboratorium,'class'=>'form-control'));?>
            <?php echo form_error('laboratorium');?>
        </div>
         </div>
            <div class="form-group">
            <label class="col-sm-4 control-label">Kondisi</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kondisi','value'=>$row->kondisi,'class'=>'form-control'));?>
            <?php echo form_error('kondisi');?>
            </div>
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
            echo button('send_form(document.faddmenugrup,"kelola/keterangan/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
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