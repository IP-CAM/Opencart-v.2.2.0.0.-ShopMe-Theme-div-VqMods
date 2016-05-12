<?php echo $header; ?><?php echo $column_left; ?>
<div id="content"><div class="container-fluid">
	<div class="page-header">
	    <h1>MegaMenu</h1>
	    <ul class="breadcrumb">
		     <?php foreach ($breadcrumbs as $breadcrumb) { ?>
		      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		      <?php } ?>
	    </ul>
	  </div>
    
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:600,500,400' rel='stylesheet' type='text/css'>
	
	<script type="text/javascript">
	$.fn.tabs = function() {
		var selector = this;
		
		this.each(function() {
			var obj = $(this); 
			
			$(obj.attr('href')).hide();
			
			$(obj).click(function() {
				$(selector).removeClass('selected');
				
				$(selector).each(function(i, element) {
					$($(element).attr('href')).hide();
				});
				
				$(this).addClass('selected');
				
				$($(this).attr('href')).show();
				
				return false;
			});
		});
	
		$(this).show();
		
		$(this).first().click();
	};
	</script>
	
	<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
		  <button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	<?php } elseif ($success) {  ?>
		<div class="alert alert-success"><i class="fa fa-exclamation-circle"></i> <?php echo $success; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	<?php } ?>
	
	<div class="set-size" id="megamenu">
		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
			<!-- Unlimited MegaMenu Modules -->
			<div class="content theme-skins">
				<div>
					<ul class="skins">
						<li><p>Edited Module: <br><span><?php echo $active_module; ?></span></p></li>
						<li>
							<select name="megamenu_modules">
								<?php foreach($megamenu_modules as $module) { ?>
								<option<?php if($active_module_id == $module['id']) { echo ' selected="selected"'; } ?> value="<?php echo $module['id']; ?>"><?php echo $module['name']; ?></option>
								<?php } ?>
							</select>
						</li>
						<li><input type="submit" name="active-module" class="button-active"></li>
						<li><a onclick="#" class="button-add"><span>Add</span></a><div class="add-skin"><input type="text" name="add-module-name" class="add-skin-name" value=""><input type="submit" name="add-module" value="Add module" class="button-add-skin"></div></li>
						<li><input type="submit" name="delete-module" class="button-delete" onclick="return confirm('Are you sure you want to delete?')"></li>
					</ul>
				</div>
			</div>
			
			<script type="text/javascript">
				$(document).ready(function (){
					$(".button-add").click(function() {
						$(".add-skin").show();
						return false;
					});
				});
			</script>
			
			<div class="content">
				<div>
					<div class="background clearfix">
						<div class="left">
							<a href="<?php echo $action; ?>&action=create" class="create-new-item"></a>
							<?php echo $nestable_list; ?>
							<div id='sortDBfeedback' style="padding: 10px 0px 0px 0px"></div>
						</div>
						
						<?php if($action_type == 'create' || $action_type == 'edit') { ?>
						<div class="right">
							<?php if($action_type == 'edit') { ?>
							<h4>Edit item (ID: <?php echo $_GET['edit']; ?>)</h4>
							<input type="hidden" name="id" value="<?php echo $_GET['edit']; ?>" />
							<?php } else { ?>
							<h4>Create new item</h4>
							<?php } ?>
							<!-- Input -->
							<div class="input clearfix">
								<p>Name</p>
								<div class="list-language">
								<?php foreach ($languages as $language) { ?>
								<div class="language">
									<?php $language_id = $language['language_id']; ?>
									<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
									<input type="text" name="name[<?php echo $language_id; ?>]" <?php if(isset($name[$language_id])) { echo 'value="'.$name[$language_id].'"'; } ?>>
								</div>
								<?php } ?>
								</div>
							</div>
							
							<!-- Input -->
							
								<?php foreach ($languages as $language) { ?>
									<?php $language_id = $language['language_id']; ?>
									<input type="hidden" name="description[<?php echo $language_id; ?>]" <?php if(isset($description[$language_id])) { echo 'value="'.$description[$language_id].'"'; } ?>>
								<?php } ?>
								
							
							<!-- Input -->
							
								
									<input type="hidden" name="icon" value="<?php echo $icon; ?>" id="input-icon_img_preview" />
									
								
							
							<!-- Input -->
							<div class="input clearfix">
								<p>Link</p>
								<input type="text" value="<?php echo $link; ?>" name="link">
							</div>
							
							<!-- Input -->
							<div class="input clearfix">
								<p>Link in new window</p>
								<select name="new_window">
									<?php if($new_window == 1) { ?>
									<option value="0">disabled</option>
									<option value="1" selected="selected">enabled</option>
									<?php } else { ?>
									<option value="0" selected="selected">disabled</option>
									<option value="1">enabled</option>
									<?php } ?>
								</select>
							</div>
							
							<!-- Input -->
							<div class="input clearfix">
								<p>Status</p>
								<select name="status">
									<?php if($status == 1) { ?>
									<option value="0">enabled</option>
									<option value="1" selected="selected">disabled</option>
									<?php } else { ?>
									<option value="0" selected="selected">enabled</option>
									<option value="1">disabled</option>
									<?php } ?>
								</select>
							</div>
							
							<!-- Input -->
							<div class="input clearfix">
								<p>Display on mobile</p>
								<select name="display_on_mobile">
									<?php if($display_on_mobile == 1) { ?>
									<option value="0">yes</option>
									<option value="1" selected="selected">no</option>
									<?php } else { ?>
									<option value="0" selected="selected">yes</option>
									<option value="1">no</option>
									<?php } ?>
								</select>
							</div>
							
							<!-- Input -->
							
								<select name="position" style="visibility:hidden;float:right;">
									<?php if($position == 1) { ?>
									<option value="0">Left</option>
									<option value="1" selected="selected">Right</option>
									<?php } else { ?>
									<option value="0" selected="selected">Left</option>
									<option value="1">Right</option>
									<?php } ?>
								</select>
							
							
							<!-- Input -->
							<div class="input clearfix">
								<p>Submenu width</p>
								<input type="text" name="submenu_width" value="<?php echo $submenu_width; ?>"> <div style="width:300px">Example:250px (1140px is full width)</div>
							</div>
							
							<!-- Input -->
							
								<select name="display_submenu" style="visibility:hidden;float:right;">
									<?php if($display_submenu == '0') { ?>
									<option value="0" selected="selected">Hover</option>
									<?php } else { ?>
									<option value="0">Hover</option>
									<?php } ?>
									<?php if($display_submenu == '2') { ?>
									<option value="2" selected="selected">Hover intent</option>
									<?php } else { ?>
									<option value="2">Hover intent</option>
									<?php } ?>
									<?php if($display_submenu == '1') { ?>
									<option value="1" selected="selected">Click</option>
									<?php } else { ?>
									<option value="1">Click</option>
									<?php } ?>
								</select>
							
							
							<!-- Input -->
							<div class="input clearfix">
								<p>Submenu background</p>
								<div class="own_image clearfix">
									<input type="hidden" name="submenu_background" value="<?php echo $submenu_background; ?>" id="input-submenu_background" />
									
									<?php if($submenu_background == '') { ?>
										<a href="" id="thumb-submenu_background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
									<?php } else { ?>
										<a href="" id="thumb-submenu_background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $submenu_background; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
									<?php } ?>
								</div>
							</div>
							
								<!-- Input -->	
							
							<div class="input clearfix">
								<p>Submenu background position</p>
								<select name="submenu_background_position">
									<option value="top left"<?php if($submenu_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
									<option value="top center"<?php if($submenu_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
									<option value="top right"<?php if($submenu_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
									<option value="bottom left"<?php if($submenu_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
									<option value="bottom center"<?php if($submenu_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
									<option value="bottom right"<?php if($submenu_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
								</select>
							</div>
							<!-- End Input -->
							
							<!-- Input -->	
							<div class="input clearfix">
								<p>Submenu background repeat</p>
								<select name="submenu_background_repeat">
									<option value="no-repeat"<?php if($submenu_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
									<option value="repeat-x"<?php if($submenu_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
									<option value="repeat-y"<?php if($submenu_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
									<option value="repeat"<?php if($submenu_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
								</select>
							</div>
							<!-- End Input -->
							
							<h5 style="margin-top:20px">Content item - content of these fields will only be displayed if the menu be set as submenu.</h5>
							<!-- Input -->
							<div class="input clearfix">
								<p>Content width</p>
								<select name="content_width">
									<?php for($i=1; $i<13; $i++) { ?>
									<option value="<?php echo $i; ?>" <?php if($i == $content_width) { echo 'selected="selected"'; } ?>><?php echo $i; ?>/12</option>
									<?php } ?>
								</select>
							</div>
							
							<!-- Input -->
							<div class="input clearfix">
								<p>Content type</p>
								<select name="content_type">
									<?php if($content_type != '0') { ?>
									<option value="0">HTML</option>
									<?php } else { ?>
									<option value="0" selected="selected">HTML</option>
									<?php } ?>
									<?php if($content_type != '1') { ?>
									<option value="1">Product</option>
									<?php } else { ?>
									<option value="1" selected="selected">Product</option>
									<?php } ?>
									<?php if($content_type != '2') { ?>
									<option value="2">Category</option>
									<?php } else { ?>
									<option value="2" selected="selected">Category</option>
									<?php } ?>
								</select>
							</div>
							
							<div id="content_type0"<?php if($content_type != '0') { ?> style="display:none"<?php } ?> class="content_type">
								<h5 style="margin-top:20px">HTML</h5>
								
								<div class="htmltabs htabs">
								<?php foreach ($languages as $language) { ?>
								<a href="#content_html_<?php echo $language['language_id']; ?>"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
								<?php } ?>
								</div>
								
								<?php foreach ($languages as $language) { $lang_id = $language['language_id']; ?>
								<!-- Input -->
								<div id="content_html_<?php echo $language['language_id']; ?>" class="content_html">
									<div class="clearfix" style="padding-top: 7px">
										<textarea name="content[html][text][<?php echo $language['language_id']; ?>]" id="content_html_text_<?php echo $language['language_id']; ?>" style="float: none;width: 100%;max-width: 100%"><?php if(isset($content['html']['text'][$lang_id])) { echo $content['html']['text'][$lang_id]; } ?></textarea>
										<script type="text/javascript">
											$('#content_html_text_<?php echo $language['language_id']; ?>').summernote({
												height: 300
											});
										</script>
									</div>
								</div>
								<?php } ?>
							</div>
							
							<div id="content_type1"<?php if($content_type != '1') { ?> style="display:none"<?php } ?> class="content_type">
								<h5 style="margin-top:20px">Product</h5>
								
								<!-- Input -->
								<div class="input clearfix">
									<p>Products:<br><span style="font-size:11px;color:#808080">(Autocomplete)</span></p>
									<input type="hidden" name="content[product][id]" value="<?php echo $content['product']['id']; ?>" />
									<input type="text" id="product_autocomplete" name="content[product][name]" value="<?php echo $content['product']['name']; ?>">
								</div>
								
								<!-- Input -->
								<div class="input clearfix">
									<p>Dimension product image:<br><span style="font-size:11px;color:#808080">(W x H)</span></p>
									<input type="text" name="content[product][width]" value="<?php if(isset($content['product']['width'])) echo $content['product']['width']; ?>" style="width: 50px; margin-right: 0px">
									<span style="display: block;float: left; padding:7px 15px 0px 7px">px</span>
									<input type="text" name="content[product][height]" value="<?php if(isset($content['product']['height'])) echo $content['product']['height']; ?>" style="width: 50px; margin-right: 0px">
									<span style="display: block;float: left; padding:7px 15px 0px 7px">px</span>
								</div>
							</div>
							
							<div id="content_type2"<?php if($content_type != '2') { ?> style="display:none"<?php } ?> class="content_type">
								<h5 style="margin-top:20px">Categories</h5>
								
								<!-- Input -->
								<div class="input clearfix">
									<p>Add categories<br><span style="font-size:11px;color:#808080">(Autocomplete)</span></p>
									<input type="text" id="categories_autocomplete" value="">								
								</div>
								
								<!-- Input -->
								<div class="input clearfix">
									<p>Sort categories</p>
									<div class="cf nestable-lists">
										<div class="dd" id="sort_categories">
										    <ol class="dd-list">
										    	<?php echo $list_categories; ?>
										    </ol>
										</div>
										<input type="hidden" id="sort_categories_data" name="content[categories][categories]" value="<?php echo isset($content['categories']['categories']); ?>" />
									</div>
								</div>
								
								<!-- Input -->
								<div class="input clearfix">
									<p>Columns</p>
									<select name="content[categories][columns]">
										<?php if($content['categories']['columns'] != '1') { ?>
										<option value="1">1</option>
										<?php } else { ?>
										<option value="1" selected="selected">1</option>
										<?php } ?>
										<?php if($content['categories']['columns'] != '2') { ?>
										<option value="2">2</option>
										<?php } else { ?>
										<option value="2" selected="selected">2</option>
										<?php } ?>
										<?php if($content['categories']['columns'] != '3') { ?>
										<option value="3">3</option>
										<?php } else { ?>
										<option value="3" selected="selected">3</option>
										<?php } ?>
										<?php if($content['categories']['columns'] != '4') { ?>
										<option value="4">4</option>
										<?php } else { ?>
										<option value="4" selected="selected">4</option>
										<?php } ?>
										<?php if($content['categories']['columns'] != '5') { ?>
										<option value="5">5</option>
										<?php } else { ?>
										<option value="5" selected="selected">5</option>
										<?php } ?>
										<?php if($content['categories']['columns'] != '6') { ?>
										<option value="6">6</option>
										<?php } else { ?>
										<option value="6" selected="selected">6</option>
										<?php } ?>
									</select>
								</div>
								
								<!-- Input -->
								
									
									<select name="content[categories][submenu]" style="visibility:hidden;float:right;">
										<?php if($content['categories']['submenu'] != '1') { ?>
										<option value="1">Hover</option>
										<?php } else { ?>
										<option value="1" selected="selected">Hover</option>
										<?php } ?>
										<?php if($content['categories']['submenu'] != '2') { ?>
										<option value="2">Visible</option>
										<?php } else { ?>
										<option value="2" selected="selected">Visible</option>
										<?php } ?>
									</select>
								
								<!-- Input -->
								<div class="input clearfix" <?php if($content['categories']['submenu'] != '2') { echo 'style="display:none"'; } ?> id="submenu-columns">
									<p>Submenu columns</p>
									<select name="content[categories][submenu_columns]">
										<?php if($content['categories']['submenu_columns'] != '1') { ?>
										<option value="1">1</option>
										<?php } else { ?>
										<option value="1" selected="selected">1</option>
										<?php } ?>
										<?php if($content['categories']['submenu_columns'] != '2') { ?>
										<option value="2">2</option>
										<?php } else { ?>
										<option value="2" selected="selected">2</option>
										<?php } ?>
										<?php if($content['categories']['submenu_columns'] != '3') { ?>
										<option value="3">3</option>
										<?php } else { ?>
										<option value="3" selected="selected">3</option>
										<?php } ?>
										<?php if($content['categories']['submenu_columns'] != '4') { ?>
										<option value="4">4</option>
										<?php } else { ?>
										<option value="4" selected="selected">4</option>
										<?php } ?>
										<?php if($content['categories']['submenu_columns'] != '5') { ?>
										<option value="5">5</option>
										<?php } else { ?>
										<option value="5" selected="selected">5</option>
										<?php } ?>
										<?php if($content['categories']['submenu_columns'] != '6') { ?>
										<option value="6">6</option>
										<?php } else { ?>
										<option value="6" selected="selected">6</option>
										<?php } ?>
									</select>
								</div>
							</div>
						</div>
						<?php } else { ?>
						<div class="right">
							<h4>Basic configuration</h4>
							<!-- Input -->
							<div class="input clearfix">
								<p>Status</p>
								<select name="status">
									<?php if ($status) { ?>
									<option value="1" selected="selected">Enabled</option>
									<option value="0">Disabled</option>
									<?php } else { ?>
									<option value="1">Enabled</option>
									<option value="0" selected="selected">Disabled</option>
									<?php } ?>
								</select>
							</div>
							
							<!-- Input -->
							<div class="input clearfix">
								<p>Display on mobile</p>
								<select name="display_on_mobile">
									<?php if ($display_on_mobile) { ?>
									<option value="0">yes</option>
									<option value="1" selected="selected">no</option>
									<?php } else { ?>
									<option value="0" selected="selected">yes</option>
									<option value="1">no</option>
									<?php } ?>
								</select>
							</div>
							
							<!-- Input -->
							<div class="input clearfix">
								<p>Position</p>
								<select name="position">
									<?php if ($position == 'top_menu_pos') { ?>
									<option value="top_menu_pos" selected="selected">Top Menu</option>
									<?php } else { ?>
									<option value="top_menu_pos">Top Menu</option>
									<?php } ?>
                                    
                                    <?php if ($position == 'mega_menu') { ?>
									<option value="mega_menu" selected="selected">Inside module Shopme Mega Menu - Module Output</option>
									<?php } else { ?>
									<option value="mega_menu">Inside module Shopme Mega Menu - Module Output</option>
									<?php } ?>
									
								</select>
							</div>
							
							<!-- Input -->
							<input type="hidden" name="layout_id" value="99999">
									
							<input type="hidden" name="sort_order" value="<?php echo $sort_order; ?>">
							
                            
                            <!-- Input -->
							
								
								<select name="orientation" style="visibility:hidden;float:right;">
									<?php if ($orientation) { ?>
									<option value="0">Horizontal</option>
									<option value="1" selected="selected">Vertical</option>
\									<?php } else { ?>
									<option value="0" selected="selected">Horizontal</option>
									<option value="1">Vertical</option>
									<?php } ?>								
								</select>
							
							
							<h4 style="margin-top:20px">Design configuration</h4>
							
							
							<!-- Search -->
							
								<div><input type="hidden" name="search_bar" <?php if($search_bar == 1) { echo 'checked="checked"'; } ?> value="1"></div>
							
							
							<!-- Input -->
							<div class="input clearfix">
								<p>Navigation text</p>
								<div class="list-language">
								<?php foreach ($languages as $language) { ?>
								<div class="language">
									<?php $language_id = $language['language_id']; ?>
									<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
									<input type="text" name="navigation_text[<?php echo $language_id; ?>]" <?php if(isset($navigation_text[$language_id])) { echo 'value="'.$navigation_text[$language_id].'"'; } ?>>
								</div>
								<?php } ?>
								</div>
							</div>
							
							<!-- Input -->
							
								<select name="full_width" style="visibility:hidden;float:right;">
									<?php if ($full_width) { ?>
									<option value="1" selected="selected">Yes</option>
									<option value="0">No</option>
									<?php } else { ?>
									<option value="1">Yes</option>
									<option value="0" selected="selected">No</option>
									<?php } ?>								
								</select>
							
							
							<!-- Input -->
							<div class="input clearfix">
								<p>Home item</p>
								<select name="home_item">
									<?php if ($home_item == 'icon') { ?>
									<option value="icon" selected="selected">Icon</option>
									<?php } else { ?>
									<option value="icon">Icon</option>
									<?php } ?>
									<?php if ($home_item == 'text') { ?>
									<option value="text" selected="selected">Text</option>
									<?php } else { ?>
									<option value="text">Text</option>
									<?php } ?>
									<?php if ($home_item == 'disabled') { ?>
									<option value="disabled" selected="selected">Disabled</option>
									<?php } else { ?>
									<option value="disabled">Disabled</option>
									<?php } ?>
								</select>
							</div>
							
							<!-- Input -->
							<div class="input clearfix">
								<p>Home text</p>
								<div class="list-language">
								<?php foreach ($languages as $language) { ?>
								<div class="language">
									<?php $language_id = $language['language_id']; ?>
									<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
									<input type="text" name="home_text[<?php echo $language_id; ?>]" <?php if(isset($home_text[$language_id])) { echo 'value="'.$home_text[$language_id].'"'; } ?>>
								</div>
								<?php } ?>
								</div>
							</div>
							
							
							<!-- Input -->
							<div class="input clearfix" style="visibility:hidden;float:right;height:0;">
								<p>Animation</p>
								<div>
									<input type="radio" value="slide" name="animation" <?php if($animation == 'slide') { echo 'checked'; } ?>> Slide<br>
									<input type="radio" value="fade" name="animation" <?php if($animation == 'fade') { echo 'checked'; } ?>> Fade<br>
									<input type="radio" value="shift-up" name="animation" <?php if($animation == 'shift-up') { echo 'checked'; } ?>> Shift Up<br>
									<input type="radio" value="shift-down" name="animation" <?php if($animation == 'shift-down') { echo 'checked'; } ?>> Shift Down<br>
									<input type="radio" value="shift-left" name="animation" <?php if($animation == 'shift-left') { echo 'checked'; } ?>> Shift Left<br>
									<input type="radio" value="shift-right" name="animation" <?php if($animation == 'shift-right') { echo 'checked'; } ?>> Shift Right<br>
									<input type="radio" value="flipping" name="animation" <?php if($animation == 'flipping') { echo 'checked'; } ?>> 3D Flipping<br>
									<input type="radio" value="none" name="animation" <?php if($animation == 'none') { echo 'checked'; } ?>> None
								</div>
							</div>
							
							<!-- Input -->
							
								
								<input type="text" name="animation_time" style="visibility:hidden;float:right;" value="<?php echo $animation_time; ?>">
								
							
							
							<h4 style="margin-top:20px">Cache Configuration</h4>
							<p style="background: #D9EDFA;padding:12px 15px;margin-top:20px">Allows for faster page loading. Changes made when this option is enabled will be visible after a cache time.</p>
							<!-- Input -->
							<div class="input clearfix">
								<p>Status</p>
								<select name="status_cache">
									<?php if ($status_cache) { ?>
									<option value="1" selected="selected">Enabled</option>
									<option value="0">Disabled</option>
									<?php } else { ?>
									<option value="1">Enabled</option>
									<option value="0" selected="selected">Disabled</option>
									<?php } ?>
								</select>
							</div>
							
							<!-- Input -->
							<div class="input clearfix">
								<p>Cache Time (in hours)</p>
								<input type="text" name="cache_time" style="width:50px;margin-right:10px" value="<?php echo $cache_time; ?>">
								<div>h</div>
							</div>
							
						</div>
						<?php } ?>
					</div>
					
					<div class="buttons">
						<?php if($action_type == 'create') { ?>
						<input type="submit" name="button-create" class="button-save" value="">
						<?php } elseif ($action_type == 'edit') { ?>
						<input type="submit" name="button-edit" class="button-save" value="">
						<?php } else { ?>
						<input type="submit" name="button-save" class="button-save" value="">
						<?php } ?>
					</div>
				</div>
			</div>
			<!-- End Content -->
		</form>
	</div>
 </div>
 
 <?php if($action_type == 'create' || $action_type == 'edit') { ?>
 <script type="text/javascript">
 	 $('.htmltabs a').tabs();
 </script>
 <?php } ?>
 
<script type="text/javascript">
$(document).ready(function() {

	$("select[name=content_type]").change(function () {
		$("select[name=content_type] option:selected").each(function() {
			$(".content_type").hide();
			$("#content_type" + $(this).val()).show();
		});
	});
	
	$("#submenu-type").change(function () {
		$("#submenu-type option:selected").each(function() {
			if($(this).val() == 2) {
				$("#submenu-columns").show();
			} else {
				$("#submenu-columns").hide();
			}
		});
	});


	$('#product_autocomplete').autocomplete({
		delay: 500,
		source: function(request, response) {		
			$.ajax({
				url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $_GET['token']; ?>&filter_name=' +  encodeURIComponent(request),
				dataType: 'json',
				success: function(json) {
					response($.map(json, function(item) {
						return {
							label: item['name'],
							value: item['product_id']
						}
					}));
				}
			});
		},
		select: function(item) {
			$('#product_autocomplete').val(item['label']);
			$('input[name=\'content[product][id]\']').val(item['value']);
			
			return false;
		},
		focus: function(event, ui) {
	      	return false;
	   	}
	});
	
	$('#categories_autocomplete').autocomplete({
		delay: 500,
		source: function(request, response) {		
			$.ajax({
				url: 'index.php?route=catalog/category/autocomplete&token=<?php echo $_GET['token']; ?>&filter_name=' +  encodeURIComponent(request),
				dataType: 'json',
				success: function(json) {
					response($.map(json, function(item) {
						return {
							label: item['name'],
							value: item['category_id']
						}
					}));
				}
			});
		},
		select: function(item) {
			$("#sort_categories > .dd-list").append('<li class="dd-item" data-id="' + item['value'] + '" data-name="' + item['label'] + '"><a class="icon-delete"></a><div class="dd-handle">' + item['label'] + '</div></li>');
			updateOutput2($('#sort_categories').data('output', $('#sort_categories_data')));
			return false;
		},
		focus: function(event, ui) {
	      	return false;
	   	}
	});
	
	function lagXHRobjekt() {
		var XHRobjekt = null;
		
		try {
			ajaxRequest = new XMLHttpRequest(); // Firefox, Opera, ...
		} catch(err1) {
			try {
				ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP"); // Noen IE v.
			} catch(err2) {
				try {
						ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP"); // Noen IE v.
				} catch(err3) {
					ajaxRequest = false;
				}
			}
		}
		return ajaxRequest;
	}
	
	
	function menu_updatesort(jsonstring) {
		mittXHRobjekt = lagXHRobjekt(); 
	
		if (mittXHRobjekt) {
			mittXHRobjekt.onreadystatechange = function() { 
				if(ajaxRequest.readyState == 4){
					var ajaxDisplay = document.getElementById('sortDBfeedback');
					ajaxDisplay.innerHTML = ajaxRequest.responseText;
				} 
			}
						
			ajaxRequest.open("GET", "index.php?route=module/megamenu&token=<?php echo $_GET['token']; ?>&module_id=<?php echo $active_module_id; ?>&jsonstring=" + jsonstring, true);
			ajaxRequest.setRequestHeader("Content-Type", "application/json");
			ajaxRequest.send(null); 
		}
	}
	
	var updateOutput = function(e)
	{
	    var list   = e.length ? e : $(e.target),
	        output = list.data('output');
	    if (window.JSON) {
	        menu_updatesort(window.JSON.stringify(list.nestable('serialize')));//, null, 2));
	    } else {
	        alert('JSON browser support required for this demo.');
	    }
	};
	
	$('#nestable').nestable({
		group: 1,
		maxDepth: 2
	}).on('change', updateOutput);
	
	updateOutput($('#nestable').data('output', $('#nestable-output')));
	
	
	<?php if($action_type == 'create' || $action_type == 'edit') { ?>
		var updateOutput2 = function(e)
		{
		    var list   = e.length ? e : $(e.target),
		        output = list.data('output');
		    if (window.JSON) {
		        output.val(window.JSON.stringify(list.nestable('serialize')));//, null, 2));
		    } else {
		        output.val('JSON browser support required for this demo.');
		    }
	};
		
		$('#sort_categories').nestable({
			group: 1,
			maxDepth: 5
		}).on('change', updateOutput2);
		
		updateOutput2($('#sort_categories').data('output', $('#sort_categories_data')));
		
		$('#sort_categories').on('click', '.icon-delete', function() {
			$(this).parent().remove();
			updateOutput2($('#sort_categories').data('output', $('#sort_categories_data')));
		});
	<?php } ?>
	
});
</script>
<?php echo $footer; ?>