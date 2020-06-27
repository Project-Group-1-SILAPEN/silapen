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
            <label class="col-sm-4 control-label">Mata Kuliah</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'mata_kuliah','value'=>$row->mata_kuliah,'class'=>'form-control'));?>
            <?php echo form_error('mata_kuliah');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Modul</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_modul','value'=>$row->nama_modul,'class'=>'form-control'));?>
            <?php echo form_error('nama_modul');?>
            </div>
        </div>
        <div class="form-group">
             <label class="col-sm-4 control-label">Link Modul</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'link_modul','value'=>$row->link_modul,'class'=>'form-control'));?>
            <?php echo form_error('link_modul');?>
            </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Deskripsi Modul</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'deskripsi_modul','value'=>$row->deskripsi_modul,'class'=>'form-control'));?>
            <?php echo form_error('deskripsi_modul');?>
        </div>
         </div>
            <div class="form-group">
            <label class="col-sm-4 control-label">Dosen Pengarang</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'dosen_pengarang','value'=>$row->dosen_pengarang,'class'=>'form-control'));?>
            <?php echo form_error('dosen_pengarang');?>
            </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status</label>
            <div class="col-sm-8">
            <select class="form-control">
                    <option>tidak ada</option> 
                    <option>ada</option>
                  </select>
                  <?php echo form_error('status');?>
            </div>   
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/modul/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
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