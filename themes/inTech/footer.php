<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WP_Bootstrap_Starter
 */

?>
<?php if(!is_page_template( 'blank-page.php' ) && !is_page_template( 'blank-page-with-container.php' )): ?>
			</div><!-- .row -->
		</div><!-- .container -->
	</div><!-- #content -->
    <?php get_template_part( 'footer-widget' ); ?>
	<footer id="colophon" class="site-footer <?php echo wp_bootstrap_starter_bg_class(); ?>" role="contentinfo">
		<div class="container pt-3 pb-3">
            <div class="row footer-row">
                <div class="col-xl-auto col-md-12 footer-col">&copy; <?php echo date('Y'); ?> All Rights Reserved.</div> 
                <div class="col-xl col-md-12 footer-col"><?php wp_nav_menu( array( 'theme_location' => 'footer' ) ); ?></div>
                <div class="col-xl-auto col-lg-12 footer-col"><span class="float-right-new"><?php wp_nav_menu( array( 'theme_location' => 'footer-social' ) ); ?></span></div>
                <div class="col-xl-auto col-lg-12 footer-col last-f-c"><span class="float-right-new">Powered by <a href="http://www.intechdynamics.com/" target="_blank"><img src="wp-content/uploads/2018/08/logo-footer.png" class="footer-logo" alt="inTech Dynamics"/></a></span></div>
            </div><!-- close .site-info -->
		</div>
	</footer><!-- #colophon -->
<?php endif; ?>
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>