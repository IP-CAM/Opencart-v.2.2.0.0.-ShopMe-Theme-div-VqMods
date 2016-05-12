<div class="box">
<?php if (!empty($module_title)){ ?>
<h3><?php echo $module_title; ?></h3>
<?php } ?>
<div class="bordered_content padded">
<?php if (!empty($welcome_message)){ ?>
<p class="margin-b-md"><?php echo $welcome_message; ?></p>
<?php } ?>
<div id="cf_respond"></div>
	<form class="form-horizontal" id="form-contact-form">
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
            <span class="input-group-addon captcha_wrap"><img src="index.php?route=module/shopme_contact/captcha" alt="" id="cf_captcha" /></span>
            <input type="text" name="cf_captcha" value="" class="form-control" />
            </div>
          </div>
        </div>
        <div class="form-group no_b_margin">
          <div class="col-sm-12"><button type="button" class="btn btn-default button_send"><?php echo $text_button; ?></button></div>
        </div>
        
      </form>
 </div>
</div>
<script type="text/javascript"><!--
$('.button_send').on('click', function() {
	$.ajax({
		url: 'index.php?route=module/shopme_contact/send_message',
		type: 'post',
		dataType: 'json',
		data: $("#form-contact-form").serialize(),
		
		complete: function() {
			$('#cf_captcha').attr('src', 'index.php?route=module/shopme_contact/captcha#'+new Date().getTime());
			$('input[name=\'cf_captcha\']').val('');
		},
		success: function(json) {
			$('.text-success.cf, .text-danger.cf').remove();
			if (json['error']) {
				$('#cf_respond').after('<p class="text-danger cf">' + json['error'] + '</p>');
			}
			if (json['success']) {
				$('#cf_respond').after('<p class="text-success cf">' + json['success'] + '</div>');
				$('input[name=\'cf_name\']').val('');
				$('input[name=\'cf_email\']').val('');
				$('textarea[name=\'cf_text\']').val('');
				$('input[name=\'cf_captcha\']').val('');
			}
		}
	});
});
//--></script>