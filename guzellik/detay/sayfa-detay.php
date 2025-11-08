        <section class="services-details-two">
            <div class="container">
                <div class="row">
                 
                    <div class="col-xl-9 col-lg-7">
                        <div class="services-details-two__right">
                            <div class="services-details-two__img">
                                <img src="resimler/<?=$sayfalar["resim"]?>" alt="<?=$sayfalar["adi"]?>">
                            </div>
                            <h3 class="services-details-two__title-1"><?=$sayfalar["adi"]?></h3>
                            <p class="services-details-two__text-1"><?=$sayfalar["aciklama"]?></p>
                
                        </div>
                    </div>
                    
                       <div class="col-xl-3 col-lg-5">
                        <div class="services-details-two__left">
                            <div class="services-details-two__category">
                                <ul class="services-details-two__category-list list-unstyled">
                                      <?php
                   $cek = $db->query("select * from sayfalar where durum='0' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                   foreach($cek as $goster){
                   ?>
                                    <li <?php if($goster["id"]==$id){?>class="active" <?php }?>>
                                        <a href="<?=$goster["seo"]?>"><?=$goster["adi"]?> <i class="fa fa-angle-right"></i></a>
                                    </li>
                                  <?php }?>
                                </ul>
                            </div>
                           
                        </div>
                    </div>
                </div>
            </div>
        </section>