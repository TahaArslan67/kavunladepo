<section class="team-one">
            <div class="container">
                <div class="row">
                     <?php
                   $cek = $db->query("select * from ekibimiz where durum='0' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                   foreach($cek as $goster){
                   ?>
                    <div class="col-xl-4 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="600ms">
                        <div class="team-one__single">
                            <div class="team-one__img">
                                <img src="resimler/<?=$goster["resim"]?>" alt="">
                                
                            </div>
                            <div class="team-one__content">
                                <h3 class="team-one__name"><a href="#"><?=$goster["adi"]?></a></h3>
                                <p class="team-one__sub-title"><?=$goster["linki"]?></p>
                            </div>
                        </div>
                    </div>
                   <?php }?>
                </div>
            </div>
        </section>