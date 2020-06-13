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
            <label class="col-sm-4 control-label">Gambar</label>
            <div class="col-sm-8">
            <?php echo form_upload(array('name'=>'gambar','id'=>'gambar','class'=>'form-control'));?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">File Abstrak</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'file_abstrak','class'=>'form-control'));?>
            <?php echo form_error('file_abstrak');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Lembar Pengesahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'lembar_pengesahan','class'=>'form-control'));?>
            <?php echo form_error('lembar_pengesahan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Cover</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'cover','class'=>'form-control'));?>
            <?php echo form_error('cover');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kartu DP 1</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kartu_dp1','class'=>'form-control'));?>
            <?php echo form_error('kartu_dp1');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kartu DP 2</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kartu_dp2','class'=>'form-control'));?>
            <?php echo form_error('kartu_dp2');?>
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
            <?php echo form_input(array('name'=>'status_skripsi','class'=>'form-control'));?>
            <?php echo form_error('status_skripsi');?>
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