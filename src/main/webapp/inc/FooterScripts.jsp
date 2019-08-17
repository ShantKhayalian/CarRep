<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 8/17/2019
  Time: 9:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>(function() {function addEventListener(element,event,handler) {
    if(element.addEventListener) {
        element.addEventListener(event,handler, false);
    } else if(element.attachEvent){
        element.attachEvent('on'+event,handler);
    }
}function maybePrefixUrlField() {
    if(this.value.trim() !== '' && this.value.indexOf('http') !== 0) {
        this.value = "http://" + this.value;
    }
}

    var urlFields = document.querySelectorAll('.mc4wp-form input[type="url"]');
    if( urlFields && urlFields.length > 0 ) {
        for( var j=0; j < urlFields.length; j++ ) {
            addEventListener(urlFields[j],'blur',maybePrefixUrlField);
        }
    }/* test if browser supports date fields */
    var testInput = document.createElement('input');
    testInput.setAttribute('type', 'date');
    if( testInput.type !== 'date') {

        /* add placeholder & pattern to all date fields */
        var dateFields = document.querySelectorAll('.mc4wp-form input[type="date"]');
        for(var i=0; i<dateFields.length; i++) {
            if(!dateFields[i].placeholder) {
                dateFields[i].placeholder = 'YYYY-MM-DD';
            }
            if(!dateFields[i].pattern) {
                dateFields[i].pattern = '[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])';
            }
        }
    }

})();</script>	<script type="text/javascript">
    var c = document.body.className;
    c = c.replace(/woocommerce-no-js/, 'woocommerce-js');
    document.body.className = c;
</script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var wpcf7 = {"apiSettings":{"root":"http:\/\/demo.themewinter.com\/wp\/autrics\/wp-json\/contact-form-7\/v1","namespace":"contact-form-7\/v1"},"cached":"1"};
    /* ]]> */
</script>
<script data-minify="1" type='text/javascript' src='<%=request.getContextPath()%>/js/scripts-0c7eb015bcae9e064bd1f0f89c150eb9.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.blockUI.min-2.70.js'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var wc_add_to_cart_params = {"ajax_url":"\/wp\/autrics\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/wp\/autrics\/?wc-ajax=%%endpoint%%","i18n_view_cart":"View cart","cart_url":"http:\/\/demo.themewinter.com\/wp\/autrics\/cart\/","is_cart":"","cart_redirect_after_add":"no"};
    /* ]]> */
</script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/add-to-cart.min-3.6.2.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/js.cookie.min-2.1.4.js'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var woocommerce_params = {"ajax_url":"\/wp\/autrics\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/wp\/autrics\/?wc-ajax=%%endpoint%%"};
    /* ]]> */
</script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/woocommerce.min-3.6.2.js'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var wc_cart_fragments_params = {"ajax_url":"\/wp\/autrics\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/wp\/autrics\/?wc-ajax=%%endpoint%%","cart_hash_key":"wc_cart_hash_bead31f80244b1047206122c16ba04fe","fragment_name":"wc_fragments_bead31f80244b1047206122c16ba04fe","request_timeout":"5000"};
    /* ]]> */
</script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/cart-fragments.min-3.6.2.js'></script>
<script type='text/javascript'>
    jQuery( 'body' ).bind( 'wc_fragments_refreshed', function() {
        jQuery( 'body' ).trigger( 'jetpack-lazy-images-load' );
    } );

</script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/bootstrap.min-1565178511.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/popper.min-1565178511.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery.magnific-popup.min-1565178511.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/owl-carousel.2.3.0.min-1565178511.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/select2.full.min-1565178511.js'></script>
<script data-minify="1" type='text/javascript' src='<%=request.getContextPath()%>/js/script-604da3964c0c3ad981f4d9c90ee8928f.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/wp-embed.min.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/slick.min-1.8.1.js'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var mc4wp_forms_config = [];
    /* ]]> */
</script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/forms-api.min-4.5.0.js'></script>
<!--[if lte IE 9]>
<script type='text/javascript' src='http://demo.themewinter.com/wp/autrics/wp-content/plugins/mailchimp-for-wp/assets/js/third-party/placeholders.min.js?ver=4.5.0'></script>
<![endif]-->
<script type='text/javascript' src='<%=request.getContextPath()%>/js/frontend-modules.min-2.5.14.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/position.min-1.11.4.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/dialog.min-4.7.1.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/waypoints.min-4.0.2.js'></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/swiper.min-4.4.6.js'></script>
<script type='text/javascript'>
    var elementorFrontendConfig = {"environmentMode":{"edit":false,"wpPreview":false},"is_rtl":false,"breakpoints":{"xs":0,"sm":480,"md":768,"lg":1025,"xl":1440,"xxl":1600},"version":"2.5.14","urls":{"assets":"http:\/\/demo.themewinter.com\/wp\/autrics\/wp-content\/plugins\/elementor\/assets\/"},"settings":{"page":[],"general":{"elementor_global_image_lightbox":"yes","elementor_enable_lightbox_in_editor":"yes"}},"post":{"id":35,"title":"Home one","excerpt":""}};
</script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/frontend.min-2.5.14.js'></script>
<script data-minify="1" type='text/javascript' src='<%=request.getContextPath()%>/js/elementor-f0fdc903fdd1ae6bf53d4e86eeaeee01.js'></script>