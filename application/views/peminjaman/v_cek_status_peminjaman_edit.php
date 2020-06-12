<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Id Peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'id_peminjaman','value'=>$row->id_peminjaman,'class'=>'form-control'));?>
            <?php echo form_error('id_peminjaman');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jenis Peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'jenis_peminjaman','value'=>$row->jenis_peminjaman,'class'=>'form-control'));?>
            <?php echo form_error('jenis_peminjaman');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'status','value'=>$row->status,'class'=>'form-control'));?>
            <?php echo form_error('status');?>
            </div>   
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"peminjaman/cek_status_peminjaman/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
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