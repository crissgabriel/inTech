jQuery( function ( $ ) {
    'use strict';
    // here for each comment reply link of wordpress
    $( '.comment-reply-link' ).addClass( 'btn btn-primary' );

    // here for the submit button of the comment reply form
    $( '#commentsubmit' ).addClass( 'btn btn-primary' );

    // The WordPress Default Widgets
    // Now we'll add some classes for the wordpress default widgets - let's go

    // the search widget
    $( '.widget_search input.search-field' ).addClass( 'form-control' );
    $( '.widget_search input.search-submit' ).addClass( 'btn btn-default' );
    $( '.variations_form .variations .value > select' ).addClass( 'form-control' );
    $( '.widget_rss ul' ).addClass( 'media-list' );

    $( '.widget_meta ul, .widget_recent_entries ul, .widget_archive ul, .widget_categories ul, .widget_nav_menu ul, .widget_pages ul, .widget_product_categories ul' ).addClass( 'nav flex-column' );
    $( '.widget_meta ul li, .widget_recent_entries ul li, .widget_archive ul li, .widget_categories ul li, .widget_nav_menu ul li, .widget_pages ul li, .widget_product_categories ul li' ).addClass( 'nav-item' );
    $( '.widget_meta ul li a, .widget_recent_entries ul li a, .widget_archive ul li a, .widget_categories ul li a, .widget_nav_menu ul li a, .widget_pages ul li a, .widget_product_categories ul li a' ).addClass( 'nav-link' );

    $( '.widget_recent_comments ul#recentcomments' ).css( 'list-style', 'none').css( 'padding-left', '0' );
    $( '.widget_recent_comments ul#recentcomments li' ).css( 'padding', '5px 15px');

    $( 'table#wp-calendar' ).addClass( 'table table-striped');

    // Adding Class to contact form 7 form
    $('.wpcf7-form-control').not(".wpcf7-submit, .wpcf7-acceptance, .wpcf7-file, .wpcf7-radio").addClass('form-control');
    $('.wpcf7-submit').addClass('btn btn-primary');

    // Adding Class to Woocommerce form
    $('.woocommerce-Input--text, .woocommerce-Input--email, .woocommerce-Input--password').addClass('form-control');
    $('.woocommerce-Button.button').addClass('btn btn-primary mt-2').removeClass('button');

    $('ul.dropdown-menu [data-toggle=dropdown]').on('click', function(event) {
        event.preventDefault();
        event.stopPropagation();
        $(this).parent().siblings().removeClass('open');
        $(this).parent().toggleClass('open');
    });

    // Fix woocommerce checkout layout
    $('#customer_details .col-1').addClass('col-12').removeClass('col-1');
    $('#customer_details .col-2').addClass('col-12').removeClass('col-2');
    $('.woocommerce-MyAccount-content .col-1').addClass('col-12').removeClass('col-1');
    $('.woocommerce-MyAccount-content .col-2').addClass('col-12').removeClass('col-2');

    // Add Option to add Fullwidth Section
    function fullWidthSection(){
        var screenWidth = $(window).width();
        if ($('.entry-content').length) {
            var leftoffset = $('.entry-content').offset().left;
        }else{
            var leftoffset = 0;
        }
        $('.full-bleed-section').css({
            'position': 'relative',
            'left': '-'+leftoffset+'px',
            'box-sizing': 'border-box',
            'width': screenWidth,
        });
    }
    fullWidthSection();
    $( window ).resize(function() {
        fullWidthSection();
    });

    // Allow smooth scroll
    $('.page-scroller').on('click', function (e) {
        e.preventDefault();
        var target = this.hash;
        var $target = $(target);
        $('html, body').animate({
            'scrollTop': $target.offset().top
        }, 1000, 'swing');
    });

    // Adding Sticky class to header
    jQuery(document).ready(function(e) {

    var $header = $('.home #masthead');
        $(window).scroll(function () {
            var e = $(this).scrollTop();
            var h = $('#wpadminbar').height();
            var baseurl = window.location.href;

            top;

            if (e > 1)  {
                $header.addClass('sticky');
                $('.home #masthead .navbar').removeClass('navbar-dark');
                $('.home #masthead .navbar').addClass('navbar-light');
                $('.sticky-top').css('top', '0');
            } else {
                $header.removeClass('sticky');
                $('.home #masthead .navbar').removeClass('navbar-light');
                $('.home #masthead .navbar').addClass('navbar-dark');
                $('.sticky-top').css('top', 'initial');
            }
        });

        function getCurrentScroll() {
            return window.pageYOffset || document.documentElement.scrollTop;
        }           

        var slider = $("#home-carousel").lightSlider({
            item: 3,
            slideMove: 1,
            easing: 'cubic-bezier(0.25, 0, 0.25, 1)',
            speed: 1200,
            auto: false,
            loop: true,
            controls: false,
            responsive : [
                {
                    breakpoint:992,
                    settings: {
                        item:2,
                        slideMove:1,
                        slideMargin:6,
                    }
                },
                {
                    breakpoint:640,
                    settings: {
                        item:1,
                        slideMove:1,
                        slideMargin:6,
                    }
                }                                
            ]
        });
        $('.slideControls .slidePrev').click(function() {
            slider.goToPrevSlide();
        });

        $('.slideControls .slideNext').click(function() {
            slider.goToNextSlide();
        });      

        //Get category title and place it into input
        $('#menu-products li a').click(function(){  
            $('#field').val($(this).attr('title'));
            return false;  
        });
        $('#prod-check').click(function(){  
            $(this).toggleClass('checked');
        });     
    });
});
