<?php
/**
* Template Name: Home page
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
                                        <form id="category-select" class="category-select" action="<?php echo esc_url( home_url( '/' ) ); ?>" method="get" >
	                        			<div class="navbar-cta row">

    	                        			<input type ='text' name="post_type" id ="field" value="PLEASE SELECT WHAT KIND OF PRODUCTS DO YOU PREFER"/>
    										<div class="dropdown-cta">

    											<button class="btn btn-cta-dpd dropdown-toggle dropdown-toggle-split" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>

    											<div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2">
                                                    
                                                    <ul id="menu-products">
                                                    <?php

                                                    $taxonomy     = 'product_cat';
                                                    $orderby      = 'name';  
                                                    $show_count   = 0;      // 1 for yes, 0 for no
                                                    $pad_counts   = 0;      // 1 for yes, 0 for no
                                                    $hierarchical = 1;      // 1 for yes, 0 for no  
                                                    $title        = '';  
                                                    $empty        = 0;

                                                    $args = array(
                                                         'taxonomy'     => $taxonomy,
                                                         'orderby'      => $orderby,
                                                         'show_count'   => $show_count,
                                                         'pad_counts'   => $pad_counts,
                                                         'hierarchical' => $hierarchical,
                                                         'title_li'     => $title,
                                                         'hide_empty'   => $empty
                                                    );
                                                    $all_categories = get_categories( $args );
                                                    foreach ($all_categories as $cat) {
                                                        if($cat->category_parent == 0) {
                                                            $category_id = $cat->term_id;  
                                                            $category_name = $cat->name;    
                                                            $category_slug = $cat->slug;     
                                                            echo '<li><a href="#" id="'.$category_id.'" seq="'. $category_slug .'"><i class="fa fa-angle-right"></i>'. $cat->name .'</a></li>';
                                                        }       
                                                    }
                                                    ?>  
                                                    </ul>                             
                                                </div>
    										</div>	     
										</div> 
                                        <div class="products-cta container">
                                            <div class="row" id="prod-row">                                                                                           
                                                <?php 

                                                $args = array( 
                                                    'post_type'      => 'product', 
                                                    'posts_per_page' => 6, 
                                                    'product_cat'    => '',
                                                    'orderby'        => 'date'
                                                );

                                                $loop = new WP_Query( $args );
                                                while ( $loop->have_posts() ) : $loop->the_post();
                                                ?> 
                                                                                         
                                                    <div class="col-lg-6 col-md-12 cta-product">
                                                        <?php if (has_post_thumbnail( $loop->post->ID )) echo get_the_post_thumbnail($loop->post->ID, 'shop_catalog'); else echo '<img src="'.woocommerce_placeholder_img_src().'" alt="Placeholder" width="300px" height="300px" />'; ?>
                                                        
                                                        <h4><?php the_title(); ?></h4>
                                                        <input type="checkbox" name="checkbox" id="prod-check" value="test">
                                                        <span class="checkmark"></span>
                                                    </div>
                                                  
                                                <?php endwhile; ?>
                                                <?php wp_reset_query(); ?>
                                            </div>
                                        </div>  
                                        
                                        </form>          			
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
