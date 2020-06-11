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
            <label class="col-sm-4 control-label">Nama Alat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_alat','value'=>$row->nama_alat,'class'=>'form-control'));?>
            <?php echo form_error('nama_alat');?>  
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Seri Alat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'seri_alat','value'=>$row->seri_alat,'class'=>'form-control'));?>
            <?php echo form_error('seri_alat');?>   
            </div>
         </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Merk Alat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'merk_alat','value'=>$row->merk_alat,'class'=>'form-control'));?>
            <?php echo form_error('merk_alat');?> 
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jumlah Grosir</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jumlah_grosir','value'=>$row->jumlah_grosir,'class'=>'form-control'));?>
            <?php echo form_error('jumlah_grosir');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Satuan Grosir</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'satuan_grosir','value'=>$row->satuan_grosir,'class'=>'form-control'));?>
            <?php echo form_error('satuan_grosir');?>   
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga Grosir</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga_grosir','value'=>$row->harga_grosir,'class'=>'form-control'));?>
            <?php echo form_error('harga_grosir');?>  
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Estimasi jumlah Alat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'estimasi_jumlah_alat','value'=>$row->estimasi_jumlah_alat,'class'=>'form-control'));?>
            <?php echo form_error('estimasi_jumlah_alat');?> 
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga Dasar Alat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga_dasar_alat','value'=>$row->harga_dasar_alat,'class'=>'form-control'));?>
            <?php echo form_error('harga_dasar_alat');?> 
            </div>
         </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jenis Alat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jenis_alat','value'=>$row->jenis_alat,'class'=>'form-control'));?>
            <?php echo form_error('jenis_alat');?> 
            </div>
         </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tahun</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tahun_alat','value'=>$row->tahun_alat,'class'=>'form-control'));?>
            <?php echo form_error('tahun_alat');?>
            </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Lab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_lab','value'=>$row->nama_lab,'class'=>'form-control'));?>
            <?php echo form_error('nama_lab');?>
                </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'keterangan','value'=>$row->keterangan,'class'=>'form-control'));?>
            <?php echo form_error('keterangan');?>
                </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"pengajuan/pengajuan_alat/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
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