
        <section class="blog-one">
            <div class="container">
               
                <div class="row">
                   <?php
                   $cek = $db->query("select * from haberler where durum='0' order by id desc ")->fetchAll(PDO::FETCH_ASSOC);
                   foreach($cek as $goster){
                   ?>
                    <div class="col-xl-4 col-lg-4 wow fadeInUp" data-wow-delay="300ms">
                        <div class="blog-one__single">
                            <div class="blog-one__img">
                                <img src="resimler/<?=$goster["resim"]?>" alt="<?=$goster["adi"]?>">
                            </div>
                            <div class="blog-one__content">
                                
                                <ul class="blog-one__meta list-unstyled">
                                    <li>
                                        <a href="#"><i class="far fa-user-circle"></i>Admin</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="far fa-date"></i><?=$goster["eklenme_tarihi"]?></a>
                                    </li>
                                </ul>
                                <h3 class="blog-one__title"><a href="<?=$goster["seo"]?>"><?=$goster["adi"]?> </a></h3>
                                <p class="blog-one__text"><?=$goster["onaciklama"]?></p>
                                <div class="blog-one__read-more">
                                    <a href="<?=$goster["seo"]?>">Tümünü okuyun <span class="icon-right-arrow"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
               <?php }?>
                </div>
            </div>
        </section>