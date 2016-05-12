<div class="header_top_line_wrapper">
<div class="header_top_line container">
	<div class="row">
    <div class="mini_menu links col-sm-8 mobile_center">
    <a class="mini_menu_trigger visible-xs"><i class="fa fa-list"></i></a>
    <?php echo $header_mini_menu; ?>
    </div>
    <div class="mini_menu settings col-sm-4 text-right mobile_center">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    </div>
  </div>
</div>
</div>
<div class="container">
<div class="row header">
<!-- logo -->
<div class="col-md-3 tablet_center mobile_center">
<?php if ($logo) { ?>
  <div class="logo tablet_margin_b"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
</div>
<!-- middle -->
<div class="col-sm-7 col-md-5 col-lg-6">
<div class="promo_message mobile_center"><?php echo $shopme_top_promo_message; ?></div>
<?php if($shopme_header_search == 'enabled') { ?><?php echo $search; ?><?php } ?>
</div>
<!-- right -->
<div class="col-sm-5 col-md-4 col-lg-3 text-right mobile_center">
<div class="wishlist_compare"><?php echo $header_wishlist_compare; ?></div>
<div>
<?php if($shopme_header_login == 'enabled') { ?>
<span class="login_register">
<?php if($logged) { ?>
<a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a> 
<span>/</span> 
<a href="<?php echo $account; ?>"><?php echo $shopme_account; ?></a>
<?php } else { ?>
<a href="<?php echo $popup_login_href; ?>" id="popup_login"><?php echo $text_login; ?></a> 
<span>/</span> 
<a href="<?php echo $register; ?>"><?php echo $text_register; ?></a>
<?php } ?>
</span>
<?php } ?>
<?php if ($shopme_header_cart == 'enabled') { echo $cart; } ?>
</div>
</div>
</div>
</div> <!-- container ends -->

<div class="menu_wrapper">
<div class="sticky_wrapper sticky">
<div class="outer_container">
<div class="container">
<div class="menu_table">
    
    <div class="menu_cell fill">
    <div class="main_menu">
    <?php if ($shopme_menu_type == 'mega_menu') { ?>
     
        
        <ul class="visible-xs visible-sm"><li class="trigger"><a class="v_menu_trigger light_bg_color"><i class="icon icon-menu"></i> <?php echo $text_category; ?><i class="icon-down-dir"></i></a></li></ul>
        <?php echo $top_menu_pos; ?>
     	
    <?php } else { ?>        
      <?php if ($categories) { ?>
      <ul class="visible-xs visible-sm"><li class="trigger"><a class="v_menu_trigger light_bg_color"><i class="icon icon-menu"></i> <?php echo $text_category; ?><i class="icon-down-dir"></i></a></li></ul>
      <ul class="categories horizontal">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
            <li class="has-sub top"><a class="sub_trigger" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?><i class="icon-down-dir"></i></a>
 				<div class="wrapper" style="display:inline">
                  <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                  <ul>
                    <?php foreach ($children as $child) { ?>
                    <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                  <?php } ?>
				</div>
            </li>
        <?php } else { ?>
        <li class="top"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
      <?php } ?>
    <?php } ?> 
    </div>
    </div>
	  
</div>
</div> 
</div>
</div>
</div> <!-- menu_wrapper ends -->