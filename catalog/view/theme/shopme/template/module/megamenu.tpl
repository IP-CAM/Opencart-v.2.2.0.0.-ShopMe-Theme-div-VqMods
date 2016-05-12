<?php if($ustawienia['position'] == 'mega_menu') { ?>
<div class="clearfix"></div>
<h3 class="categories_heading shopme_mega_menu_module"><?php echo $navigation_text; ?></h3>
<?php } ?>

<ul class="categories <?php if($ustawienia['position'] == 'top_menu_pos' && $header_style == 'header1' ) { echo 'horizontal'; } else { echo 'vertical'; } ?> megamenu shopme_mega_menu_module">

					<?php if($ustawienia['home_item'] == 'icon' || $ustawienia['home_item'] == 'text') { ?>
					<li class="home"><a href="<?php echo $home; ?>"><?php if($ustawienia['home_item'] == 'icon') { ?><i class="fa fa-home"></i><?php } else { echo $home_text; } ?></a></li>
					<?php } ?>
					
					<?php
						foreach($menu as $row) {
							$class = 'top';
							$class_link = '';
                            $link_arrow = ''; 
							$title = false;
							$target = false;
							//if($row['description'] != '') { $class_link .= ' description'; }
							if(is_array($row['submenu']) && !empty($row['submenu'])) { 
                            $class .= ' has_sub top';
                            $class_link .= 'sub_trigger'; 
                            $link_arrow .= '<i class="icon-down-dir"></i>'; 
                             
                            }
							if($row['display_on_mobile'] == 1) { $class .= ' hidden-xs'; }
							//if($row['position'] == 1) { $class .= ' pull-right'; }
							if($row['submenu_type'] == 2) { $title = 'title="hover-intent"'; }
							if($row['new_window'] == 1) { $target = 'target="_blank"'; }
							if(!isset($row['name'][$lang_id])) { $row['name'][$lang_id] = 'Set name'; }
							
                            echo "<li class='".$class."'>";
							echo "<a href='".$row['link']."' class='" . $class_link ."' ".$target.">".$row['icon'].html_entity_decode($row['name'][$lang_id]).html_entity_decode($row['description']). $link_arrow . "</a>";
								if(is_array($row['submenu']) && !empty($row['submenu'])) {
									
									$background_image = false;
									if($row['submenu_background'] != '') {
										$background_image = ';background-image:url(image/' . $row['submenu_background'] . ');background-position: ' . $row['submenu_background_position'] . ';background-repeat: ' . $row['submenu_background_repeat'] . ';';
									}
									echo '<div class="wrapper" style="display:inline; width:'.$row['submenu_width']. $background_image . '">';
										
											echo '<div class="row">';
												$row_fluid = 0;
												foreach($row['submenu'] as $submenu) {
													if(($row_fluid+$submenu['content_width']) > 12) {
														$row_fluid = $submenu['content_width'];
														echo '</div><div class="border"></div><div class="row">';
													} else {
														$row_fluid = $row_fluid+$submenu['content_width'];
													}
													echo '<div class="col-sm-'.$submenu['content_width'].'  ' . ($submenu['display_on_mobile'] == '1' ? 'mobile-disabled' : 'mobile-enabled') . '">';
														if($submenu['content_type'] == '0') {
															echo '<div class="html">';
                                                            echo $submenu['html'];
                                                            echo '</div>';
														} elseif($submenu['content_type'] == '1') {
															if(is_array($submenu['product'])) {
																echo '<div class="product"><div class="clearfix">';
																	echo '<div class="image"><a href="'.$submenu['product']['link'].'"><img src="'.$submenu['product']['image'].'" alt=""></a>';
                                                                    
                                                                    if ($submenu['product']['special']) {
                                                                    	
                                                                    
					
				echo '<div class="sale_badge">-' . $submenu['product']['sale_badge'] . '%</div>';
                                                                        
                                                                    }
                                                                    
                                                                    echo '</div>';
																	echo '<div class="right"><div class="name"><a href="'.$submenu['product']['link'].'">'.$submenu['product']['name'].'</a></div>';
																	
                                                                    
                                                                    echo '<div class="price">';
                                                                    if (!$submenu['product']['special']) {
                                                                    	echo $submenu['product']['price'];
                                                                        
                                                                    } else {    
                                                                        echo '<span class="price">';
                                                                    	echo $submenu['product']['special'];
                                                                        echo ' </span>';
                                                                        echo '<span class="price-old">';
                                                                    	echo $submenu['product']['price'];
                                                                        echo '</span>';
                                                                        
                                                                    }
 
																	echo '</div></div>';
																echo '</div></div>';
															}
														} elseif($submenu['content_type'] == '2') {
															echo $submenu['categories'];
														}
													echo '</div>';
												}
											
										echo '</div>';
									echo '</div>';
								}
							echo "</li>";
							echo "\n";
						}
					?>
</ul>
<?php if($ustawienia['position'] == 'top_menu_pos' && ($ustawienia['display_on_mobile'])) { ?>
<style>
@media only screen and (max-width: 767px) {a.v_menu_trigger.plain {display:none !important;}}
</style>
<?php } ?>

<?php if($ustawienia['position'] == 'mega_menu' && ($ustawienia['display_on_mobile'])) { ?>
<style>
@media only screen and (max-width: 767px) {.shopme_mega_menu_module {display:none !important;}}
</style>
<?php } ?>