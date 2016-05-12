<?php echo $header; ?><?php echo $column_left; ?>
<?php 
(!isset($shopme_brands_image_w)) ? $shopme_brands_image_w = 240 : '';
(!isset($shopme_brands_image_h)) ? $shopme_brands_image_h = 115 : '';
(!isset($shopme_menu_mega_second_image_h)) ? $shopme_menu_mega_second_image_h = 100 : '';
(!isset($shopme_refine_image_w)) ? $shopme_refine_image_w = 190 : '';
(!isset($shopme_refine_image_h)) ? $shopme_refine_image_h = 190 : '';
?>
<div id="content">


  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
      <a class="btn btn-success" onclick="$('#save').val('stay');$('#form-shopme').submit();"><i class="fa fa-check"></i> <?php echo $button_save_stay; ?></a>
	<button type="submit" form="form-shopme" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
	<a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
    </div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  
  <div class="container-fluid">
  <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    
  <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> Shopme Theme v 1.7</h3>
      </div>
    
   <div class="panel-body">
   <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-shopme">
   <input type="hidden" name="save" id="save" value="0">
      <ul class="nav nav-tabs main">
      <li class="active"><a href="#tab-general" data-toggle="tab"><i class="fa fa-cog"></i> <?php echo $text_tab_general;?></a></li>
      <li><a href="#tab-design" data-toggle="tab"><i class="fa fa-pencil"></i> <?php echo $text_tab_design;?></a></li>
      <li><a href="#tab-custom-css" data-toggle="tab"><i class="fa fa-code"></i> <?php echo $text_tab_custom_css;?></a></li>
      </ul>
       
      <div class="tab-content"> 
    <div id="tab-general" class="tab-pane active">
    
    
    

    
    
    <div class="row">
    
    <div class="col-sm-2 tabs-left">
    <ul class="nav nav-tabs nav-stacked">
    <li class="active"><a href="#tab-layout" data-toggle="tab">Layout</a></li>
    <li><a href="#tab-header" data-toggle="tab">Header</a></li>
    <li><a href="#tab-product-page" data-toggle="tab">Product page</a></li>
    <li><a href="#tab-category-page" data-toggle="tab">Category page</a></li>
    <li><a href="#tab-brands-page" data-toggle="tab">Brands list page</a></li>
    <li><a href="#tab-contact-page" data-toggle="tab">Contact page</a></li>
    <li><a href="#tab-product-listings" data-toggle="tab">Product listings</a></li>
    <li><a href="#tab-side-widgets" data-toggle="tab">Side widgets</a></li>
    <li><a href="#tab-footer" data-toggle="tab">Footer</a></li>
    <li><a href="#tab-cookie" data-toggle="tab">Cookie bar</a></li>
    <li><a href="#tab-explorer" data-toggle="tab">Internet Explorer warning</a></li>
    </ul> <!-- vtabs ends -->
    </div>
    
    <div class="col-sm-10">
    <div class="tab-content">
    <div id="tab-layout" class="tab-pane active"> <!-- Tab layout start -->
    

    <h3><?php echo $text_heading_layout;?></h3><hr />
    
    <div class="row">
    
    
    <div class="col-sm-12 form-group">
	<label class="control-label">
    Embed retina support *</label>
	<select name="shopme_use_retina" class="form-control">
	<?php foreach($shopme_use_retina_list as $key=>$shopme_use_retina_list) { ?>
	<option value="<?php echo $key;?>" <?php if($shopme_use_retina==$key) { echo " selected"; }?> ><?php echo $shopme_use_retina_list;?></option>
	<?php } ?>
	</select>
	<span class="help-block">* Retina support will look for retina versions of images for visitors using a high resolution screen. To upload an extra image for retina users, upload the image twice as big, and add "@2x" to the image name. For example, if your logo is logo.png, you should upload the retina version in the same folder, named as logo@2x.png. Please note that when opencart resizes images, it wont create double sets for retina, so you need to upload these manually.</span>
	</div>
   
    </div> <!-- row ends -->
    
    </div> <!-- Tab layout ends -->
    
    
    
    <div id="tab-header" class="tab-pane"> <!-- Tab header start -->
    <h3>Header settings</h3><hr />
    
    <div class="row">
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Header style</label>
	<select name="shopme_header_style" class="form-control">
      <?php foreach($shopme_header_style_list as $key=>$shopme_header_style_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_header_style==$key) { echo " selected"; }?> ><?php echo $shopme_header_style_list;?></option>
      <?php } ?>
      </select>
	</div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Show header login</label>
	<select name="shopme_header_login" class="form-control">
      <?php foreach($shopme_header_login_list as $key=>$shopme_header_login_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_header_login==$key) { echo " selected"; }?> ><?php echo $shopme_header_login_list;?></option>
      <?php } ?>
      </select>
	</div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Show header wishlist</label>
	<select name="shopme_header_wishlist" class="form-control">
	<?php foreach($shopme_header_wishlist_list as $key=>$shopme_header_wishlist_list) { ?>
<option value="<?php echo $key;?>" <?php if($shopme_header_wishlist==$key) { echo " selected"; }?> ><?php echo $shopme_header_wishlist_list;?></option>
	<?php } ?>
	</select>
	</div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Show header compare</label>
	<select name="shopme_header_compare" class="form-control">
	<?php foreach($shopme_header_compare_list as $key=>$shopme_header_compare_list) { ?>
	<option value="<?php echo $key;?>" <?php if($shopme_header_compare==$key) { echo " selected"; }?> ><?php echo $shopme_header_compare_list;?></option>
	<?php } ?>
	</select>
	</div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Show header search</label>
	<select name="shopme_header_search" class="form-control">
	<?php foreach($shopme_header_search_list as $key=>$shopme_header_search_list) { ?>
	<option value="<?php echo $key;?>" <?php if($shopme_header_search==$key) { echo " selected"; }?> ><?php echo $shopme_header_search_list;?></option>
	<?php } ?>
	</select>
	</div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Show header cart</label>
	<select name="shopme_header_cart" class="form-control">
      <?php foreach($shopme_header_cart_list as $key=>$shopme_header_cart_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_header_cart==$key) { echo " selected"; }?> ><?php echo $shopme_header_cart_list;?></option>
      <?php } ?>
      </select>
	</div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Main menu type</label>
	<select name="shopme_menu_type" class="form-control">
      <?php foreach($shopme_menu_type_list as $key=>$shopme_menu_type_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_menu_type==$key) { echo " selected"; }?> ><?php echo $shopme_menu_type_list;?></option>
      <?php } ?>
      </select>
	</div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Use sticky menu</label>
	<select name="shopme_menu_sticky" class="form-control">
      <?php foreach($shopme_menu_sticky_list as $key=>$shopme_menu_sticky_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_menu_sticky==$key) { echo " selected"; }?> ><?php echo $shopme_menu_sticky_list;?></option>
      <?php } ?>
      </select>
      <span class="help-block">* If sticky menu is enabled, the menu stays on top of screen when scrolling down. If you use a header without menu, the header will stick on top</span>
	</div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Header promo message</label>
    <?php foreach ($languages as $language) { ?>
    <div class="input-group"><span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
   	<input type="text" class="form-control" value="<?php echo isset($shopme_top_promo_message[$language['language_id']]) ? $shopme_top_promo_message[$language['language_id']] : ''; ?>" name="shopme_top_promo_message[<?php echo $language['language_id']; ?>]" />
    </div>
	<?php } ?>
    </div>
    <div class="col-sm-12">
    <br />
    <h3>Static Menu Management</h3><hr />
    <span style="display:block;margin:-10px 0 15px">*The static menu is the menu in header which not holds the product categories</span>
    <table id="sections" class="table table-bordered menu_manager">
            <thead>
              <tr>
                <td class="text-left" width="50%">Text</td>
                <td class="text-left" width="50%">Href</td>
                <td class="text-left" width="1">Actions</td>
              </tr>
            </thead>

            <?php $section_row = 1; ?>
            <?php foreach ($sections as $section) { ?>
            <tbody id="tab-section-<?php echo $section_row; ?>" class="group">
            <tr>
            <td class="text-left">
            <?php foreach ($languages as $language) { ?>
            <div class="input-group">
            <span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
            <input type="text" class="form-control" name="shopme_sections[<?php echo $section_row; ?>][title][<?php echo $language['language_id']; ?>]" 
            value="<?php echo isset($section['title'][$language['language_id']]) ? $section['title'][$language['language_id']] : ''; ?>" />
            </div>
            <?php } ?>
            </td>
                
            <td class="text-left">
            <input type="text" class="form-control" name="shopme_sections[<?php echo $section_row; ?>][href]" value="<?php echo isset($section['href']) ? $section['href'] : ''; ?>" />
            </td>
                
            <td>
            <a class="btn btn-danger" data-toggle="tooltip" data-original-title="<?php echo $button_remove; ?>" onclick="$('#tab-section-<?php echo $section_row; ?>').remove();"><i class="fa fa-trash"></i></a>
            <button type="button" class="btn btn-info" data-toggle="tooltip" data-original-title="<?php echo $button_add_group; ?>" onclick="addGroup(<?php echo $section_row; ?>);"><i class="fa fa-level-down"></i></button>
            </td>
                
			</tr>
            
            <div id="groups-<?php echo $section_row; ?>">
            <?php $group_row = 0; ?>
            <?php if (isset($section['groups'])) { ?>
          	<?php foreach($section['groups'] as $group){ ?>
            <tr id="group-row-<?php echo $section_row; ?>-<?php echo $group_row; ?>" class="group">
            <td class="text-left">
            <span style="position:absolute;font-size:20px;margin-left:8px;">&#8627;</span>
            <?php foreach ($languages as $language) { ?>
              <div class="input-group sub">
              <span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
              <input class="form-control" name="shopme_sections[<?php echo $section_row; ?>][groups][<?php echo $group_row; ?>][title][<?php echo $language['language_id']; ?>]" id="title-<?php echo $section_row; ?>-<?php echo $group_row; ?>-<?php echo $language['language_id']; ?>" value="<?php echo isset($section['groups'][$group_row]['title'][$language['language_id']]) ? $section['groups'][$group_row]['title'][$language['language_id']] : ''; ?>" size="50" />
              </div>
              <?php } ?>
            </td>
                
            <td>
            <input class="form-control" name="shopme_sections[<?php echo $section_row; ?>][groups][<?php echo $group_row; ?>][href]" id="title-<?php echo $section_row; ?>-<?php echo $group_row; ?>" value="<?php echo isset($section['groups'][$group_row]['href']) ? $section['groups'][$group_row]['href'] : ''; ?>" />
            </td>
                
            <td>
            <a class="btn btn-danger" onclick="removeGroup(<?php echo $section_row; ?>, <?php echo $group_row; ?>);" data-toggle="tooltip" data-original-title="<?php echo $button_remove; ?>"Remove><i class="fa fa-trash"></i></a>
            </td>
            
            </tr>
            </div>
            
            <?php $group_row++; ?>
            <?php } ?> <!-- foreach groups ends -->
            </tbody>
            <?php } ?>
            <div id="group-holder-<?php echo $section_row; ?>"></div>

            <?php $section_row++; ?>
			<?php } ?> <!-- foreach sections ends -->
            <tfoot id="section_add">
              <tr>
                <td colspan="2"></td>
                <td class="text-right">
                <a class="btn btn-info" onclick="addSection();"><?php echo $text_add_section; ?></a>
                </td>
              </tr>
            </tfoot>
          </table>
          </div>
    
    </div> <!-- row ends -->
    </div> <!-- tab header ends -->
    
    
    
    <div id="tab-product-page" class="tab-pane"> <!-- Tab product page start -->
    <h3><?php echo $text_heading_product_page;?></h3><hr />
    
    <div class="row">
    
    <div class="col-sm-12 form-group">
	<label class="control-label">addThis share buttons</label>
    <select name="shopme_product_share" class="form-control">
     <?php foreach($shopme_product_share_list as $key=>$shopme_product_share_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_product_share==$key) { echo " selected"; }?> ><?php echo $shopme_product_share_list;?></option>
      <?php } ?>
      </select>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Show meta description</label>
	<select name="shopme_product_meta" class="form-control">
      <?php foreach($shopme_product_meta_list as $key=>$shopme_product_meta_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_product_meta==$key) { echo " selected"; }?> ><?php echo $shopme_product_meta_list;?></option>
      <?php } ?>
      </select>
	</div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Show "You save" amount on specials</label>
     <select name="shopme_product_yousave" class="form-control">
      <?php foreach($shopme_product_yousave_list as $key=>$shopme_product_yousave_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_product_yousave==$key) { echo " selected"; }?> ><?php echo $shopme_product_yousave_list;?></option>
      <?php } ?>
      </select>
      <span class="help-block">* Extended price information with old price, special price and discount amount.</span>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Show Timer countdown on specials</label>
     <select name="shopme_product_countdown" class="form-control">
      <?php foreach($shopme_product_countdown_list as $key=>$shopme_product_countdown_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_product_countdown==$key) { echo " selected"; }?> ><?php echo $shopme_product_countdown_list;?></option>
      <?php } ?>
      </select>
      <span class="help-block">* Note that you need to set an end date on the special price to enable countdown.</span>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Show items sold/items left below countdown</label>
     <select name="shopme_product_hurry" class="form-control">
      <?php foreach($shopme_product_hurry_list as $key=>$shopme_product_hurry_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_product_hurry==$key) { echo " selected"; }?> ><?php echo $shopme_product_hurry_list;?></option>
      <?php } ?>
      </select>
    </div>
      
      <div class="col-sm-12 form-group">
	<label class="control-label">Image zoom alternative on product page</label>
     <select name="shopme_product_zoom" class="form-control">
      <?php foreach($shopme_product_zoom_list as $key=>$shopme_product_zoom_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_product_zoom==$key) { echo " selected"; }?> ><?php echo $shopme_product_zoom_list;?></option>
      <?php } ?>
      </select>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Image options style</label>
     <select name="shopme_image_options" class="form-control">
      <?php foreach($shopme_image_options_list as $key=>$shopme_image_options_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_image_options==$key) { echo " selected"; }?> ><?php echo $shopme_image_options_list;?></option>
      <?php } ?>
      </select>
      <span class="help-block">* If product has options with the type <i>Image</i>. Clean thumbs shows only the image, while Opencart default style shows radio button + image thumb + option name. If Clean thumb is used, the image thumbs will be 20px high.</span>
    </div>
    
    

    </div> <!-- row ends -->
    </div> <!-- Tab product page ends -->
    
    <div id="tab-category-page" class="tab-pane"> <!-- Tab category page start -->
    <h3>Category page</h3><hr />
    
    <div class="row">
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Show category thumb on category page</label>
    <select name="shopme_category_thumb" class="form-control">
      <?php foreach($shopme_category_thumb_list as $key=>$shopme_category_thumb_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_category_thumb==$key) { echo " selected"; }?> ><?php echo $shopme_category_thumb_list;?></option>
      <?php } ?>
      </select>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Show sub-categories on category pages</label>
    <select name="shopme_category_refine" class="form-control">
      <?php foreach($shopme_category_refine_list as $key=>$shopme_category_refine_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_category_refine==$key) { echo " selected"; }?> ><?php echo $shopme_category_refine_list;?></option>
      <?php } ?>
      </select>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Sub-categories per row</label>
     <select name="shopme_category_per_row" class="form-control">
      <?php foreach($shopme_category_per_row_list as $key=>$shopme_category_per_row_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_category_per_row==$key) { echo " selected"; }?> ><?php echo $shopme_category_per_row_list;?></option>
      <?php } ?>
      </select>
    </div>

     <div class="col-sm-6 form-group">
	<label class="control-label">Sub-categories thumb size (width)</label>
     <input type="text" class="form-control" value="<?php echo $shopme_refine_image_w?>" name="shopme_refine_image_w" />
    </div>
    
    <div class="col-sm-6 form-group">
	<label class="control-label">Sub-categories thumb size (height)</label>
     <input type="text" class="form-control" value="<?php echo $shopme_refine_image_h?>" name="shopme_refine_image_h" />
    </div>

    </div> <!-- row ends -->
    </div> <!-- Tab category page ends -->
    
    
    <div id="tab-brands-page" class="tab-pane"> <!-- Tab contact page start -->
    <h3>Brands list page</h3><hr />
    
    <div class="row">
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Brands per row</label>
     <select name="shopme_brands_per_row" class="form-control">
      <?php foreach($shopme_brands_per_row_list as $key=>$shopme_brands_per_row_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_brands_per_row==$key) { echo " selected"; }?> ><?php echo $shopme_brands_per_row_list;?></option>
      <?php } ?>
      </select>
    </div>

     <div class="col-sm-6 form-group">
	<label class="control-label">Brands thumb size (width)</label>
     <input type="text" class="form-control" value="<?php echo $shopme_brands_image_w?>" name="shopme_brands_image_w" />
    </div>
    
    <div class="col-sm-6 form-group">
	<label class="control-label">Brands thumb size (height)</label>
     <input type="text" class="form-control" value="<?php echo $shopme_brands_image_h?>" name="shopme_brands_image_h" />
    </div>

    </div> <!-- row ends -->
    </div> <!-- Tab brands page ends -->
    
    
    <div id="tab-contact-page" class="tab-pane"> <!-- Tab contact page start -->
    <h3>Contact page</h3><hr />
    
    <div class="row">
 	
    <div class="col-sm-12 form-group">
	<label class="control-label">Google maps iframe</label>
    <textarea name="shopme_google_map" class="form-control" style="height:200px"><?php echo $shopme_google_map; ?></textarea>
	<span class="help-block">* Look in the theme documentation how to find the iframe code.</span>
    </div>
      
    </div> <!-- row ends -->
    </div> <!-- Tab contact page ends -->
    
    
    
    <div id="tab-product-listings" class="tab-pane"> <!-- Tab product listings start -->
    <h3><?php echo $text_heading_product_listings;?></h3><hr />
    
    <div class="row">
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Quicklook translation</label>
    <?php foreach ($languages as $language) { ?>
    <div class="input-group"><span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
   	
    <input type="text" class="form-control" name="shopme_text_ql[<?php echo $language['language_id']; ?>]" value="<?php echo isset($shopme_text_ql[$language['language_id']]) ? $shopme_text_ql[$language['language_id']] : ''; ?>" />
    </div>
	<?php } ?>
    <span class="help-block">* Leave blank to disable quicklook</span>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Product listing style</label>
    <select name="shopme_default_product_style" class="form-control">
      <?php foreach($shopme_default_product_style_list as $key=>$shopme_default_product_style_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_default_product_style==$key) { echo " selected"; }?> ><?php echo $shopme_default_product_style_list;?></option>
      <?php } ?>
      </select>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label"><?php echo $text_default_product_listing;?></label>
   <select name="shopme_default_view" class="form-control">
      <?php foreach($shopme_default_view_list as $key=>$shopme_default_view_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_default_view==$key) { echo " selected"; }?> ><?php echo $shopme_default_view_list;?></option>
      <?php } ?>
      </select>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label"><?php echo $text_grid_category;?></label>
   <select name="shopme_grid_category" class="form-control">
      <?php foreach($shopme_grid_category_list as $key=>$shopme_grid_category_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_grid_category==$key) { echo " selected"; }?> ><?php echo $shopme_grid_category_list;?></option>
      <?php } ?>
      </select>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label"><?php echo $text_grid_related;?></label>
   <select name="shopme_grid_related" class="form-control">
      <?php foreach($shopme_grid_related_list as $key=>$shopme_grid_related_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_grid_related==$key) { echo " selected"; }?> ><?php echo $shopme_grid_related_list;?></option>
      <?php } ?>
      </select>
    </div>
    
	<div class="col-sm-12 form-group">
	<label class="control-label"><?php echo $text_rollover_effect;?></label>
    <select name="shopme_rollover_effect" class="form-control">
      <?php foreach($shopme_rollover_effect_list as $key=>$shopme_rollover_effect_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_rollover_effect==$key) { echo " selected"; }?> ><?php echo $shopme_rollover_effect_list;?></option>
      <?php } ?>
      </select>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label"><?php echo $text_percentage_sale_badge;?></label>
    <select name="shopme_percentage_sale_badge" class="form-control">
      <?php foreach($shopme_percentage_sale_badge_list as $key=>$shopme_percentage_sale_badge_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_percentage_sale_badge==$key) { echo " selected"; }?> ><?php echo $shopme_percentage_sale_badge_list;?></option>
      <?php } ?>
      </select>
    </div>
    
     <div class="col-sm-12 form-group">
	<label class="control-label">Show countdown timer on specials</label>
    <select name="shopme_countdown" class="form-control">
      <?php foreach($shopme_countdown_list as $key=>$shopme_countdown_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_countdown==$key) { echo " selected"; }?> ><?php echo $shopme_countdown_list;?></option>
      <?php } ?>
      </select>
    </div>
    
     <div class="col-sm-12 form-group">
	<label class="control-label">Show price Ex. tax</label>
    <select name="shopme_tax" class="form-control">
      <?php foreach($shopme_tax_list as $key=>$shopme_tax_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_tax==$key) { echo " selected"; }?> ><?php echo $shopme_tax_list;?></option>
      <?php } ?>
      </select>
    </div>
     
    </div> <!-- row ends -->
    
    </div> <!-- Tab product listings ends -->
    
    <div id="tab-footer" class="tab-pane"> <!-- Tab footer start -->
    <h3>Footer modules</h3><hr />
    
    <div class="row">
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Modules per row</label>
    <select name="shopme_footer_columns" class="form-control">
	<?php foreach($shopme_footer_columns_list as $key=>$shopme_footer_columns_list) { ?>
	<option value="<?php echo $key;?>" <?php if($shopme_footer_columns==$key) { echo " selected"; }?> ><?php echo $shopme_footer_columns_list;?></option>
	<?php } ?>
	</select>
    </div>
    
    </div> <!-- row ends -->
    
    <h3>Footer static block</h3><hr />
    
    <div class="row">
    
       
    <div class="col-sm-12 form-group">
	<label class="control-label">Custom content</label>
    <?php foreach ($languages as $language) { ?>
    <div class="input-group"><span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
    <textarea name="shopme_footer_custom_block[<?php echo $language['language_id']; ?>]" id="shopme_footer_custom_block<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($shopme_footer_custom_block[$language['language_id']]) ? $shopme_footer_custom_block[$language['language_id']] : ''; ?></textarea>
    </div>
	<?php } ?>
    </div>
    
   </div> <!-- row ends -->
    
    <h3><?php echo $text_upload_payment_icon;?></h3><hr />
    
    <div class="row">
    
     <div class="col-sm-12 form-group">
	<label class="control-label"><?php echo $text_upload_payment_icon;?> </label><br />
	<a href="" id="thumb-payment" data-toggle="image" class="img-thumbnail"><img src="<?php echo $shopme_footer_payment; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
	<input type="hidden" name="shopme_footer_payment_icon" value="<?php echo $shopme_footer_payment_icon; ?>" id="input-payment" />
	</div>
    
    </div> <!-- row ends -->
    </div> <!-- Tab footer ends -->
    
    
    
    <div id="tab-side-widgets" class="tab-pane"> <!-- Tab side-widgets start -->
    <h3>Side Widgets</h3><hr />
    <div class="row">
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Facebook side widget</label>
	<select name="shopme_facebook_widget" class="form-control">
	<?php foreach($shopme_facebook_widget_list as $key=>$shopme_facebook_widget_list) { ?>
	<option value="<?php echo $key;?>" <?php if($shopme_facebook_widget==$key) { echo " selected"; }?> ><?php echo $shopme_facebook_widget_list;?></option>
	<?php } ?>
	</select>
    <span class="help-block">The facebook widget will be collected from the module <i>Shopme Facebook Page Plugin</i></span>
	</div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Twitter side widget</label>
	<select name="shopme_twitter_widget" class="form-control">
	<?php foreach($shopme_twitter_widget_list as $key=>$shopme_twitter_widget_list) { ?>
	<option value="<?php echo $key;?>" <?php if($shopme_twitter_widget==$key) { echo " selected"; }?> ><?php echo $shopme_twitter_widget_list;?></option>
	<?php } ?>
	</select>
    <span class="help-block">The twitter username will be collected from the module <i>Shopme Twitter Feed</i></span>
	</div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Contact form side widget</label>
	<select name="shopme_contact_widget" class="form-control">
	<?php foreach($shopme_contact_widget_list as $key=>$shopme_contact_widget_list) { ?>
	<option value="<?php echo $key;?>" <?php if($shopme_contact_widget==$key) { echo " selected"; }?> ><?php echo $shopme_contact_widget_list;?></option>
	<?php } ?>
	</select>
	</div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Location/Contact details side widget</label>
	<select name="shopme_location_widget" class="form-control">
	<?php foreach($shopme_location_widget_list as $key=>$shopme_location_widget_list) { ?>
	<option value="<?php echo $key;?>" <?php if($shopme_location_widget==$key) { echo " selected"; }?> ><?php echo $shopme_location_widget_list;?></option>
	<?php } ?>
	</select>
    <span class="help-block">The map will be collected from the one you paste in the tab Contact page</span>
	</div>

    </div> <!-- row ends -->
    </div> <!-- tab side-widgets ends -->
    
    
    
    <div id="tab-cookie" class="tab-pane"> <!-- Tab cookie control start -->
    <h3>Cookie notification</h3><hr />
    
    <div class="row">
 	
    <div class="col-sm-12 form-group">
	<label class="control-label">Show cookie notification</label>
    <select name="shopme_use_cookie" class="form-control">
      <?php foreach($shopme_use_cookie_list as $key=>$shopme_use_cookie_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_use_cookie==$key) { echo " selected"; }?> ><?php echo $shopme_use_cookie_list;?></option>
      <?php } ?>
      </select>
    </div>
    
	<div class="col-sm-12 form-group">
	<label class="control-label">Cookie information text</label>
    <?php foreach ($languages as $language) { ?>
    <div class="input-group"><span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
   	<input type="text" class="form-control" value="<?php echo isset($shopme_cookie_text[$language['language_id']]) ? $shopme_cookie_text[$language['language_id']] : ''; ?>" name="shopme_cookie_text[<?php echo $language['language_id']; ?>]" />
    </div>
	<?php } ?>
    </div>
	
    <div class="col-sm-12 form-group">
	<label class="control-label">Read more link</label>
    <input type="text" class="form-control" value="<?php echo $shopme_readmore_url?>" name="shopme_readmore_url" size="40" />
    <span class="help-block">* Include fulll URL including http://<br />Leave empty to disable the Read more-button</span>
    </div>

    <div class="col-sm-12 form-group">
	<label class="control-label">Button text "Read more"</label>
    <?php foreach ($languages as $language) { ?>
    <div class="input-group"><span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
   	<input type="text" class="form-control" value="<?php echo isset($shopme_cookie_button_readmore[$language['language_id']]) ? $shopme_cookie_button_readmore[$language['language_id']] : ''; ?>" name="shopme_cookie_button_readmore[<?php echo $language['language_id']; ?>]" />
    </div>
	<?php } ?>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Button text "Accept cookies"</label>
    <?php foreach ($languages as $language) { ?>
    <div class="input-group"><span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
   	<input type="text" class="form-control" value="<?php echo isset($shopme_cookie_button_accept[$language['language_id']]) ? $shopme_cookie_button_accept[$language['language_id']] : ''; ?>" name="shopme_cookie_button_accept[<?php echo $language['language_id']; ?>]" />
    </div>
	<?php } ?>
    </div>
    
      
    </div> <!-- row ends -->
    
    </div> <!-- Tab cookie control ends -->
    
    <div id="tab-explorer" class="tab-pane"> <!-- Tab internet explorer start -->
    <h3>Warning for old Internet Explorer users</h3><hr />
    <div class="row">
 	
    <div class="col-sm-12 form-group">
	<label class="control-label">Show message to IE users</label>
    <select name="shopme_use_ie" class="form-control">
      <?php foreach($shopme_use_ie_list as $key=>$shopme_use_ie_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_use_ie==$key) { echo " selected"; }?> ><?php echo $shopme_use_ie_list;?></option>
      <?php } ?>
      </select>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Information text</label>
    <?php foreach ($languages as $language) { ?>
    <div class="input-group"><span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
   	<input type="text" class="form-control" value="<?php echo isset($shopme_ie_text[$language['language_id']]) ? $shopme_ie_text[$language['language_id']] : ''; ?>" name="shopme_ie_text[<?php echo $language['language_id']; ?>]" />
    </div>
	<?php } ?>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Update now link</label>
    <input type="text" class="form-control" value="<?php echo $shopme_ie_url?>" name="shopme_ie_url" size="40" />
    <span class="help-block">Leave empty to disable the Update now button</span>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">"Update now" button text</label>
    <?php foreach ($languages as $language) { ?>
    <div class="input-group"><span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
   	<input type="text" class="form-control" value="<?php echo isset($shopme_ie_update_text[$language['language_id']]) ? $shopme_ie_update_text[$language['language_id']] : ''; ?>" name="shopme_ie_update_text[<?php echo $language['language_id']; ?>]" />
    </div>
	<?php } ?>
    </div>    
      
    </div> <!-- row ends -->
    </div> <!-- Tab internet explorer ends -->
    </div>
    </div>
    </div> <!-- row ends -->
    
    </div> <!-- #tab-general ends -->
    
    <div id="tab-design" class="tab-pane">
    
   

    <div class="row">
    
    
    <div class="col-sm-2 tabs-left">
    <ul class="nav nav-tabs nav-stacked">
    <li class="active"><a href="#tab-custom-design" data-toggle="tab">Custom design</a></li>
    <li><a href="#tab-font" data-toggle="tab">Custom font</a></li>
    </ul> <!-- vtabs ends -->
    </div>
    
    
    <div class="col-sm-10">
    <div class="tab-content">
    <div id="tab-custom-design" class="tab-pane active"> <!-- Tab design start -->
    
     
    <h3>Enable custom design</h3><hr />
    <div class="row">
    
    <div class="col-sm-12 form-group">
	<label class="control-label"><?php echo $text_use_custom_design;?></label>
    <select name="shopme_use_custom" class="form-control">
      <?php foreach($shopme_use_custom_list as $key=>$shopme_use_custom_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_use_custom==$key) { echo " selected"; }?> ><?php echo $shopme_use_custom_list;?></option>
      <?php } ?>
      </select>
      <span class="help-block"><a id="reset_design" style="cursor:pointer;">Click here</a> to automatically fill in the default design scheme</span>
    </div>
    
      </div> <!-- row ends -->
      
      <h3>Container</h3><hr />
      <div class="row">
      
	<div class="col-sm-12 form-group">
	<label class="control-label">Container layout</label>
     <select name="shopme_container_layout" id="shopme_container_layout" class="form-control">
      <?php foreach($shopme_container_layout_list as $key=>$shopme_container_layout_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_container_layout==$key) { echo " selected"; }?> ><?php echo $shopme_container_layout_list;?></option>
      <?php } ?>
      </select>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Body background color</label>
     <input type="text" class="form-control" value="<?php echo $shopme_body_background?>" name="shopme_body_background" id="shopme_body_background" />
    <span class="help-block">* If Container layout is boxed</span>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Body background image</label>
     <select name="shopme_body_image" id="shopme_body_image" class="form-control">
      <?php foreach($shopme_body_image_list as $key=>$shopme_body_image_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_body_image==$key) { echo " selected"; }?> ><?php echo $shopme_body_image_list;?></option>
      <?php } ?>
      </select>
    <span class="help-block">* If Container layout is boxed</span>
    </div>
    
    <div class="col-sm-12 form-group">
	<div id="body_preview" style="width:100%;height:250px;background-color:#<?php echo $shopme_body_background?>;background-image: url('../catalog/view/theme/shopme/image/patterns/<?php echo $shopme_body_image?>');">
      </div>
    <i class="help-block">* Preview of body background</i>
    </div>
            
      <div class="col-sm-12 form-group">
	<label class="control-label">Custom background image</label><br />
	<a href="" id="thumb-bg" data-toggle="image" class="img-thumbnail"><img src="<?php echo $shopme_custom_bg; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
	<input type="hidden" name="shopme_custom_bg_icon" id="input-bg" value="<?php echo $shopme_custom_bg_icon; ?>" />
    <span class="help-block">* Custom background images will not be previewed above</span>
	</div>
    

      </div> <!-- row ends -->
      
      <h3>Top line</h3><hr />
      
      <div class="row">
      
      <div class="col-sm-12 form-group">
	<label class="control-label">Top line background</label>
     <input type="text" class="form-control" value="<?php echo $shopme_top_border_background?>" name="shopme_top_border_background" id="shopme_top_border_background" />
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Top line border color</label>
	<input type="text" class="form-control" value="<?php echo $shopme_top_border_border?>" name="shopme_top_border_border" id="shopme_top_border_border" />
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Top line default text color</label>
	<input type="text" class="form-control" value="<?php echo $shopme_top_border_text?>" name="shopme_top_border_text" id="shopme_top_border_text" />
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Top line links</label>
	<input type="text" class="form-control" value="<?php echo $shopme_top_border_link?>" name="shopme_top_border_link" id="shopme_top_border_link" />
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Top line links (hover)</label>
	<input type="text" class="form-control" value="<?php echo $shopme_top_border_link_hover?>" name="shopme_top_border_link_hover" id="shopme_top_border_link_hover" />
    </div>
      
      </div> <!-- row ends -->
      
       <h3><?php echo $text_heading_design_main_menu;?></h3><hr />
       
       <div class="row">
    
    <div class="col-sm-12 form-group">
	<label class="control-label"><?php echo $text_main_menu_background;?></label>
	<input type="text" class="form-control" value="<?php echo $shopme_menu_background?>" name="shopme_menu_background" id="shopme_menu_background" />
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label"><?php echo $text_main_menu_link_color;?></label>
	<input type="text" class="form-control" value="<?php echo $shopme_menu_link_color?>" name="shopme_menu_link_color" id="shopme_menu_link_color" />
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Menu border color</label>
	<input type="text" class="form-control" value="<?php echo $shopme_shortcut_separator?>" name="shopme_shortcut_separator" id="shopme_shortcut_separator" />
    <span class="help-block">Separator between links, compare, wishlist, cart etc</span>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Menu link background (hover/active)</label>
	<input type="text" class="form-control" value="<?php echo $shopme_menu_link_background_hover?>" name="shopme_menu_link_background_hover" id="shopme_menu_link_background_hover" />
    </div>

      </div> <!-- row ends -->
      
       <h3>General color</h3><hr />
       
       <div class="row">
       
    <div class="col-sm-12 form-group">
	<label class="control-label">Default link hover color</label>
	<input type="text" class="form-control" value="<?php echo $shopme_link_hover_color?>" name="shopme_link_hover_color" id="shopme_link_hover_color" />
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Primary color</label>
	<input type="text" class="form-control" value="<?php echo $shopme_primary_color?>" name="shopme_primary_color" id="shopme_primary_color" />
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label"><?php echo $text_secondary_color;?></label>
	<input type="text" class="form-control" value="<?php echo $shopme_secondary_color?>" name="shopme_secondary_color" id="shopme_secondary_color" />
    </div>
    
    
    <div class="col-sm-12 form-group">
	<label class="control-label"><?php echo $text_salebadge_background;?></label>
	<input type="text" class="form-control" value="<?php echo $shopme_salebadge_background?>" name="shopme_salebadge_background" id="shopme_salebadge_background" />
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label"><?php echo $text_price_color;?></label>
	<input type="text" class="form-control" value="<?php echo $shopme_price_color?>" name="shopme_price_color" id="shopme_price_color" />
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label"><?php echo $text_icons_background_hover;?></label>
	<input type="text" class="form-control" value="<?php echo $shopme_icons_background_hover?>" name="shopme_icons_background_hover" id="shopme_icons_background_hover" />
    <span class="help-block">* Such as slider arrows and current page in paginations</span>
    </div>
      
      </div> <!-- row ends -->
     
       <h3><?php echo $text_heading_buttons;?></h3><hr />
       
       <div class="row">
      
      <div class="col-sm-12 form-group">
	<h4>Default button</h4>
    </div>
      
      <div class="col-sm-6 form-group">
	<label class="control-label">Color</label>
	<input type="text" class="form-control" value="<?php echo $shopme_button_color?>" name="shopme_button_color" id="shopme_button_color" />
    </div>
    
    
    <div class="col-sm-6 form-group">
	<label class="control-label">Background</label>
	<input type="text" class="form-control" value="<?php echo $shopme_button_background?>" name="shopme_button_background" id="shopme_button_background" />
    </div>
    
    
    <div class="col-sm-6 form-group">
	<label class="control-label">Color (hover)</label>
	<input type="text" class="form-control" value="<?php echo $shopme_button_hover_color?>" name="shopme_button_hover_color" id="shopme_button_hover_color" />
    </div>
    
    
    <div class="col-sm-6 form-group">
	<label class="control-label">Background (hover)</label>
	<input type="text" class="form-control" value="<?php echo $shopme_button_hover_background?>" name="shopme_button_hover_background" id="shopme_button_hover_background" />
    </div>
    
 <div class="col-sm-12 form-group">
	<h4><br />Contrast button</h4>
    </div>
      
      <div class="col-sm-6 form-group">
	<label class="control-label">Color</label>
	<input type="text" class="form-control" value="<?php echo $shopme_button2_color?>" name="shopme_button2_color" id="shopme_button2_color" />
    </div>

    
    <div class="col-sm-6 form-group">
	<label class="control-label">Background</label>
	<input type="text" class="form-control" value="<?php echo $shopme_button2_background?>" name="shopme_button2_background" id="shopme_button2_background" />
    </div>
    
    
    <div class="col-sm-6 form-group">
	<label class="control-label">Color (hover)</label>
	<input type="text" class="form-control" value="<?php echo $shopme_button2_hover_color?>" name="shopme_button2_hover_color" id="shopme_button2_hover_color" />
    </div>
    
    
    <div class="col-sm-6 form-group">
	<label class="control-label">Background (hover)</label>
	<input type="text" class="form-control" value="<?php echo $shopme_button2_hover_background?>" name="shopme_button2_hover_background" id="shopme_button2_hover_background" />
    </div>
      
     
       
      </div> <!-- row ends -->
       
      </div> <!-- Tab design end -->
      
       <div id="tab-font" class="tab-pane"> <!-- Tab font start -->
       
       <h3>Enable custom font</h3><hr />
    
       <div class="row">
      
      
    
      <div class="col-sm-12 form-group">
	<label class="control-label">Use custom font</label>
	<select name="shopme_use_custom_font" class="form-control">
      <?php foreach($shopme_use_custom_font_list as $key=>$shopme_use_custom_font_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_use_custom_font==$key) { echo " selected"; }?> ><?php echo $shopme_use_custom_font_list;?></option>
      <?php } ?>
      </select>
    <span class="help-block">* If set as Disabled, the default font Roboto will be used<br />* All available fonts can be found <a href="http://www.google.com/fonts/" target="_blank">here</a></span>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Font import</label>
	<input type="text" class="form-control" value="<?php echo $shopme_font1_import?>" name="shopme_font1_import" id="shopme_font1_import" />
    <span class="help-block"><i>This font will be used as body font, for paragraps etc.</i><br />Example: Exo:300,400,700</span>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Font name</label>
	<input type="text" class="form-control" value="<?php echo $shopme_font1_name?>" name="shopme_font1_name" id="shopme_font1_name" />
    <span class="help-block">Example: font-family: 'Exo', sans-serif;</span>
    </div>
      
    <div class="col-sm-12 form-group">
	<label class="control-label">Font weight: Regular</label>
	<select name="shopme_use_font_regular" class="form-control">
      <?php foreach($shopme_use_font_regular_list as $key=>$shopme_use_font_regular_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_use_font_regular==$key) { echo " selected"; }?> ><?php echo $shopme_use_font_regular_list;?></option>
      <?php } ?>
      </select>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Font weight: Bold</label>
	<select name="shopme_use_font_bold" class="form-control">
      <?php foreach($shopme_use_font_bold_list as $key=>$shopme_use_font_bold_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_use_font_bold==$key) { echo " selected"; }?> ><?php echo $shopme_use_font_bold_list;?></option>
      <?php } ?>
      </select>
    </div>
     
      
      
      </div> <!-- row ends -->
       
       
       
      </div> <!-- Tab font end -->
      </div>
      </div>
      </div>
      </div> <!-- #tab-design ends -->
      
      <div id="tab-custom-css" class="tab-pane">
      
      
      <div class="row">
    
    
    <div class="col-sm-2 tabs-left">
    <ul class="nav nav-tabs nav-stacked">
    <li class="active"><a href="#tab-custom-css-final" data-toggle="tab">Custom CSS</a></li>
    <li><a href="#tab-custom-javascript" data-toggle="tab">Custom Javascript</a></li>
    </ul> 
    </div>
      
      <div class="col-sm-10">
      
      <div class="tab-content">
      
      
      <div id="tab-custom-css-final" class="tab-pane active">
      
      <div class="row">
      
      
	<div class="col-sm-12 form-group">
	<label class="control-label"><?php echo $text_use_custom_css;?></label>
	<select name="shopme_use_custom_css" class="form-control">
	<?php foreach($shopme_use_custom_css_list as $key=>$shopme_use_custom_css_list) { ?>
	<option value="<?php echo $key;?>" <?php if($shopme_use_custom_css==$key) { echo " selected"; }?> ><?php echo $shopme_use_custom_css_list;?></option>
	<?php } ?>
	</select>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label"><?php echo $text_custom_css;?></label>
	<textarea class="form-control" style="height:250px" name="shopme_custom_css_content"><?php echo $shopme_custom_css_content?></textarea>
    <span class="help-block"><?php echo $text_custom_css_help;?></span>
    </div>

    
      
       </div> <!-- row ends -->
      
      </div>
      
      <div id="tab-custom-javascript" class="tab-pane">
      <div class="row">
      
      
      <div class="col-sm-12 form-group">
	<label class="control-label">Enable custom Javascript</label>
	 <select name="shopme_use_custom_javascript" class="form-control">
      <?php foreach($shopme_use_custom_javascript_list as $key=>$shopme_use_custom_javascript_list) { ?>
      <option value="<?php echo $key;?>" <?php if($shopme_use_custom_javascript==$key) { echo " selected"; }?> ><?php echo $shopme_use_custom_javascript_list;?></option>
      <?php } ?>
      </select>
    </div>
    
    <div class="col-sm-12 form-group">
	<label class="control-label">Javascript content</label>
	 <textarea class="form-control" style="height:250px" name="shopme_custom_javascript_content"><?php echo $shopme_custom_javascript_content?></textarea>
	  <span class="help-block">Use plain scripts without tags</span>
    </div>
    
      </div> <!-- row ends -->
      
      </div>
      </div>
      </div>
      </div> <!-- #tab-custom-css/script ends -->
      </div> <!-- Tab content ends -->
      
     </form>
    </div> <!-- content ends -->
  </div>
  </div>
  </div>
