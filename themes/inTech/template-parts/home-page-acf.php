<?php
/**
* Template Name: Home page ACF
 */

get_header(); ?>

    <section id="hero">
        <?php if( have_rows('banner') ): ?>
            <div class="hero-banner container-fluid no-padding">
                <?php while(have_rows('banner')) : the_row();
                    // vars
                    $banner_img = get_sub_field('background');
                ?>
                    <div class="banner-bg" style="background:url('<?php echo $banner_img['url']; ?>') no-repeat center center">
                        <div class="banner-text container">
                            <div class="row">
                                <div class="col-md-6 col-12 hero-left-cont">
                                    <?php the_sub_field('left_heading'); ?>
                                    <div class="left-text-hero"><?php the_sub_field('left_text'); ?></div>
                                    <?php the_sub_field('left_button'); ?>
                                </div>
                                <div class="col-md-6 col-12">
                                    <div class="right-cta">
                                        <div class="navbar-cta row">
                                            <?php if( have_rows('cta') ): ?>
                                                <?php while(have_rows('cta')) : the_row();
                                                    // vars
                                                    //$banner_img = get_sub_field('background');
                                                ?>                                          
                                                    <input type ='text' name="post_type" id ="field" value="PLEASE SELECT WHAT KIND OF PRODUCTS DO YOU PREFER"/>
                                                    <div class="dropdown-cta">
                                                        <button class="btn btn-cta-dpd dropdown-toggle dropdown-toggle-split" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
                                                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2">
                                                            <?php wp_nav_menu( array( 'theme_location' => 'products' ) ); ?>
                                                        </div>
                                                    </div>       
                                                <?php endwhile; ?>
                                            <?php endif; ?>      
                                        </div> 
                                        <div class="products-cta container">
                                            <div class="row">
                                                
                                                <?php if( have_rows('cta_products') ): ?>
                                                    <?php while(have_rows('cta_products')) : the_row();
                                                        // vars
                                                        $img1 = get_sub_field('img');
                                                    ?>
                                                    <div class="col-lg-6 col-md-12 cta-product">
                                                        <img src="<?php echo $img1['url']; ?>" alt="<?php echo $img1['alt'] ?>"/>
                                                        <?php the_sub_field('title'); ?>
                                                        <input type="checkbox" name="checkbox" id="prod-check">
                                                        <span class="checkmark"></span>
                                                    </div>
                                                    <?php endwhile; ?>
                                                <?php endif; ?>  
                                                                              
                                            </div>
                                        </div>                      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endwhile; ?>
            </div>
        <?php endif; ?>
    </section>

    <section id="carousel">
        <div class="container carousel-container">
            <div class="slideControls">
                <a class="slidePrev">
                  <i class="fas fa-chevron-left"></i>
                 </a>
                <a class="slideNext">
                  <i class="fas fa-chevron-right"></i>
                </a>
            </div>          
            <ul id="home-carousel">
                <!-- Wrapper for slides -->
                <?php
                $z = 0;
                while (have_rows('content_slider')): the_row();
                    $img = get_sub_field('img'); ?>

                    <li class="<?php if ($z == 0) {
                        echo 'active';
                    } ?>">
                        <div class="carousel-frame">
                            <img src="<?php echo $img['url']; ?>" alt="<?php echo $img['alt'] ?>"/>
                        </div>
                    </li>
                    <?php
                    $z++;
                endwhile; ?>
            </ul>
        </div>                    
    </section>    

<?php get_footer();
