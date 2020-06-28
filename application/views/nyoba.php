<div class="row">
        <div class="col-md-4">
          <div class="box box-warning">
            <div class="box-header with-border">
              <h3 class="box-title">Kelola Alat Bahan</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            </a>
              <i class="btn btn-app" 
              <?php echo button('load_silent("master/nama_alat","#content")','' ,'  ');?>  Kelola Alat </i>
              </a> 
              <i class="btn btn-app" 
              <?php echo button('load_silent("master/master_bahan","#content")','' ,'  ');?>  Kelola Bahan </i>
              </a>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-4">
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Kelola Administrasi Lab</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            </a>
              <i class="btn btn-app" 
              <?php echo button('load_silent("peminjaman/peminjaman_alat","#content")','' ,'  ');?>  Peminjaman Alat </i>
              </a> 
              <i class="btn btn-app" 
              <?php echo button('load_silent("peminjaman/peminjaman_bahan","#content")','' ,'  ');?>  Peminjaman Bahan</i>
              </a>
              <i class="btn btn-app" 
              <?php echo button('load_silent("peminjaman/cek_status_peminjaman","#content")','' ,'  ');?>  Cek Status Peminjaman </i>
              </a>
              <i class="btn btn-app" 
              <?php echo button('load_silent("kelola/kritik_saran","#content")','' ,'  ');?>  Kritik & Saran </i>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-4">
          <div class="box box-warning">
            <div class="box-header with-border">
              <h3 class="box-title">kelola Jadwal, Modul, Skripsi</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            </a>
            <i class="btn btn-app" <a="" href="javascript:void(0)" onclick="load_silent(&quot;kelola/jadwal&quot;,&quot;#content&quot;)">  Kelola Jadwal <a class="fa fa-calendar"></a></i>
            </a>
            <i class="btn btn-app" <a="" href="javascript:void(0)" onclick="load_silent(&quot;kelola/modul&quot;,&quot;#content&quot;)">  Kelola Modul <a class="fa fa-book"></a></i>
            </a>
            <i class="btn btn-app" <a="" href="javascript:void(0)" onclick="load_silent(&quot;kelola/skripsi&quot;,&quot;#content&quot;)">  Kelola Skripsi <a class="fa fa-graduation-cap"></a></i>
            </a>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>