<style>
label {
	font-weight:normal;
	font-size:14px;
	color:#333333;
}
.row {
	margin-bottom:25px;
}
.input-group, .help-block {
	margin-bottom:5px;
}
.menu_manager .input-group {
	margin-bottom:0px;
}
.menu_manager td {
	vertical-align:top !important;
}
.menu_manager .input-group.sub {
	margin-left:30px;
}
.nav-tabs.main a {
	font-size:14px;
}
a, a:hover, a:active, a:focus {
   outline: 0;
}
.tabs-left > .nav-tabs > li,
.tabs-right > .nav-tabs > li {
  float: none;
}

.tabs-left > .nav-tabs > li > a,
.tabs-right > .nav-tabs > li > a {
  min-width: 74px;
  margin-right: 0;
  margin-bottom: 3px;
}

.tabs-left > .nav-tabs {
  border-right: 1px solid #ddd;
  border-bottom:none;
}

.tabs-left > .nav-tabs > li > a {
  margin-right: -1px;
  -webkit-border-radius: 4px 0 0 4px;
     -moz-border-radius: 4px 0 0 4px;
          border-radius: 4px 0 0 4px;
}

.tabs-left > .nav-tabs > li > a:hover,
.tabs-left > .nav-tabs > li > a:focus {
  border-color: #eeeeee #dddddd #eeeeee #eeeeee;
}

