<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Id</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'id','class'=>'form-control'));?>
            <?php echo form_error('id');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label" for="gambar_depan">gambar_depan</label>
            <div class="col-sm-8">
            <?php echo form_upload(array('name'=>'foto','id'=>'foto','class'=>'form-control'));?>
            <?php echo form_error('foto');?>
            </div>
        </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/gambar_depan/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
$(document).ready(function() {
    $(foto) . fileinput({
        'showimage'       :true,
        initialPreview: '<img scr = <?php echo base_url(). $row->gambar_depan; ?>"class= "file-priview-img">'
    })
    $(".select2").select2();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>