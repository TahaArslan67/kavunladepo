<section class="instagram">
            <div class="container">
                <div class="instagram__title">
                    <h3>Fotoğraf Galeri</h3>
                </div>
                <div class="row">
                      <?php
                   $cek = $db->query("select * from galeri where durum='0' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                   foreach($cek as $goster){
                   ?>
                    <div class="col-xl-2 col-lg-4 col-md-6">
                        <div class="instagram__single">
                            <div class="instagram__img">
                                <img src="resimler/<?=$goster["resim"]?>" alt="<?=$goster["adi"]?>">
                                <div class="instagram__img-icon">
                                    <a href="#"><span class="fab fa-instagram"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                   <?php }?>
                </div>
            </div>
        </section>