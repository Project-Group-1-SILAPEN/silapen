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
            <label class="col-sm-4 control-label">Judul Skripsi/TA</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'judul_skripsi','value'=>$row->judul_skripsi,'class'=>'form-control'));?>
            <?php echo form_error('judul_skripsi');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Penulis</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_penulis','value'=>$row->nama_penulis,'class'=>'form-control'));?>
            <?php echo form_error('nama_penulis');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Dosen Pembimbing 1</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'dosen_pembimbing1','value'=>$row->dosen_pembimbing1,'class'=>'form-control'));?>
            <?php echo form_error('dosen_pembimbing1');?>
            </div> 
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Dosen Pembimbing 2</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'dosen_pembimbing2','value'=>$row->dosen_pembimbing2,'class'=>'form-control'));?>
            <?php echo form_error('dosen_pembimbing2');?>
            </div>  
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Gambar</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'gambar','value'=>$row->gambar,'class'=>'form-control'));?>
            <?php echo form_error('gambar');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">File Abstrak</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'file_abstrak','value'=>$row->file_abstrak,'class'=>'form-control'));?>
            <?php echo form_error('file_abstrak');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Lembar Pengesahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'lembar_pengesahan','value'=>$row->lembar_pengesahan,'class'=>'form-control'));?>
            <?php echo form_error('lembar_pengesahan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Cover</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'cover','value'=>$row->cover,'class'=>'form-control'));?>
            <?php echo form_error('cover');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kartu DP 1</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kartu_dp1','value'=>$row->kartu_dp1,'class'=>'form-control'));?>
            <?php echo form_error('kartu_dp1');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kartu DP 2</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kartu_dp2','value'=>$row->kartu_dp2,'class'=>'form-control'));?>
            <?php echo form_error('kartu_dp2');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tahun Skripsi/TA</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tahun_skripsi/ta','value'=>$row->tahun_skripsi,'class'=>'form-control'));?>
            <?php echo form_error('tahun_skripsi');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status Skripsi/TA</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'status_skripsi','value'=>$row->status_skripsi,'class'=>'form-control'));?>
            <?php echo form_error('status_skripsi');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/skripsi/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
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