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
            <label class="col-sm-4 control-label">Nama Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_bahan','value'=>$row->nama_bahan,'class'=>'form-control'));?>
            <?php echo form_error('nama_bahan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Seri Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'seri_bahan','value'=>$row->seri_bahan,'class'=>'form-control'));?>
            <?php echo form_error('seri_bahan');?>
            <span id="check_data"></span>
            </div>
         </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Merk Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'merk_bahan','value'=>$row->merk_bahan,'class'=>'form-control'));?>
            <?php echo form_error('merk_bahan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jumlah Grosir</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jumlah_grosir','value'=>$row->jumlah_grosir,'class'=>'form-control'));?>
            <?php echo form_error('jumlah_grosir');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Satuan Grosir</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'satuan_grosir','value'=>$row->satuan_grosir,'class'=>'form-control'));?>
            <?php echo form_error('satuan_grosir');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga Grosir</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga_grosir','value'=>$row->harga_grosir,'class'=>'form-control'));?>
            <?php echo form_error('harga_grosir');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Estimasi jumlah Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'estimasi_jumlah_bahan','value'=>$row->estimasi_jumlah_bahan,'class'=>'form-control'));?>
            <?php echo form_error('estimasi_jumlah_bahan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga Dasar Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga_dasar_bahan','value'=>$row->harga_dasar_bahan,'class'=>'form-control'));?>
            <?php echo form_error('harga_dasar_bahan');?>
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
            <label class="col-sm-4 control-label">Tahun</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tahun_bahan','class'=>'form-control'));?>
            <?php echo form_error('tahun_bahan');?>
            <span id="check_data"></span>
            </div>
            </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Lab</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_lab','class'=>'form-control'));?>
            <?php echo form_error('nama_lab');?>
            <span id="check_data"></span>
                </div>
            </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'keterangan','class'=>'form-control'));?>
            <?php echo form_error('keterangan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"pengajuan/pengajuan_bahan/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
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