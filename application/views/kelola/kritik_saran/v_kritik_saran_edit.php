<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
    <div class="form-group">
            <label class="col-sm-4 control-label">Pengirim</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'pengirim','value'=>$row->pengirim,'class'=>'form-control'));?>
            <?php echo form_error('pengirim');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pengiriman</label>
            <div class="col-sm-8">
            <?php echo form_input(array('type'=>'date','name'=>'tgl_pengiriman','value'=>$row->tgl_pengiriman,'class'=>'form-control'));?>
            <?php echo form_error('tgl_pengiriman');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Lab Tujuan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'lab_tujuan','value'=>$row->lab_tujuan,'class'=>'form-control'));?>
            <?php echo form_error('lab_tujuan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kritik</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kritik','value'=>$row->kritik,'class'=>'form-control'));?>
            <?php echo form_error('kritik');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Saran</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'saran','value'=>$row->saran,'class'=>'form-control'));?>
            <?php echo form_error('saran');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kritik_saran/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
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
