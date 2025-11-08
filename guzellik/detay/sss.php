        <section class="services-details-two">
            <div class="container">
                <div class="row">
               
                    <div class="col-xl-12 col-lg-12">
                        <div class="services-details-two__right">
                           
                           
                            <div class="services-details-two__faq">
                                <div class="accrodion-grp" data-grp-name="faq-one-accrodion">
                                  
                                   <?php
                   $cek = $db->query("select * from sss where durum='0' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                   foreach($cek as $goster){
                   ?>
                                    <div class="accrodion">
                                        <div class="accrodion-title">
                                            <h4><?=$goster["adi"]?></h4>
                                        </div>
                                        <div class="accrodion-content">
                                            <div class="inner">
                                                <p><?=$goster["aciklama"]?></p>
                                            </div><!-- /.inner -->
                                        </div>
                                    </div>
                    <?php }?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>