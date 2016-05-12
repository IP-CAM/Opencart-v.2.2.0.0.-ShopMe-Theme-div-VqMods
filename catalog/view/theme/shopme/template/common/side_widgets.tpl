
<div class="side_widgets">

<!-- Facebook -->
<?php if ($shopme_facebook_widget) { ?>
<div class="widget">
<a class="btn btn-icon facebook"><i class="fa fa-facebook"></i></a>
<div class="widget_holder facebook">
<?php if (!empty($facebook_title)){ ?>
<h3 class="widget_title"><?php echo $facebook_title; ?></h3>
<?php } ?>
<div class="widget_content fb_wrap">
<?php echo $facebook_script; ?>
<?php echo $facebook_html; ?>
</div>
</div>
</div>
<?php } ?>

<!-- Twitter -->
<?php if ($shopme_twitter_widget) { ?>
<div class="widget">
<a class="btn btn-icon twitter"><i class="fa fa-twitter"></i></a>
<div class="widget_holder">
<?php if (!empty($twitter_title)){ ?>
<h3 class="widget_title"><?php echo $twitter_title; ?></h3>
<?php } ?>
<div class="widget_content">
<div class="tweecool"></div>
<?php if (!empty($button_title)){ ?>
<a class="external btn btn-default" href="https://twitter.com/<?php echo $widget_id; ?>/"><?php echo $button_title; ?></a>
<?php } ?>
</div>
</div>
</div>
<script>
$(document).ready(function() {
$(".widget .tweecool").tweecool({
username : '<?php echo $widget_id; ?>',
limit : <?php echo $limit; ?>
});
});
</script>
<?php } ?>

<!-- Contact form -->
<?php if ($shopme_contact_widget) { ?>
<div class="widget">
<a class="btn btn-icon contact"><i class="fa fa-envelope"></i></a>
<div class="widget_holder">
<?php if (!empty($contact_title)){ ?>
<h3 class="widget_title"><?php echo $contact_title; ?></h3>
<?php } ?>
<div class="widget_content">
<?php if (!empty($welcome_message)){ ?>
<p class="margin-b-md"><?php echo $welcome_message; ?></p>
<?php } ?>
<div id="cf_respond_side"></div>
	<form class="form-horizontal" id="form-contact-form-side">
        <div class="form-group">
          <div class="col-sm-12">
            <input type="text" name="cf_name" value="" class="form-control" placeholder="<?php echo $text_name; ?>" />
          </div>
        </div>
        <div class="form-group required">
          <div class="col-sm-12">
            <input type="text" name="cf_email" value="" class="form-control" placeholder="<?php echo $text_email; ?>" />
          </div>
        </div>
        <div class="form-group required">
          <div class="col-sm-12">
            <textarea name="cf_text" rows="4" class="form-control" placeholder="<?php echo $text_message; ?>"></textarea>
          </div>
        </div>
          <div class="col-sm-12">
          <div class="form-group required">
            <div class="input-group">
            <span class="input-group-addon captcha_wrap"><img src="index.php?route=module/shopme_contact/captcha" alt="" id="cf_captcha_side" /></span>
            <input type="text" name="cf_captcha" value="" id="input-cf_captcha" class="form-control" />
            </div>
          </div>
        </div>
        <div class="form-group no_b_margin">
          <div class="col-sm-12"><button type="button" class="btn btn-default button_send_side"><?php echo $text_button; ?></button></div>
        </div>
      </form>
 </div>
 </div>
</div>
<script type="text/javascript"><!--
$('.button_send_side').on('click', function() {
	$.ajax({
		url: 'index.php?route=module/shopme_contact/send_message',
		type: 'post',
		dataType: 'json',
		data: $("#form-contact-form-side").serialize(),
		complete: function() {
			$('#cf_captcha_side').attr('src', 'index.php?route=module/shopme_contact/captcha#'+new Date().getTime());
			$('input[name=\'cf_captcha\']').val('');
		},
		success: function(json) {
			$('.text-success.cf, .text-danger.cf').remove();
			if (json['error']) {
				$('#cf_respond_side').after('<p class="text-danger cf">' + json['error'] + '</p>');
			}
			if (json['success']) {
				$('#cf_respond_side').after('<p class="text-success cf">' + json['success'] + '</div>');
				
				$('input[name=\'cf_name\']').val('');
				$('input[name=\'cf_email\']').val('');
				$('textarea[name=\'cf_text\']').val('');
				$('input[name=\'cf_captcha\']').val('');
			}
		}
	});
});
//--></script>
<?php } ?>

<!-- Location -->
<?php if ($shopme_location_widget) { ?>
<div class="widget">
<a class="btn btn-icon location"><i class="fa fa-map-marker"></i></a>
<div class="widget_holder">
<h3 class="widget_title"><?php echo $text_location; ?></h3>
<div class="widget_content location">
<div class="contact_details">
<p class="icon_holder"><?php echo $address; ?><i class="fa fa-map-marker light_color"></i></p>
<?php if ($shopme_google_map) { ?>
<?php echo html_entity_decode($shopme_google_map, ENT_QUOTES, 'UTF-8'); ?>
<?php } ?>
<p class="icon_holder"><?php echo $telephone; ?><i class="fa fa-phone light_color"></i></p>
<?php if ($fax) { ?>
<p class="icon_holder"><?php echo $fax; ?><i class="fa fa-fax light_color"></i></p>
<?php } ?>
<?php if ($open) { ?>
<p class="icon_holder"><?php echo $open; ?><i class="fa fa-clock-o light_color"></i></p>
<?php } ?>
</div>
</div>
</div>
</div>
<?php } ?>

</div> <!-- .side_widgets ends -->