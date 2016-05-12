<!-- Custom css -->
<?php if ($custom_css) { ?>
<style>
<?php echo $custom_css_content; ?>
</style>
<?php } ?>
<!-- Custom script -->
<?php if ($custom_javascript) { ?>
<script type="text/javascript">
$(document).ready(function() {
<?php echo $custom_javascript_content; ?>
});
</script>
<?php } ?>

<!-- Custom styling -->
<?php if ($custom_style) { ?>
<?php if ($shopme_custom_bg_icon) { ?>
<style>  
body { background-image:url('image/<?php echo $shopme_custom_bg_icon;; ?>');}
</style>
<?php } else {?>
<style>  
body { background-image:url('catalog/view/theme/shopme/image/patterns/<?php echo $shopme_body_image; ?>');}
</style> 
<?php }; ?>

<style>
/* body */
body { background-color:#<?php echo $shopme_body_background; ?>;}
/* top line */
.header_top_line_wrapper, .header3 .header_top_line_wrapper {
	background:#<?php echo $shopme_top_border_background; ?>;
	border-color:#<?php echo $shopme_top_border_border; ?>;
}
.header_top_line, .header_top_line .welcome_message {
	color:#<?php echo $shopme_top_border_text; ?>;
}
.header_top_line .welcome_message a, .header_top_line .mini_menu a {
	color:#<?php echo $shopme_top_border_link; ?>;
}
.header_top_line a:hover {
	color:#<?php echo $shopme_top_border_link_hover; ?>;
}
.menu_wrapper .outer_container, .menu_wrapper .count, .menu_wrapper .wishlist_compare.icons .count {
	background:#<?php echo $shopme_menu_background; ?>;
}
.main_menu > ul > li > a.v_menu_trigger.plain, .main_menu > ul > li.trigger, .menu_wrapper .wishlist_compare.icons .hover_icon, .menu_wrapper .mini_cart, .main_menu > ul.horizontal > li > a, .header4 .main_menu > ul > li > a.v_menu_trigger.plain, .header4 .menu_wrapper .welcome_message.square, .menu_wrapper .welcome_message.square, .menu_table .menu_cell.menu_holder, .menu_table .menu_cell.right, .menu_wrapper .wishlist_compare.icons .hover_icon:last-child, .header3 .main_menu > ul > li > a.v_menu_trigger.plain, .menu_table .menu_cell.search_holder, .menu_wrapper a.mini_menu_trigger, .main_menu ul.visible-xs > li.trigger {
	border-color:#<?php echo $shopme_shortcut_separator; ?>;
}
@media only screen and (min-width: 992px) {.main_menu > ul.horizontal > li:first-child > a {border-color:#<?php echo $shopme_shortcut_separator; ?>;}}
.main_menu > ul.horizontal > li > a, .main_menu > ul > li > a.v_menu_trigger.plain, .menu_wrapper .light_color, .menu_wrapper .count, .menu_wrapper .wishlist_compare.icons .count, .menu_wrapper .mini_cart, .menu_wrapper .mini_cart .total, .menu_wrapper .mini_menu_trigger, .menu_wrapper .welcome_message.square, .menu_wrapper .welcome_message.square a  {
	color:#<?php echo $shopme_menu_link_color; ?>;
}
.menu_wrapper .main_menu > ul > li:hover > a, .menu_wrapper .main_menu > ul.horizontal > li.current > a, .main_menu ul.links_holder li ul li a:hover, .menu_wrapper ul.vertical > li:hover > a, .menu_wrapper .mini_menu_trigger:hover, .menu_wrapper .mini_menu_trigger.active, .menu_wrapper .v_menu_trigger.active, .menu_wrapper #cart:hover .mini_cart.hover_icon, .menu_wrapper #cart:hover .mini_cart.hover_icon .count, .menu_wrapper .icons .hover_icon:hover, .menu_wrapper .wishlist_compare.icons .hover_icon:hover .count {
	background:#<?php echo $shopme_menu_link_background_hover; ?> !important;
}
a:hover, .button:hover, a:focus, a.selected {
	color:#<?php echo $shopme_link_hover_color; ?>;
}
.mini_menu_trigger:hover, .mini_menu_trigger.active, .dark_bg_color, .dark_bg_color_hover:hover, #list_view_icon.active, #list_view_icon:hover, #grid_view_icon.active, #grid_view_icon:hover, .custom.info2 .single:hover .btn, .main_menu > ul > li:hover > a, .main_menu > ul.horizontal > li.current > a, .main_menu .active, .main_menu ul.links_holder li ul li a:hover, ul.vertical > li:hover > a, .nav-tabs > li.active > a, .nav-tabs > li.active:hover > a, .nav-tabs > li:hover > a, .nav-tabs > li.active > a:focus {
	background:#<?php echo $shopme_primary_color; ?>;
} 
.dark_hover:hover, .icons .hover_icon:hover .count, .icons .hover_icon:hover, .button-search:hover, #cart:hover .mini_cart.hover_icon, #cart:hover .mini_cart.hover_icon .count {
	background:#<?php echo $shopme_primary_color; ?> !important;
}
.dark_color, .promo_message span, #list_view_icon, #grid_view_icon, .action.boxed .btn {
	color:#<?php echo $shopme_primary_color; ?>;
}
.light_color {
	color:#<?php echo $shopme_secondary_color; ?>;
}
.light_bg_color, .light_bg_color_hover:hover, .mini_menu ul li ul li a:hover, .mini_menu ul li ul li a.current, .search_wrapper .button-search:not(:hover) {
	background-color:#<?php echo $shopme_secondary_color; ?> !important;
}
.search_wrapper, #search select {
	border-color:#<?php echo $shopme_secondary_color; ?>;
}
.sale_badge {
	background-color:#<?php echo $shopme_salebadge_background; ?>;
}
.price, .price-new {
	color:#<?php echo $shopme_price_color; ?>;
}
.slide_arrow_next:hover, .slide_arrow_prev:hover, .pagination > li.active > span, .pagination > li.active:hover > span, .pagination > li > a:hover {
	background:#<?php echo $shopme_icons_background_hover; ?>;
}
.btn-default {
	background-color: #<?php echo $shopme_button_background; ?>;
	color:#<?php echo $shopme_button_color; ?>;
}
.btn-default:hover, .btn-default:focus, .panel-heading:hover .btn-default { 
	background-color:#<?php echo $shopme_button_hover_background; ?>;
	color:#<?php echo $shopme_button_hover_color; ?>;
}
.btn-primary, .btn-icon.btn-primary { 
	background-color:#<?php echo $shopme_button2_background; ?>;
	color:#<?php echo $shopme_button2_color; ?>;
}
.btn-primary:hover, .btn-primary:focus, .btn.btn-icon.btn-primary:hover, .btn.btn-icon.btn-primary:focus { 
	background-color:#<?php echo $shopme_button2_hover_background; ?>;
	color:#<?php echo $shopme_button2_hover_color; ?>;
}
</style>
<?php } ?>
<!-- Custom fonts -->
<?php if($custom_style_font){ ?>
<style>
body {
<?php echo $shopme_font1_name; ?>
font-weight:<?php echo $shopme_use_font_regular; ?>;
}
b, strong, .price, .price-new, .sale_badge, .promo_message span, .mini_cart, #cart .mini-cart-total tr:last-child td, ul.megamenu li .wrapper .with-submenu, table.list thead td, .btn.btn-lg, .list_countdown .countdown div p, .item.testimonial .author, .item.blog_post h4, .extended_offer .amount, .hasCountdown i, .product-info .hurry, .compare-info.compare tr td:first-child, .compare-info tr td.history, .cart-info thead td, .cart-info tbody .unit_price, .cart-info tbody .price, .cart-total table, .custom .single h4, .custom.info4 .single h4, .custom .call-to-action h4 {
	font-weight:<?php echo $shopme_use_font_bold; ?>;
}
</style>
<?php } else {?>
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Roboto:300,400,700,900" media="screen" />
<?php } ?>