.tabs-left > .nav-tabs .active > a,
.tabs-left > .nav-tabs .active > a:hover,
.tabs-left > .nav-tabs .active > a:focus {
  border-color: #ddd transparent #ddd #ddd;
  *border-right-color: #ffffff;
}
hr {
	margin-top:10px;
}
</style>
<!-- Import requred files --> 
<script type="text/javascript" src="view/javascript/colorpicker/js/colorpicker.js"></script>
<link rel="stylesheet" type="text/css" href="view/javascript/colorpicker/css/colorpicker.css" />
<!-- Import requred files -->

<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
$('#shopme_menu_custom_block_content<?php echo $language['language_id']; ?>').summernote({height: 200});
<?php } ?>

<?php foreach ($languages as $language) { ?>
$('#shopme_footer_custom_block<?php echo $language['language_id']; ?>').summernote({height: 200});
<?php } ?>

//--></script>
<script type="text/javascript"><!--
var section_row = <?php echo $section_row; ?>;

function addSection() {	
	group_row = 0;
   	html  = '<tbody id="tab-section-' + section_row + '">';
	html += '<tr>';
	html += '<td>';
	<?php foreach ($languages as $language) { ?>
	html += '<div class="input-group">';
    html += '<span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>';
    html += '<input type="text" class="form-control" name="shopme_sections[' + section_row + '][title][<?php echo $language['language_id']; ?>]" />';
	html += '</div>';
	<?php } ?>
	html += '</td>';
	html += '<td>';
    html += '<input type="text" class="form-control" name="shopme_sections[' + section_row + '][href]" />';
	html += '</td>';
	html += '<td class="text-left"><a class="btn btn-danger" rel="tooltip" title="<?php echo $button_remove; ?>" onclick="$(\'#tab-section-' + section_row + '\').remove();"><i class="fa fa-trash"></i></a> <button type="button" class="btn btn-info" onclick="addGroup(' + section_row + ');" rel="tooltip" title="<?php echo $button_add_group; ?>"><i class="fa fa-level-down"></i></button></td>';

	
	html += '</tr>';
	html += '</tbody>';
	
	html += '<div id="group-holder-' + section_row + '"></div>';

	$('#section_add').before(html);
	$('[rel=tooltip]').tooltip();	
	section_row++;
	
}
//--></script>

