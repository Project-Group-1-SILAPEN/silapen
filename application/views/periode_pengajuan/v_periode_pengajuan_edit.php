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
            <label class="col-sm-4 control-label">Id Pengajuan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'id_pengajuan','value'=>$row->id_pengajuan,'class'=>'form-control'));?>
            <?php echo form_error('id_pengajuan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Semester</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'semester','value'=>$row->semester,'class'=>'form-control'));?>
            <?php echo form_error('semester');?>
            <span id="check_data"></span>
            </div>
         </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Bulan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'bulan','value'=>$row->bulan,'class'=>'form-control'));?>
            <?php echo form_error('bulan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tahun Pengajuan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tahun_pengajuan','value'=>$row->tahun_pengajuan,'class'=>'form-control'));?>
            <?php echo form_error('tahun_pengajuan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Sumber Pendanaan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'sumber_pendanaan','value'=>$row->sumber_pendanaan,'class'=>'form-control'));?>
            <?php echo form_error('sumber_pendanaan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pendanaan Turun</label>
            <div class="col-sm-8">
            <?php echo form_input(array('type'=>'date','name'=>'tanggal_pendanaan_turun','value'=>$row->tanggal_pendanaan_turun,'class'=>'form-control'));?>
            <?php echo form_error('tanggal_pendanaan_turun');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Pajak</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'pajak','value'=>$row->pajak,'class'=>'form-control'));?>
            <?php echo form_error('pajak');?>
            <span id="check_data"></span>
            </div>
        </div>
       
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"pengajuan/periode_pengajuan/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
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