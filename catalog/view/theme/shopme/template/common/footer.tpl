<div class="clearfix footer_margin"></div>
<?php echo $footer_modules; ?>

<div class="footer_wrapper">
<div class="container">
<div class="row footer">
	<div class="col-md-3 col-sm-6">
    <div class="custom_block">
    <?php echo $shopme_footer_custom_block; ?>
    </div>
    </div>
  <div class="col-md-3 col-sm-6">
    <h3><?php echo $text_information; ?></h3>
    <ul>
    <?php if ($informations) { ?>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
      <?php } ?>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
    </ul>
  </div>
  <div class="clearfix visible-sm"></div>
  <div class="col-md-3 col-sm-6">
    <h3><?php echo $text_extra; ?></h3>
    <ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
  <div class="col-md-3 col-sm-6">
    <h3><?php echo $text_account; ?></h3>
    <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>
</div>
</div>
</div> <!-- .footer_wrapper ends --> 
  <div class="bottom_line">
  <div class="container text-center"> 
  <div class="scroll_to_top"><a class="scroll_top arrow_icon tablet_hide"><i class="fa fa-angle-up"></i></a></div>
  <?php if (isset($shopme_footer_payment_icon)) { ?>
   <div id="footer_payment_icon"><img src="image/<?php echo $shopme_footer_payment_icon; ?>" alt="" /></div>
   <?php } ?> 
   <div id="powered"><?php echo $powered; ?></div>
   </div>
  </div>

</div>  <!-- .outer_container ends -->
<!-- Side widgets -->
<?php if ($shopme_facebook_widget || $shopme_twitter_widget || $shopme_contact_widget || $shopme_location_widget) { echo $side_widgets; } ?>
<!-- Resources dont needed until page load -->
<script type="text/javascript" src="catalog/view/theme/shopme/js/jquery.cookie.js"></script>

<?php if ($shopme_use_retina) { ?>
<script type="text/javascript" src="catalog/view/theme/shopme/js/retina.min.js"></script>
<?php } ?>
<?php echo $live_search; ?>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</body></html>