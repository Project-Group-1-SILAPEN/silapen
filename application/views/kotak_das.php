    <div class="col-md-12">
          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Pengelolaan Laboratorium</h3>
            </div>
              </a>
              <i class="btn btn-app" 
              <?php echo button('load_silent("master/nama_alat","#content")','' ,'  ');?>  Kelola Alat <a class="fa fa-wrench"></i>
              </a> 
              <i class="btn btn-app" 
              <?php echo button('load_silent("master/master_bahan","#content")','' ,'  ');?>  Kelola Bahan <a class="fa fa-eyedropper"></i>
              </a>
              <i class="btn btn-app" 
              <?php echo button('load_silent("kelola/jadwal","#content")','' ,'  ');?>  Kelola Jadwal <a class="fa fa-calendar"></i>
              </a>
              <i class="btn btn-app" 
              <?php echo button('load_silent("kelola/modul","#content")','' ,'  ');?>  Kelola Modul <a class="fa fa-book"></i>
              </a>
              <i class="btn btn-app" 
              <?php echo button('load_silent("kelola/skripsi","#content")','' ,'  ');?>  Kelola Skripsi <a class="fa fa-graduation-cap"></i>
              </a>
              <i class="btn btn-app" 
              <?php echo button('load_silent("peminjaman/peminjaman_alat","#content")','' ,'  ');?>  Kelola Peminjaman Alat <a class="fa fa-exchange"></i>
              </a>
              </a>
              <i class="btn btn-app" 
              <?php echo button('load_silent("peminjaman/peminjaman_bahan","#content")','' ,'  ');?>  Kelola Peminjaman Bahan <a class="fa fa-binoculars"></i>
              </a>
              </a>
              <i class="btn btn-app" 
              <?php echo button('load_silent("kelola/kritik_saran","#content")','' ,'  ');?>  Kelola Kritik & Saran <a class="fa  fa-envelope"></i>
              </a>
              
            </div>