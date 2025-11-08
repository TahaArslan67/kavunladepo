

    <div class="mobile-nav__wrapper">
        <div class="mobile-nav__overlay mobile-nav__toggler"></div>
        <!-- /.mobile-nav__overlay -->
        <div class="mobile-nav__content">
            <span class="mobile-nav__close mobile-nav__toggler"><i class="fa fa-times"></i></span>

            <div class="logo-box">
                <a href="./" aria-label="logo image"><img src="resimler/<?=$logo?>" width="90"
                        alt="" /></a>
            </div>
            <!-- /.logo-box -->
            <div class="mobile-nav__container"></div>
            <!-- /.mobile-nav__container -->

            <ul class="mobile-nav__contact list-unstyled">
                <li>
                    <i class="fa fa-envelope"></i>
                    <a href="mailto:<?=$email1?>"><?=$email1?></a>
                </li>
                <li>
                    <i class="fa fa-phone-alt"></i>
                    <a href="tel:<?=$telefon1?>"><?=$telefon1?></a>
                </li>
            </ul><!-- /.mobile-nav__contact -->
            <div class="mobile-nav__top">
                <div class="mobile-nav__social">
                    <?php if($twitter!=''){?>
                                <a href="<?=$twitter?>" target="_blank"><i class="fab fa-twitter"></i></a>
                               <?php }?>
                                <?php if($instagram!=''){?>
                                <a href="<?=$instagram?>" target="_blank"><i class="fab fa-instagram"></i></a>
                               <?php }?>
                                <?php if($youtube!=''){?>
                                <a href="<?=$youtube?>" target="_blank"><i class="fab fa-youtube"></i></a>
                               <?php }?>
                                <?php if($facebook!=''){?>
                                <a href="<?=$facebook?>" target="_blank"><i class="fab fa-facebook"></i></a>
                               <?php }?>
                                <?php if($linkedin!=''){?>
                                <a href="<?=$linkedin?>" target="_blank"><i class="fab fa-linkedin"></i></a>
                               <?php }?>
                                <?php if($pinterest!=''){?>
                                <a href="<?=$pinterest?>" target="_blank"><i class="fab fa-pinterest"></i></a>
                               <?php }?>
                                <?php if($telegram!=''){?>
                                <a href="<?=$telegram?>" target="_blank"><i class="fab fa-telegram"></i></a>
                               <?php }?>
                </div><!-- /.mobile-nav__social -->
            </div><!-- /.mobile-nav__top -->



        </div>
        <!-- /.mobile-nav__content -->
    </div>
    <!-- /.mobile-nav__wrapper -->
