<?php if($shopme_header_wishlist == 'enabled'){ ?>
<a class="wishlist hover_icon" href="<?php echo $wishlist_link; ?>"><div class="icon_holder"><i class="fa fa-heart light_color"></i> <?php echo $text_wishlist; ?> (<span id="header_wishlist"><?php echo $text_wishlist_count; ?></span>)</div></a><?php } ?>
<?php if($shopme_header_compare == 'enabled'){ ?>
<a class="compare hover_icon" href="<?php echo $compare_link; ?>"><div class="icon_holder"><i class="icon-resize-small light_color"></i> <?php echo $text_compare; ?> (<span id="header_compare"><?php echo $text_compare_count; ?></span>)</div></a>
<?php } ?>