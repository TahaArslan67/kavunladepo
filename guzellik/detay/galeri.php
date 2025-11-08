<section class="gallery-page">
            <div class="container">
                <div class="row masonary-layout">
                   <?php
                   $cek = $db->query("select * from galeri where durum='0' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                   foreach($cek as $goster){
                   ?>
                    <div class="col-xl-3 col-lg-6 col-md-6">
                        <div class="gallery-page__single">
                            <div class="gallery-page__img">
                                <img src="resimler/<?=$goster["resim"]?>" alt="<?=$goster["adi"]?>">
                                <div class="gallery-page__icon">
                                    <a class="img-popup" href="resimler/<?=$goster["resim"]?>"><span
                                            class="fa fa-plus"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                   <?php }?>
                </div>
            </div>
        </section>