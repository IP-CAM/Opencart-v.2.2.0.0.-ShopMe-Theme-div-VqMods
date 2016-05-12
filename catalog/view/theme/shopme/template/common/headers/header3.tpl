<div class="header_top_line_wrapper">
<div class="header_top_line container">
	<div class="row">
    <div class="welcome_message col-sm-6 mobile_center">
    <?php echo $text_welcome; ?>
    </div>
    <div class="mini_menu settings col-sm-6 text-right mobile_center">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    </div>
	</div>
</div>
</div>
<div class="container">
<div class="row header">
<div class="header_table">
<!-- logo -->
<div class="col-md-3 col-lg-3 tablet_center mobile_center">
<?php if ($logo) { ?>
  <div class="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
</div>
<!-- promo -->
<div class="col-md-3 col-lg-3 v_middle">
<div class="promo_message tablet_center mobile_center"><?php echo $shopme_top_promo_message; ?></div>
</div>
<!-- search -->
<div class="col-md-6 col-lg-6 v_middle text-right mobile_center">
<?php if($shopme_header_search == 'enabled') { ?><?php echo $search; ?><?php } ?>
<div>
</div>
</div>
</div>
</div>
</div> <!-- container ends -->
<div class="menu_wrapper">
<div class="sticky_wrapper sticky">
<div class="outer_container">
<div class="container">
<div class="menu_table">
    <div class="menu_cell">
    <div class="main_menu">
    <?php if ($shopme_menu_type == 'mega_menu') { ?>
      
      
       <ul><li><a class="v_menu_trigger plain"><i class="icon icon-menu"></i></a></li></ul>
      <?php echo $top_menu_pos; ?>
      
    <?php } else { ?>        
      
      <?php if ($categories) { ?>
      <ul><li><a class="v_menu_trigger plain"><i class="icon icon-menu"></i></a></li></ul> 
      <ul class="categories vertical">
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
      <div class="menu_cell menu_holder fill">
      <a class="mini_menu_trigger visible-xs visible-sm"><i class="fa fa-list"></i></a>
      <div class="main_menu links">
      <?php echo $header_mini_menu; ?>
      </div>
      </div>
      
      <div class="menu_cell right nowrap">
      <div class="wishlist_compare icons sm"><?php echo $header_wishlist_compare; ?></div>
      </div>
      <?php if($shopme_header_cart) { ?>
      <div class="menu_cell right nowrap">
      <?php echo $cart; ?>
      </div>
      <?php } ?>

</div>
</div> 
</div>
</div>
</div> <!-- menu_wrapper ends -->