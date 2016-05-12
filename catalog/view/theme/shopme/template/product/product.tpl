<?php echo $header; ?>
<div class="container">
<ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
   <div class="row">
   
    <?php echo $column_left; ?>
        
   <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-md-9 col-sm-8'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    
<div id="content" class="<?php echo $class; ?> product" itemscope itemtype="http://data-vocabulary.org/Product">
  <?php echo $content_top; ?>
  
  <div class="product-info">
    <?php if ($thumb || $images) { ?>
    <div class="left">
      <?php if ($thumb) { ?>
      <div class="image">
      
      <?php if ($shopme_product_zoom) { ?>
      <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom" style="cursor:move" rel="position:'inside', showTitle: false" id='zoom1'><img itemprop="image" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
      <!-- zoom link-->
      <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" id="zoom-btn" class="colorbox"><i class="fa fa-expand"></i></a>
      <?php } else { ?>
      <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><img itemprop="image" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
      <?php } ?>
      
      <?php if (($shopme_percentage_sale_badge) == 'enabled') { ?>
      <?php if (!$special) { ?>
        <?php } else { ?>
         <div class="sale_badge lg">-<?php echo $sales_percantage_main; ?>%</div>
        <?php } ?>
        <?php } ?>
      </div>
      <?php } ?>
      
      <?php if ($images) { ?>

      <div class="image-additional" style="width:<?php echo $theme_default_image_thumb_width; ?>px; height:<?php echo $theme_default_image_additional_height; ?>px">      
      <ul class="image_carousel">
       <!-- Additional images -->
        <?php foreach ($images as $image) { ?>
        <li>
        <?php if ($shopme_product_zoom) { ?>
        <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery colorbox" rel="useZoom: 'zoom1', smallImage: '<?php echo $image['thumb']; ?>'">
        <?php } else { ?>
        <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox" rel="useZoom: 'zoom1', smallImage: '<?php echo $image['thumb']; ?>'">
        <?php } ?>
        <img src="<?php echo $image['small']; ?>" title="<?php echo $heading_title; ?>" width="<?php echo $theme_default_image_additional_width; ?>" height="<?php echo $theme_default_image_additional_height; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
        <?php } ?>
        
        <!-- Show even the main image among the additional if  -->
         <?php if ($shopme_product_zoom) { ?>
       <li><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery colorbox" rel="useZoom: 'zoom1', smallImage: '<?php echo $thumb; ?>'"><img src="<?php echo $small; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" width="<?php echo $theme_default_image_additional_width; ?>" height="<?php echo $theme_default_image_additional_height; ?>"/></a></li>
        <?php } ?>
        </ul>
        
      </div>
      <?php } ?>

      <?php if ($shopme_product_share == 'image') { ?>
     <!-- AddThis Button START -->
     <div class="share_buttons">
     <div class="addthis_toolbox addthis_default_style addthis_32x32_style">
			<a class="addthis_button_preferred_1"></a>
			<a class="addthis_button_preferred_2"></a>
			<a class="addthis_button_preferred_3"></a>
			<a class="addthis_button_preferred_4"></a>
			<a class="addthis_button_compact"></a>
            <a class="addthis_counter addthis_bubble_style"></a>
			</div>
            </div>
	<!-- AddThis Button END -->
		<?php } ?>
    </div>
    <?php } ?>

   <div class="right" style="margin-<?php if ($direction == 'rtl') { echo 'right'; } else { echo 'left'; } ?>:<?php echo $theme_default_image_thumb_width; ?>px">

    <!-- NextPrevLinks-->
      
      <h1 itemprop="name"><?php echo $heading_title; ?></h1>
      
      <?php if ($review_status) { ?>
      <div class="review">
       <span class="rating_stars rating r<?php echo $rating; ?>">
       <i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
       </span>
        <a class="to_review" onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>
        <a class="to_review" onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a>
        </div>
        
        <?php if ($count_reviews > 0) { ?><!-- Rich snippet start -->
        <div itemprop="review" itemscope itemtype="http://data-vocabulary.org/Review-aggregate"> 
       	<span itemprop="rating" content="<?php echo $rating; ?>"></span><span itemprop="count" content="<?php echo $reviews; ?>"></span>
      	</div> 
        <?php } ?><!-- Rich snippet end -->
        
      <?php } ?>
      
        <div class="description">
        <?php if ($manufacturer) { ?>
        <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
        <?php } ?>    

        <span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
        
        <?php if ($reward) { ?>
        <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
        <?php } ?>
        
        <span itemprop="availability" content="<?php if ($data_qty > 0) {echo "in_stock"; } else {echo "out_of_stock"; } ?>"><?php echo $text_stock; ?></span> <span class="<?php if ($data_qty > 0) {echo "in_stock"; } ?>"><?php echo $stock; ?></span>
        
        </div> <!-- .description ends -->
        
        <?php if (($meta_desc) && ($shopme_product_meta)) { ?>
        <div class="short_description">
        <p><?php echo $meta_desc; ?></p>
        </div>
        <?php } ?>
        
        <?php if ($price) { ?>
        
        <div itemprop="offerDetails" itemscope itemtype="http://data-vocabulary.org/Offer"><!-- Rich snippets start -->
        
        <div class="offer_wrapper">
        <?php if (($special) && ($shopme_product_yousave)) { ?>
        <div class="extended_offer">
        <div class="price-new"><?php echo $text_special_price; ?><span class="amount" itemprop="price"><?php echo $special; ?></span></div>
        <div class="price-old"><?php echo $text_old_price; ?><span class="amount"><?php echo $price; ?></span></div>
        <div class="price-save"><?php echo $text_you_save; ?><span class="amount"><?php echo $yousave; ?></span> </div>
        </div>
        <?php } ?>
        <?php if (($special_date_end) && ($shopme_product_countdown)) { ?>
        <div class="offer"></div>
        <?php if ($shopme_product_hurry) { ?>
        <div class="hurry">
        <span class="items_left"><?php echo $text_stock_quantity; ?></span>
        <span class="items_sold"><?php echo $text_items_sold; ?></span>
        </div>
        <?php } ?>
        <?php } ?>
        
        
        <?php if (!$special) { ?>
        <div class="price">
        <span itemprop="price"><?php echo $price; ?></span>
        </div>
        <?php } else { ?>
        <?php if (!$shopme_product_yousave) { ?>
        <div class="price">
        <span class="price-old"><?php echo $price; ?></span> <span class="price-new" itemprop="price"><?php echo $special; ?></span>
        </div>
        <?php } ?>
        <?php } ?>
        
        <?php if (($tax) && ($shopme_tax)) { ?>
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span>
        <?php } ?>

        <meta itemprop="Currency" content="<?php echo $currency_code; ?>" />
        </div> 
        <?php } ?>
        
        

       <div id="product">
       
       <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
      <?php } ?>
       
      <?php if ($options) { ?>
      <div class="options">
      
        <?php foreach ($options as $option) { ?>
                
        <?php if ($option['type'] == 'select') { ?>
        
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="holder">
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
              </div>
            </div>
            <?php } ?>
        
        <?php if ($option['type'] == 'radio') { ?>
        
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div class="holder">
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
              </div>
            </div>
           
            <?php } ?>
        
        <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div class="holder">
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
               <label>
             <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
               <?php echo $option_value['name']; ?>
               <?php if ($option_value['price']) { ?>
               (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
               <?php } ?>
               </label>
                </div>
                <?php } ?>
                </div>
              </div>
            </div>
            <?php } ?>
		
        
            
         <?php if ($option['type'] == 'image') { ?>
         
         <?php if ($shopme_image_options == 'thumbs') { ?>
         
         <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?> clean_thumbs">
         <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
         <div class="holder">
         <div id="input-option<?php echo $option['product_option_id']; ?>" class="clean-option-image">
            
            <?php foreach ($option['product_option_value'] as $option_value) { ?>
              <div class="single-option main_font" <?php if ($option_value['price']) { ?> data-toggle="tooltip" title="<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>"<?php } ?>>
              <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name']; ?>" /></label>
                </div>
            <?php } ?>
            
          </div>
          </div>
          </div>
         
         <?php } else { ?>
            
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div class="holder">
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
              </div>
            </div>
            </div>
            <?php } ?>
            <?php } ?>
        
        <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="holder">
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
              </div>
            </div>
            <?php } ?>
            
        <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="holder">
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label><br />
              <div class="holder">
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
              </div>
            </div>
            <?php } ?>
        <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="holder">
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-primary" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            </div>
            <?php } ?>
        <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="holder">
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-primary"><i class="fa fa-calendar"></i></button>
                </span></div>
                </div>
            </div>
            <?php } ?>
         <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="holder">
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-primary"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            </div>
            <?php } ?>
        <?php } ?>
      </div> <!-- .options ends -->
      <?php } ?> 
      
      <div class="options">
      <div class="form-group">
      <label class="control-label"><?php echo $entry_qty; ?></label>
      <div class="holder">
      <a class="quantity_button minus arrow_icon">-</a><input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="quantity" /><a class="quantity_button plus arrow_icon">+</a>
      </div>
      </div>
      </div>
      
      <div class="cart">
         
      
        
      </div> <!-- rich snippet ends -->
          
         
          
    <div class="btn-holder">
    <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
    <button type="submit" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_cart; ?></button>
    <a class="btn btn-icon" onclick="wishlist.add('<?php echo $product_id; ?>');" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>"><i class="fa fa-heart"></i></a>
    <a class="btn btn-icon" onclick="compare.add('<?php echo $product_id; ?>');" data-toggle="tooltip" title="<?php echo $button_compare; ?>"><i class="icon-resize-small"></i></a>
    </div>    
        
       </div> <!-- Cart ends -->
        <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
        <?php if ($price) { ?>
      	<?php if ($points) { ?>
        <div class="reward"><?php echo $text_points; ?> <?php echo $points; ?></div>
        <?php } ?>
       <?php if ($discounts) { ?>
        <div class="discount">
          <?php foreach ($discounts as $discount) { ?>
          <span><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php } ?>
     </div>
     
     
         
     <div class="share">
     <?php if ($shopme_product_share == 'content') { ?>
     <!-- AddThis Button START -->
     <div class="share_buttons">
     <div class="addthis_toolbox addthis_default_style addthis_32x32_style">
			<a class="addthis_button_preferred_1"></a>
			<a class="addthis_button_preferred_2"></a>
			<a class="addthis_button_preferred_3"></a>
			<a class="addthis_button_preferred_4"></a>
			<a class="addthis_button_compact"></a>
            <a class="addthis_counter addthis_bubble_style"></a>
			</div>
            </div>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js"></script>
<!-- AddThis Button END -->
		<?php } ?>
        
       </div> <!-- .share ends -->
       
    </div> <!-- product-info-right END -->
    
    </div> <!-- product-info END -->
  
    <?php echo $in_content; ?>
   
  <ul class="nav nav-tabs md">
  
	<li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
                
    <?php if ($attribute_groups) { ?>
    <li><a href="#tab-specification" data-toggle="tab"><?php
     echo $tab_attribute;

      ?></a></li>
    <?php } ?>
   
    <?php if ($review_status) { ?>
    <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
    <?php } ?>
    
    
    <?php if ($product_tabs_5) { ?>
	<?php foreach($product_tabs_5 as $product_tab_5) { ?>
	<li><a href="#tab-product-tab<?php echo $product_tab_5['tab_id'];?>" data-toggle="tab"><?php echo $product_tab_5['name']; ?></a></li>
	<?php } ?>
	<?php } ?>
    

  </ul>
  
  <div class="tab-content">
  
  <div class="tab-pane fade active in" id="tab-description"><?php echo $description; ?>
  <?php if ($tags) { ?>
  <div class="tagcloud">
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <!-- --><a class="btn btn-default btn-tag" href="<?php echo (str_replace(' ', '%20', $tags[$i]['href'])) ?>"><?php echo $tags[$i]['tag']; ?></a><!-- -->
    <?php } ?>
  </div>
  <?php } ?>
  </div>
  
  <?php if ($attribute_groups) { ?>
  <div class="tab-pane fade" id="tab-specification">
    <table class="attribute">
      <?php foreach ($attribute_groups as $attribute_group) { ?>
      <thead>
        <tr>
      
        </tr>
      </thead>
      <tbody>
        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        <tr>
         
          <td><?php echo $attribute['text']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
      <?php } ?>
    </table>
  </div>
  <?php } ?>
  
  <?php if ($review_status) { ?>
  <div class="tab-pane fade" id="tab-review">
    <form id="form-review" class="form-horizontal">
    <div id="review"></div>
    <div class="write_review">
    <h2 id="review-title"><?php echo $text_write; ?></h2>
    <?php if ($review_guest) { ?>
   
   <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                  </div>
                </div>
    
    <div class="form-group required">
    <div class="col-sm-12">
    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
    <textarea name="text" id="input-review" rows="8" style="width: 100%;"></textarea>
    <small><?php echo $text_note; ?></small>
    </div>
    </div>
    
    <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <span class="main_font"><?php echo $entry_bad; ?></span>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<span class="main_font"><?php echo $entry_good; ?></span>
                    </div>
                </div>
         
                <?php if ((float)VERSION >= 2.1) { ?>
                <?php echo $captcha; ?>
                <?php } else { ?>
                
                <div class="form-group">
                <div class="col-sm-12">
                <?php if ($site_key) { ?>
                <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                <?php } ?>
                </div>
                </div>
                
                <?php } ?>
                
                <div class="form-group">
                <div class="col-sm-12 text-right"><a id="button-review" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
                </div>
                
                </div>
                
                
                <?php } else { ?>
                <div class="alert alert-info main_font"><?php echo $text_login; ?></div>
                </div>
                <?php } ?>
                </form>
                </div>
                <?php } ?>

  <?php if ($product_tabs_5) { ?>
	<?php foreach($product_tabs_5 as $product_tab_5) { ?>
    <div class="tab-pane fade" id="tab-product-tab<?php echo $product_tab_5['tab_id'];?>">
	<?php echo $product_tab_5['text']; ?>
    </div>
	<?php } ?>
  <?php } ?>
  
  </div>

  	<?php if ($products) { ?>
    <h3><?php echo $text_related; ?></h3>
   <div class="bordered_content box">
  <div class="product-grid eq_height related carousel <?php echo $shopme_grid_related; ?>">
    <?php foreach ($products as $product) { ?>
    <div class="item">
    <div class="left">
        <div class="image_wrap">
        <div class="btn-holder top">
            <!-- wishlist -->
            <a class="btn btn-icon wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" data-placement="right" title="<?php echo $button_wishlist; ?>"><i class="fa fa-heart"></i></a>
            <!-- compare -->
            <a class="btn btn-icon compare" onclick="compare.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_compare; ?>" <?php if ($shopme_default_product_style == "style-4") { echo 'data-placement="left"'; } ?>><i class="icon-resize-small"></i></a>
            <!-- quicklook -->
            <div class="centered">
            <div class="centered_cell">
            <?php if ($shopme_text_ql) {?>
            <a class="btn btn-dark qlook quickview" rel="nofollow" href="<?php echo $product['quickview']; ?>" 
            <?php if ($shopme_default_product_style == "style-2") { echo 'data-toggle="tooltip"'; } ?> title="<?php echo $shopme_text_ql; ?>"><i class="fa fa-eye"></i><span><?php echo $shopme_text_ql; ?></span></a>
            <?php } ?>
            <span class="style-4-break"></span>
            <!-- add to cart -->
            <a class="btn btn-primary cart" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" <?php if ($shopme_default_product_style == "style-2") { echo 'data-toggle="tooltip" data-placement="left"'; } ?> title="<?php echo $button_cart; ?>"><i class="icon-basket"></i><span><?php echo $button_cart; ?></span></a>
            </div>
            </div>
            </div>
            <div class="image">
            <?php if ($product['special'] && ($shopme_default_product_style == 'enabled')) { ?>
            <div class="sale_badge">-<?php echo $product['sales_percantage']; ?>%</div>
            <?php } ?>
            <?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
            <?php } ?>
            </div><!-- image ends -->
            </div><!-- image_wrap ends -->
           </div><!-- left ends -->
            <div class="details_wrap">
            <div class="information_wrapper">
            <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
            <div class="price_rating_table <?php if ($product['rating']) { echo "hasrating"; } ?>">
            <?php if ($product['price']) { ?>
            <div class="price">
            <?php if (!$product['special']) { ?>
            <span><?php echo $product['price']; ?></span>
            <?php } else { ?>
            <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
            <?php } ?>
            <?php if (($product['tax']) && ($shopme_tax == '1')) { ?>
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
  </div> <!-- .bordered_content ends -->
  <?php } ?>
 
  
  
  <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?></div>

<script type="text/javascript" src="catalog/view/theme/shopme/js/cloud-zoom.1.0.2.min.js"></script>

<script type="text/javascript"><!--
$(document).ready(function() {
   $('.colorbox').colorbox({
      overlayClose: true,
	  maxWidth:'95%',
	  rel:'gallery',
      opacity: 0.5
}); 
});
//--></script>
<script type="text/javascript">
        jQuery(function($) {
			//Product thumbnails
			$(".cloud-zoom-gallery").last().removeClass("cboxElement");
			$(".cloud-zoom-gallery").click(function() {
				$("#zoom-btn").attr('href', $(this).attr('href'));
				$("#zoom-btn").attr('title', $(this).attr('title'));
			
						$(".cloud-zoom-gallery").each(function() {
						$(this).addClass("cboxElement");
					});
					$(this).removeClass("cboxElement");
				});
        });
</script>

<script type="text/javascript">
var widest = 0;
$(".options .control-label").each(function () { widest = Math.max(widest, $(this).outerWidth()); }).css({"min-width": widest});
</script>


<script type="text/javascript">
$(document).ready(function() {
var owlAdditionals = $('.image_carousel');
var wrapperWidth = $(".image-additional").width();
var itemWidth = (<?php echo $theme_default_image_additional_width; ?> + 6);
var itemcalc = Math.round(wrapperWidth / itemWidth);
owlAdditionals.owlCarousel({
items : itemcalc,
mouseDrag: true,
responsive:false,
pagination: false,
navigation:true,
slideSpeed:200,
navigationText: [
"<div class='slide_arrow_prev add_img'><i class='fa fa-angle-left'></i></div>",
"<div class='slide_arrow_next add_img'><i class='fa fa-angle-right'></i></div>"
]
});
});
</script>
<script type="text/javascript">
$(document).ready(function() {
$(".product-grid.related.carousel .item").last().addClass('last');
var grid5 = 5;
var grid4 = 4;
var grid3 = 3;
var owlRelated = $('.product-grid.related.carousel');
owlRelated.owlCarousel({
<?php if ($column_left || $column_right) { ?>
itemsCustom: [[0, 1], [400, 2], [600, 3], [768, 2], [992, 3], [1025, <?php echo $shopme_grid_related; ?>]],
<?php } else { ?>
itemsCustom: [ [0, 1], [350, 2], [550, 3], [1025, <?php echo $shopme_grid_related; ?>]],
<?php } ?>
pagination: false,
navigation:true,
slideSpeed:500,
scrollPerPage:false,
navigationText: [
"<div class='slide_arrow_prev'><i class='fa fa-angle-left'></i></div>",
"<div class='slide_arrow_next'><i class='fa fa-angle-right'></i></div>"],
afterAction: function(){
       this.$owlItems.removeClass('first');
       this.$owlItems.eq(this.currentItem).addClass('first');
     }
}); 
});
</script>
<script type="text/javascript">
$('.quantity_button.plus').on('click', function(){
        var oldVal = $('input.quantity').val();
        var newVal = (parseInt($('input.quantity').val(),10) +1);
      $('input.quantity').val(newVal);
    });

    $('.quantity_button.minus').on('click', function(){
        var oldVal = $('input.quantity').val();
        if (oldVal > 1)
        {
            var newVal = (parseInt($('input.quantity').val(),10) -1);
        }
        else
        {
            newVal = 1;
        }
        $('input.quantity').val(newVal);
    });
</script>
<?php if ($special_date_end > 0) { ?>
<script type="text/javascript">
	$('.offer').countdown({
		until: <?php echo $special_date_end ?>, 
		layout: '{desc}<i>{dn}</i> {dl} <i>{hn}</i> {hl} <i>{mn}</i> {ml} <i>{sn}</i> {sl}',
		description: '<span><?php echo $text_expire ?></span>&nbsp;'
		});
</script>
<?php } ?>
<script type="text/javascript">
$(".to_review").click(function() {
    $('html, body').animate({
        scrollTop: $(".nav.nav-tabs.md").offset().top
    }, 1000);
});
</script>

<!-- Default scrips below -->    
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			
			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));
						
						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}
				
				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}
				
				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}
			
			if (json['success']) {
					
					$.colorbox({
					html:'<div class="cart_notification"><div class="product"><img src="' + json['image'] + '"/><span>' + json['success'] + '</span></div><div class="bottom"><a class="btn btn-default" href="' + json['link_cart'] + '">' + json['text_cart'] + '</a> ' + '<a class="btn btn-primary" href="' + json['link_checkout'] + '">' + json['text_checkout'] + '</a></div></div>',
					className: "login",
					initialHeight:50,
					initialWidth:50,
					width:"90%",
					maxWidth:400,
					height:"90%",
					maxHeight:200
					});
					$('#cart').load('index.php?route=common/cart/info #cart > *');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;
	
	$('#form-upload').remove();
	
	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');
	
	$('#form-upload input[name=\'file\']').trigger('click');
	
	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}
	
	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);
			
			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();
					
					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}
					
					if (json['success']) {
						alert(json['success']);
						
						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script> 
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});
//--></script>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js"></script>
</div>
<?php echo $footer; ?>