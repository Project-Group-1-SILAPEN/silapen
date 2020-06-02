<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

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
            <label class="col-sm-4 control-label">No</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'no','class'=>'form-control'));?>
            <?php echo form_error('no');?>
            <span id="check_data"></span>
            </div>
        </div>

<div class="form-group">
            <label class="col-sm-4 control-label">Kode</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode','class'=>'form-control'));?>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>

<div class="form-group">
            <label class="col-sm-4 control-label">Jenis Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jenis_bahan','class'=>'form-control'));?>
            <?php echo form_error('jenis_bahan');?>
            <span id="check_data"></span>
            </div>
        </div>

<div class="form-group">
            <label class="col-sm-4 control-label">Nama Bahan</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'nama_bahan','value'=>$row->nama_bahan,'class'=>'form-control'));?>
            <?php echo form_error('nama_bahan');?>
            </div>
        </div>

<div class="form-group">
            <label class="col-sm-4 control-label">Pengarang</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'pengarang','class'=>'form-control'));?>
            <?php echo form_error('pengarang');?>
            <span id="check_data"></span>
            </div>
        </div>

<div class="form-group">
            <label class="col-sm-4 control-label">Tahun</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tahun','class'=>'form-control'));?>
            <?php echo form_error('tahun');?>
            <span id="check_data"></span>
            </div>
        </div>

<div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"master/master_bahan/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
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
