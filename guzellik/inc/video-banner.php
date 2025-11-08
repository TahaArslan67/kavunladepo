 <section class="video-one">
            <div class="video-one__bg jarallax" data-jarallax data-speed="0.2" data-imgPosition="50% 0%"
                style="background-image: url(assets/images/backgrounds/video-one-bg.jpg);"></div>
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6">
                        <div class="video-one__left">
                            <div class="section-title text-left">
                                <span class="section-title__tagline"><?=$title?></span>
                                <h2 class="section-title__title">Hizmetlerimiz</h2>
                            </div>
                            <div class="video-one__video-link">
                                <a href="<?=$hakkimizda["video"]?>" class="video-popup">
                                    <div class="video-one__video-icon">
                                        <span class="fa fa-play"></span>
                                        <i class="ripple"></i>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6">
                        <div class="video-one__right">
                            <ul class="video-one__points list-unstyled">
                                     <?php
                   $cek = $db->query("select * from hizmetler where durum='0' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                   foreach($cek as $goster){
                   ?>
                                <li>
                                    <div class="icon">
                                        <span class="fa fa-check"></span>
                                    </div>
                                    <p class="text"><?=$goster["adi"]?></p>
                                </li>
                                <?php }?>
                            </ul>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>