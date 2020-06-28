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
            <label class="col-sm-4 control-label">Judul Skripsi/TA</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'judul_skripsi','class'=>'form-control'));?>
            <?php echo form_error('judul_skripsi');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Penulis</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_penulis','class'=>'form-control'));?>
            <?php echo form_error('nama_penulis');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Dosen Pembimbing 1</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'dosen_pembimbing1','class'=>'form-control'));?>
            <?php echo form_error('dosen_pembimbing1');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Dosen Pembimbing 2</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'dosen_pembimbing2','class'=>'form-control'));?>
            <?php echo form_error('dosen_pembimbing2');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Link File Abstrak, Cover, Lembar Pengesahan, dan Kartu DP </label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'link_file','id'=>'link_file','class'=>'form-control'));?>
            <?php echo form_error('link_file');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tahun Skripsi</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tahun_skripsi','class'=>'form-control'));?>
            <?php echo form_error('tahun_skripsi');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status Skripsi</label>
            <div class="col-sm-8">
            <select name ='status_skripsi'>
          <div class="col-sm-8">
          <option value ='ada'>Ada</option>
          <option value ='tidak ada'>Tidak Ada</option>
          </select>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/skripsi/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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