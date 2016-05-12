<!-- Cookie Control -->
<?php if((!isset($_COOKIE['cookie_check'])) && $shopme_use_cookie){ ?>
<div class="bar cookie">
<div class="container">
<span class="message">
<?php echo $shopme_cookie_message; ?>
</span>
<div class="bar_buttons">
<a class="btn btn-sm btn-primary btn-accept"><?php echo $shopme_button_accept_text; ?></a>&nbsp;
<a href="<?php echo $shopme_readmore_url; ?>" class="btn btn-sm btn-dark"><?php echo $shopme_readmore_text; ?></a>
</div>
</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
	$.cookie( 'cookie_check' , 1 , { expires: 365 , path: '/' });
	$('.btn-accept').click(function() {
		$('.bar').fadeOut(300);
	});
});
</script>
<?php } ?>

<!-- Old IE Control -->
<?php if(isset( $_SERVER['HTTP_USER_AGENT'])){ ?>
<?php if((preg_match('/(?i)msie [2-8]/',$_SERVER['HTTP_USER_AGENT'])) && $shopme_use_ie) { ?>
<div class="bar ie">
<div class="container">
<span class="message">
<?php echo $shopme_ie_message; ?>
</span>
<?php if ($shopme_ie_url) { ?>
<div class="bar_buttons">
<a href="<?php echo $shopme_ie_url; ?>" target="_blank" class="btn btn-sm btn-dark"><?php echo $shopme_ie_update_message; ?></a>
</div>
<?php } ?>
</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
		$('.bar.cookie').hide();
});
</script>
<?php } ?>
<?php } ?>