<script type="text/javascript"><!--
function addGroup( section_row) {
	group_row = $('#tab-section-' + section_row + ' .group').length;
	html  = '<tr id="group-row-' + section_row + '-' + group_row + '" class="group">';

	html += '<td>';
	html += '<span style="position:absolute;font-size:20px;margin-left:8px;">&#8627;</span>';
	
	<?php foreach ($languages as $language) { ?>
	html += '<div class="input-group sub">';
    html += '<span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>';
    html += '<input type="text" class="form-control" name="shopme_sections[' + section_row + '][groups][' + group_row + '][title][<?php echo $language['language_id']; ?>]" />';
	html += '</div>';
	<?php } ?>
	html += '</td>';
	
	html += '<td>';
    html += '<input type="text" class="form-control" name="shopme_sections[' + section_row + '][groups][' + group_row + '][href]" />';
	html += '</td>';
	
	html += '<td>';
   html += '<a class="btn btn-danger" rel="tooltip" data-original-title="<?php echo $button_remove; ?>" onclick="removeGroup(' + section_row + ',' + group_row + ');"><i class="fa fa-trash"></i></a>';
	html += '</td>';
	
	
	

	
	$('#tab-section-' + section_row ).append(html);
	$('[rel=tooltip]').tooltip();	
	
	group_row++;
}
	
