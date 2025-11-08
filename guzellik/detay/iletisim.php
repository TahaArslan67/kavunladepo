     <section class="spa-center-three">
            <div class="container">
                <div class="section-title text-center">
                    <span class="section-title__tagline">BİZE ULAŞIN</span>
                    <h2 class="section-title__title">İletişim Bilgilerimiz</h2>
                </div>
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-6">
                        <div class="spa-center-three__single">
                            <h3 class="spa-center-three__title">Adres 1</h3>
                            <p class="spa-center-three__text"><?=$adres1?></p>
                            <div class="spa-center-three__contact">
                                <a href="mailto:<?=$email1?>"><?=$email1?></a>
                                <a href="tel:<?=$telefon1?>"><?=$telefon1?></a>
                            </div>
                        </div>
                    </div>
                      <div class="col-xl-6 col-lg-6 col-md-6">
                        <div class="spa-center-three__single">
                            <h3 class="spa-center-three__title">Adres 2</h3>
                            <p class="spa-center-three__text"><?=$adres2?></p>
                            <div class="spa-center-three__contact">
                                <a href="mailto:<?=$email1?>"><?=$email2?></a>
                                <a href="tel:<?=$telefon1?>"><?=$telefon2?></a>
                            </div>
                        </div>
                    </div>
                  
                   
                </div>
            </div>
        </section>
      
        <section class="contact-page">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-lg-5">
                        <div class="contact-page__left">
                            <div class="section-title text-left">
                                <span class="section-title__tagline">İletişim</span>
                                <h2 class="section-title__title">Bize Mesaj Atabilirsiniz</h2>
                            </div>
                            
                            <div class="contact-page__social">
                                <?php if($twitter!=''){?>
                                <a href="<?=$twitter?>" target="_blank"><i class="fab fa-twitter"></i></a>
                             <?php }?>
                              <?php if($facebook!=''){?>
                                <a href="<?=$facebook?>" target="_blank"><i class="fab fa-facebook"></i></a>
                             <?php }?>
                              <?php if($instagram!=''){?>
                                <a href="<?=$instagram?>" target="_blank"><i class="fab fa-instagram"></i></a>
                             <?php }?>
                              <?php if($youtube!=''){?>
                                <a href="<?=$youtube?>" target="_blank"><i class="fab fa-youtube"></i></a>
                             <?php }?>
                              <?php if($telegram!=''){?>
                                <a href="<?=$telegram?>" target="_blank"><i class="fab fa-telegram"></i></a>
                             <?php }?>
                             <?php if($linkedin!=''){?>
                                <a href="<?=$linkedin?>" target="_blank"><i class="fab fa-linkedin"></i></a>
                             <?php }?>
                             <?php if($pinterest!=''){?>
                                <a href="<?=$pinterest?>" target="_blank"><i class="fab fa-pinterest"></i></a>
                             <?php }?>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-7">
                        <div class="contact-page__right">
                            <div class="contact-page__content">
                                <form action="admin/include/fonksiyonlar.php"
                                    class="contact-page__form contact-form-validated" method="post" novalidate="novalidate">
                                    <div class="row">
                                        <input type="hidden" name="link" value="../../iletisim">
                                        <div class="col-xl-6">
                                            <div class="contact-page__form-input-box">
                                                <input type="text" placeholder="Ad Soyad" name="adsoyad">
                                            </div>
                                        </div>
                                        <div class="col-xl-6">
                                            <div class="contact-page__form-input-box">
                                                <input type="email" placeholder="Email " name="email">
                                            </div>
                                        </div>
                                        <div class="col-xl-6">
                                            <div class="contact-page__form-input-box">
                                                <input type="text" placeholder="Telefon" name="telefon">
                                            </div>
                                        </div>
                                        <div class="col-xl-6">
                                            <div class="contact-page__form-input-box">
                                                <input type="text" placeholder="Konu" name="konu">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="contact-page__form-input-box text-message-box">
                                            <textarea name="mesaj" placeholder="Mesajınız"></textarea>
                                        </div>
                                        <div class="contact-page__btn-box">
                                            <button type="submit" name="iletisim-formu" class="thm-btn contact-page__btn">Gönder</button>
                                        </div>
                                    </div>
                                </form>
                                <div class="result"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="contact-page__google-map">
            <?=$googlemaps?>

        </section>