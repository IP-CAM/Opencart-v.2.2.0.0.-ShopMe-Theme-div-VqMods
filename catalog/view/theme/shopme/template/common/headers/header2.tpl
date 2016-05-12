<div class="header_wrapper">
<div class="header_sticky">
<div class="outer_container">
<div class="container">
<div class="row header">
<!-- logo -->
<div class="col-sm-12 col-md-3 tablet_center mobile_center">
<?php if ($logo) { ?>
  <div class="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
</div>
<!-- links -->
<div class="mini_menu links col-sm-8 col-md-6 mobile_center">
    <a class="mini_menu_trigger visible-xs"><i class="fa fa-list"></i></a>
    <?php echo $header_mini_menu; ?>
</div>
<!-- language / currency -->
<div class="mini_menu settings col-sm-4 col-md-3 text-right mobile_center">
<?php echo $currency; ?>
<?php echo $language; ?>
</div>
<!-- search -->
<div class="col-sm-7 col-md-5 col-lg-6">
<?php if($shopme_header_search == 'enabled') { ?><?php echo $search; ?><?php } ?>
</div>
<!-- wishlist/compare & cart -->
<div class="col-sm-5 col-md-4 col-lg-3 text-right mobile_center">
<div class="wishlist_compare"><?php echo $header_wishlist_compare; ?></div>
<?php if ($shopme_header_cart == 'enabled') { echo $cart; } ?>
</div>

</div>
</div> <!-- container ends -->
</div>
</div>
</div>

<div class="menu_wrapper"></div>