function removeGroup(section_row, group_row){
	$('#group-row-' + section_row + '-' + group_row).remove();
}
//--></script> 

<script type="text/javascript"><!--
$('#section li:first-child a').tab('show');
//--></script>

<script type="text/javascript"><!--
<?php $section_row = 1; ?>
<?php $group_row = 0; ?>
<?php foreach ($sections as $section) { ?>
$('#language<?php echo $section_row; ?> li:first-child a').tab('show');
<?php $section_row++; ?>
<?php } ?> 
//--></script> 

<script type="text/javascript">
$('.summernote').focus(function( ){
$(this).summernote({ 
height: 200,
toolbar: [
    ['style', ['style']], // no style button
    ['style', ['bold', 'italic', 'underline', 'strikethrough', 'superscript', 'subscript', 'clear']],
    ['fontsize', ['fontsize']],
	['fontname', ['fontname']],
    ['color', ['color']],
    ['para', ['ul', 'ol', 'paragraph']],
    ['height', ['height']], 
	['table', ['table']], // no table button
    ['insert', ['picture', 'link', 'video', 'hr']], // no insert buttons
	['codeview', ['fullscreen', 'codeview']] //no help button
  ]
});
});
</script>
<script type="text/javascript"><!--
$('#shopme_header_text, #shopme_user_menu_text, #shopme_user_menu_text_hover, #shopme_menu_link_color, #shopme_menu_link_background_hover, #shopme_shortcut_separator, #shopme_primary_color, #shopme_link_hover_color, #shopme_secondary_color, #shopme_h1_color, #shopme_heading_color, #shopme_footer_heading, #shopme_footer_links, #shopme_footer_links_hover, #shopme_user_menu_background, #shopme_search_field_text, #shopme_search_field_background, #shopme_search_field_background_hover, #shopme_top_border_background, #shopme_top_border_border, #shopme_top_border_text, #shopme_top_border_link_hover, #shopme_top_border_link, #shopme_highlight_background, #shopme_salebadge_background, #shopme_price_color, #shopme_module_heading_background, #shopme_module_heading_color, #shopme_product_tabs_heading, #shopme_product_tabs_content, #shopme_button_color, #shopme_button_background, #shopme_button_hover_color, #shopme_button_hover_background, #shopme_button2_color, #shopme_button2_background, #shopme_button2_hover_color, #shopme_button2_hover_background, #shopme_button3_color, #shopme_button3_background, #shopme_button3_border, #shopme_button3_hover_color, #shopme_button3_hover_background, #shopme_button3_hover_border, #shopme_icons_background, #shopme_icons_background_hover, #shopme_footer_social_icons_background, #shopme_footer_social_icons_hover').ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex);
		$(el).ColorPickerHide();
	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
	
});
// Header background also change header preview
$('#shopme_body_background').ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex);
		$(el).ColorPickerHide();
	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	},
	onChange: function (hsb, hex, rgb) {
		$('#body_preview').css('backgroundColor', '#' + hex);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});
