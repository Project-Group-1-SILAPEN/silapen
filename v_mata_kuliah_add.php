<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Mk</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_mk','class'=>'form-control'));?>
            <?php echo form_error('nama_mk');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jml Sks</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jml_sks','class'=>'form-control'));?>
            <?php echo form_error('jml_sks');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'keterangan','class'=>'form-control'));?>
            <?php echo form_error('keterangan');?>
            <span id="check_data"></span>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/mata_kuliah/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
$(document).ready(function() {
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>