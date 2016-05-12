<?php $config = $this->registry->get('config'); ?>
 <h3 class="todays_deals"><?php echo $heading_title; ?></h3>
  <div class="bordered_content box deals_module">
  <div class="deals_module_wrapper">
   <?php foreach ($products as $product) { ?> 
     <div class="product-info">
        <?php if ($product['thumb']) { ?>
        <div class="left">
        <div class="image" style="width:<?php echo $images_width; ?>px;">
        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
        <?php if ($product['special'] && ($config->get('shopme_percentage_sale_badge') == 'enabled')) { ?>
        <div class="sale_badge lg">-<?php echo $product['sales_percantage']; ?>%</div>
        <?php } ?>
        <?php if (($product['special_date_end'] > 0) && ($shopme_product_countdown)) { ?>
        <div class="list_countdown">
        <div class="countdown <?php echo $product['product_id']; ?>"></div>
        </div>
        <script type="text/javascript">
		$('.countdown.<?php echo $product['product_id']; ?>').countdown({
		until: <?php echo $product['special_date_end']; ?>, 
		layout: '<div><p>{dn}</p>{dl}</div> <div><p>{hn}</p>{hl}</div> <div><p>{mn}</p>{ml}</div> <div><p>{sn}</p>{sl}</div>'});
		</script>
		<?php } ?>
        </div>
      	</div>
        <?php } ?>
        <div class="right" style="margin-left:<?php echo $images_width; ?>px">
        <h2><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
		<?php if ($review_status) { ?>
        <div class="review">
        <span class="rating_stars rating r<?php echo $product['rating']; ?>">
        <i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
        </span>
        <a href="<?php echo $product['href']; ?>"><?php echo $product['reviews']; ?></a>
        <a href="<?php echo $product['href']; ?>"><?php echo $text_write; ?></a>
        </div>
		<?php } ?>
        <div class="description">
        <?php if ($product['manufacturer']) { ?>
        <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $product['manufacturers']; ?>"><?php echo $product['manufacturer']; ?></a><br />
        <?php } ?>    
        <span><?php echo $text_model; ?></span> <?php echo $product['model']; ?><br />
        <span><?php echo $text_stock; ?></span> <span <?php if ($product['qty'] > 0) {echo 'class="in_stock"'; } ?>><?php echo $stock; ?></span>
        </div> <!-- .description ends -->
        <div class="short_description">
        <p><?php echo $product['description']; ?></p>
        </div>
        <?php if ($product['price']) { ?>
      <?php if ($shopme_product_yousave && ($product['special'])) { ?> 
        <div class="extended_offer">
        <?php if ($product['special']) { ?>
        <div class="price-new"><?php echo $text_special_price; ?><span class="amount"><?php echo $product['special']; ?></span></div>
        <div class="price-old"><?php echo $text_old_price; ?><span class="amount"><?php echo $product['price']; ?></span></div>
        <div class="price-save"><?php echo $text_you_save; ?><span class="amount"><?php echo $product['yousave']; ?></span> </div>
        <?php } else { ?>
        <div class="price-regular"><span class="amount price"><?php echo $product['price']; ?></span></div>
        <?php } ?>
        </div>        
        <?php if (($product['special_date_end'] > 0) && ($shopme_product_countdown) && ($shopme_product_hurry)) { ?>
        <div class="hurry">
        <span class="items_left"><?php echo $product['stock_quantity']; ?></span>
        <span class="items_sold"><?php echo $product['items_sold']; ?></span>
        </div>
        <?php } ?>
      <?php } else { ?>
        <?php if (!$product['special']) { ?>
        <div class="price">
        <span><?php echo $product['price']; ?></span>
        </div>
        <?php } else { ?>
        <div class="price">
        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
        </div>
      <?php } ?>
        <?php } ?>
        <?php } ?> <!-- if price ends -->
        <div class="btn-holder">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" class="btn btn-primary"><?php echo $button_cart; ?></button>
        <a class="btn btn-icon" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>"><i class="fa fa-heart"></i></a>
        <a class="btn btn-icon" onclick="compare.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_compare; ?>"><i class="icon-resize-small"></i></a>
        </div> 
        </div>
      </div> 
<?php } ?>
</div>
<div class="bottom_buttons">
<a class="btn btn-default" href="<?php echo $button_view_all_href; ?>"><?php echo $button_view_all; ?></a>
</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
$('.deals_module_wrapper').owlCarousel({
singleItem : true,
pagination: false,
navigation:true,
autoPlay:<?php echo $autoplay; ?>,
stopOnHover:true,
autoHeight:true,
transitionStyle:"backSlide",
navigationText: [
"<div class='slide_arrow_prev'><i class='fa fa-angle-left'></i></div>",
"<div class='slide_arrow_next'><i class='fa fa-angle-right'></i></div>"
]
});
});
</script> 