// Menu background also change menu preview
$('#shopme_menu_background').ColorPicker({
	onSubmit: function(hsb, hex, rgb, el) {
		$(el).val(hex);
		$(el).ColorPickerHide();
	},
	onBeforeShow: function () {
		$(this).ColorPickerSetColor(this.value);
	},
	onChange: function (hsb, hex, rgb) {
		$('#menu_preview').css('backgroundColor', '#' + hex);
	}
})
.bind('keyup', function(){
	$(this).ColorPickerSetColor(this.value);
});

//--></script> 
<script type="text/javascript"><!--
// Update background images in header preview 
$("#shopme_body_image").change(function () {
	$('#body_preview').css('background-image', 'url("../catalog/view/theme/shopme/image/patterns/' + $(this).val() +'")');
});
//--></script>
<script type="text/javascript"><!--
// Update background images in menu preview 
$("#shopme_menu_pattern1").change(function () {
	$('#menu_preview').css('background-image', 'url("../catalog/view/theme/shopme/image/patterns/' + $(this).val() +'.png")');
});
$("#shopme_menu_pattern2").change(function () {
	$('#menu_preview2').css('background-image', 'url("../catalog/view/theme/shopme/image/patterns/' + $(this).val() +'.png")');
});
//--></script>
<script type="text/javascript"><!--
// Update background images in header preview 
$("#shopme_footer_pattern1").change(function () {
	$('#footer_preview').css('background-image', 'url("../catalog/view/theme/shopme/image/patterns/' + $(this).val() +'.png")');
});
$("#shopme_footer_pattern2").change(function () {
	$('#footer_preview2').css('background-image', 'url("../catalog/view/theme/shopme/image/patterns/' + $(this).val() +'.png")');
});
//--></script> 

