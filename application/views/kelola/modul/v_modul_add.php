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
            <label class="col-sm-4 control-label">Mata Kuliah</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'mata_kuliah','class'=>'form-control'));?>
            <?php echo form_error('mata_kuliah');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Modul</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_modul','class'=>'form-control'));?>
            <?php echo form_error('nama_modul');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
        <label class="col-sm-4 control-label">Link Modul</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'link_modul','class'=>'form-control'));?>
            <?php echo form_error('link_modul');?>
            <span id="check_data"></span>    
         </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Deskripsi Modul</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'deskripsi_modul','class'=>'form-control'));?>
            <?php echo form_error('deskripsi_modul');?>
            <span id="check_data"></span>
            </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Dosen Pengarang</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'dosen_pengarang','class'=>'form-control'));?>
            <?php echo form_error('dosen_pengarang');?>
            <span id="check_data"></span>
            </div>
            
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
            <div class="col-sm-8">
            <select name ='status'>
          <div class="col-sm-8">
          <option value ='ada'>Ada</option>
          <option value ='tidak ada'>Tidak Ada</option>
          </select>
                  
                  <span id="check_data"></span>
            </div></div>
        
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/modul/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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