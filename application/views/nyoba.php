<div class="row">
        <div class="col-md-3">
          <div class="box box-warning">
            <div class="box-header with-border">
              <h3 class="box-title">Collapsable</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                </button>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              The body of the box
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3">
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Removable</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              The body of the box
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3">
          <div class="box box-warning">
            <div class="box-header with-border">
              <h3 class="box-title">kelola lab</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            <i class="btn btn-app" 
              <?php echo button('load_silent("master/nama_alat","#content")','' ,'  ');?>  Kelola Alat <a class="fa fa-wrench"></i>
              </a> 
              <i class="btn btn-app" 
              <?php echo button('load_silent("master/master_bahan","#content")','' ,'  ');?>  Kelola Bahan <a class="fa fa-eyedropper"></i>
              </a>
              <i class="btn btn-app" 
              <?php echo button('load_silent("kelola/jadwal","#content")','' ,'  ');?>  Kelola Jadwal <a class="fa fa-calendar"></i>
              </a>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3">
          <div class="box box-danger">
            <div class="box-header">
              <h3 class="box-title">Loading state</h3>
            </div>
            <div class="box-body">
              The body of the box
            </div>
            <!-- /.box-body -->
            <!-- Loading (remove the following to stop the loading)-->
            <div class="overlay">
              <i class="fa fa-refresh fa-spin"></i>
            </div>
            <!-- end loading -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>