<script type="text/javascript"><!-- 
$(document).ready(function() {
$('#reset_design').click(function() {    
$('#shopme_container_layout').val('full').attr("selected", "selected");
$('#shopme_body_background').val("ffffff");
$('#shopme_body_image').val("none.png").attr("selected", "selected");
$('#shopme_top_border_background').val("ffffff");
$('#shopme_top_border_border').val("eaeaea");
$('#shopme_top_border_text').val("777777");
$('#shopme_top_border_link').val("333333");
$('#shopme_top_border_link_hover').val("018BC8");
$('#shopme_menu_background').val("ffffff");
$('#shopme_menu_link_color').val("333333");
$('#shopme_shortcut_separator').val("eaeaea");
$('#shopme_menu_link_background_hover').val("018BC8");
$('#shopme_primary_color').val("018BC8");
$('#shopme_link_hover_color').val("018BC8");
$('#shopme_secondary_color').val("4AC4FA");
$('#shopme_salebadge_background').val("FF4557");
$('#shopme_price_color').val("018BC8");
$('#shopme_icons_background_hover').val("4AC4FA");
$('#shopme_button_color').val("018BC8");
$('#shopme_button_background').val("F8F8F8");
$('#shopme_button_hover_color').val("ffffff");
$('#shopme_button_hover_background').val("018BC8");
$('#shopme_button2_color').val("ffffff");
$('#shopme_button2_background').val("4AC4FA");
$('#shopme_button2_hover_color').val("ffffff");
$('#shopme_button2_hover_background').val("018BC8");
});
});
//--></script>

<?php echo $footer; ?>