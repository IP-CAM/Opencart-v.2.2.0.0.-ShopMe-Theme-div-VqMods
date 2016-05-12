<?php if (!empty($title)) { ?>
<h3><?php echo $title; ?></h3>
<?php } ?>
<div class="box products <?php echo $tab_pos; ?> grid<?php echo $column_digit; ?>">

<?php if (count($tabs) <= 1) { ?>
        <?php if (empty($title)) { ?>
        <?php foreach ($tabs as $keyTab => $tab) { ?>
        <h3 class="space-right"><?php echo $tab['title']; ?></h3>
        <?php } ?>
        <?php } ?>
    <?php } else { ?>
    <ul id="tabs-<?php echo $module; ?>" class="nav nav-tabs <?php echo $tab_style; ?> space-right" data-tabs="tabs">
		<?php foreach ($tabs as $keyTab => $tab) { ?>
           	<?php if($keyTab == 0) { ?>
            <li class="active"><a href="#tab<?php echo $module; ?><?php echo $keyTab; ?>" data-toggle="tab"><?php echo $tab['title']; ?></a></li>
            <?php } else { ?>
            <li><a href="#tab<?php echo $module; ?><?php echo $keyTab; ?>" data-toggle="tab"><?php echo $tab['title']; ?></a></li>
            <?php } ?>
    	<?php } ?>
	</ul>
    <?php } ?>
    
<div class="tab-content <?php if (count($tabs) <= 1) { echo 'single'; } ?>">
    <?php foreach ($tabs as $key => $tab) { ?>
    <div class="tab-pane <?php echo (empty($key) ? 'active in' : ''); ?> fade" id="tab<?php echo $module; ?><?php echo $key; ?>">
    <div class="product-grid <?php echo $module; ?> <?php if ($carousel) { echo "carousel"; } else if ($column_digit != 'z' || $column_digit != '1') { echo "eq_height"; } ?>">
        <?php foreach ($tab['products'] as $product) { ?>
        <div class="item">
        <div class="image_wrap">
        <div class="btn-holder top">
                    <!-- wishlist -->
                    <a class="btn btn-icon wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" data-placement="right" title="<?php echo $button_wishlist; ?>"><i class="fa fa-heart"></i></a>
                    <!-- compare -->
                    <a class="btn btn-icon compare" onclick="compare.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_compare; ?>" <?php if ($style == "style-4") { echo 'data-placement="left"'; } ?>><i class="icon-resize-small"></i></a>
                    <!-- quicklook -->
                    <div class="centered">
                    <div class="centered_cell">
                    <?php if ($shopme_text_ql) {?>
                    <a class="btn btn-dark qlook quickview" rel="nofollow" href="<?php echo $product['quickview']; ?>" <?php if ($style == "style-2") { echo 'data-toggle="tooltip"'; } ?> title="<?php echo $shopme_text_ql; ?>"><i class="fa fa-eye"></i><span><?php echo $shopme_text_ql; ?></span></a>
                    <?php } ?>
                    <span class="style-4-break"></span>
                    <!-- add to cart -->
                    <a class="btn btn-primary cart" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"  <?php if ($style == "style-2") { echo 'data-toggle="tooltip" data-placement="left"'; } ?> title="<?php echo $button_cart; ?>"><i class="icon-basket"></i><span><?php echo $button_cart; ?></span></a>
                    </div>
                    </div>
                    </div>
					<div class="image">
        			<?php if ($product['special'] && $shopme_percentage_sale_badge == 'enabled') { ?>
	    			<div class="sale_badge">-<?php echo $product['sales_percantage']; ?>%</div>
	    			<?php } ?>
        			<?php if ($product['thumb_hover'] && $shopme_rollover_effect == 'enabled') { ?>
        			<div class="image_hover"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb_hover']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        			<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
        			<?php } elseif ($product['thumb']) { ?>
        			<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
        			<?php } ?>
        		</div><!-- image ends -->
            </div><!-- image_wrap ends -->
            <div class="details_wrap">
                    <div class="information_wrapper">
                    <?php if (($product['special']) && ($product['special_date_end'] > 0) && ($show_countdown)) { ?>
                    <div class="list_countdown">
                    <div class="countdown <?php echo $product['product_id']; ?>"></div>
                    </div>
                    <script type="text/javascript">
                    $('.<?php echo $product['product_id']; ?>').countdown({
                    until: <?php echo $product['special_date_end']; ?>, 
                    layout: '<div><p>{dn}</p>{dl}</div> <div><p>{hn}</p>{hl}</div> <div><p>{mn}</p>{ml}</div> <div><p>{sn}</p>{sl}</div>'});
                    </script>
                    <?php } ?>
                    <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                    <div class="price_rating_table <?php if ($product['rating']) { echo "hasrating"; } ?>">
                    <?php if ($product['price']) { ?>
                    <div class="price">
                    <?php if (!$product['special']) { ?>
                    <span><?php echo $product['price']; ?></span>
                    <?php } else { ?>
                    <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                    <?php } ?>
                    <?php if (($product['tax']) && ($show_tax == '1')) { ?>
            		<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
            		<?php } ?>
                    </div>
                    <?php } ?>
                    <?php if ($product['rating']) { ?>      
                    <div class="rating">
                    <span class="rating_stars rating r<?php echo $product['rating']; ?>">
                   <i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
                   </span>
                    </div>
                    <?php } ?>
                    </div><!-- price_rating_table -->
                    </div><!-- informtion wrapper ends -->
                    <div class="btn-holder bottom">
                    <!-- add to cart -->
                    <a class="btn btn-primary" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span><?php echo $button_cart; ?></span></a>
                    <!-- wishlist -->
                    <a class="btn btn-icon wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>"><i class="fa fa-heart"></i></a>
                    <!-- compare -->
                    <a class="btn btn-icon compare" onclick="compare.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_compare; ?>"><i class="icon-resize-small"></i></a>
                    <!-- quicklook -->
                    </div>
                    <div class="plain_links">
                    <a class="plain_link wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" ><?php echo $button_wishlist; ?></a>
                    <a class="plain_link compare" onclick="compare.add('<?php echo $product['product_id']; ?>');" ><?php echo $button_compare; ?></a>
                    </div>
            </div><!-- details_wrap ends -->
        </div><!-- item ends -->
        <?php } ?>
    </div>
    </div>
    <?php } ?>
<?php if (!empty($link_title)) { ?>
<div class="bottom_buttons">
<a class="btn btn-default" href="<?php echo $link_href; ?>"><?php echo $link_title; ?></a>
</div>
<?php } ?>
</div>
<div class="clearfix"></div>
</div>
<?php if ($carousel) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
$('.product-grid.<?php echo $module; ?>').owlCarousel({
itemsCustom: [[<?php echo $columns; ?>]],
pagination: false,
<?php if ($column_digit == "1") { ?>
autoHeight: true,
<?php } ?>
navigation:true,
slideSpeed:500,
scrollPerPage:false,
navigationText: [
"<div class='slide_arrow_prev'><i class='fa fa-angle-left'></i></div>",
"<div class='slide_arrow_next'><i class='fa fa-angle-right'></i></div>"
],
afterAction: function(){
       this.$owlItems.removeClass('first');
       this.$owlItems.eq(this.currentItem).addClass('first');
     }
}); 
});
//--></script>
<?php } ?>