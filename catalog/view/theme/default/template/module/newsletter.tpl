<?php if (($type) == ('module')) { ?>
<h3><?php echo $heading_title; ?></h3>
<div class="bordered_content padded box newsletter_module">
<?php echo $html; ?>
<div id="respond" class="<?php echo $module; ?>"></div>
<div class="input-group">
<input type="text" id="email<?php echo $module; ?>" name="email" class="form-control" placeholder="<?php echo $entry_email; ?>" />
<span id="button-subscribe" class="<?php echo $module; ?> input-group-addon btn btn-primary"><i class="fa fa-envelope"></i></span>
</div>
<?php if ($unsubscribe) { ?>
<div class="unsubscribe"><a id="button-unsubscribe" class="<?php echo $module; ?>"><?php echo $button_unsubscribe; ?></a></div>
<?php } ?>
</div>
<?php } else if (($type) == ('popup')) { ?>
<div class="init_popup">
<div style="display: none;" class="window_holder">
<div class="newsletter_module popup">
<a class="popup_close"><i class="fa fa-times"></i></a>
<h3><?php echo $heading_title; ?></h3>
<div class="table <?php if ($image) { echo 'split'; } ?>">
<?php if ($image) { ?>
<div class="table-cell">
<img src="<?php echo $image; ?>" alt="" />
</div>
<?php } ?>
<div class="table-cell">
<?php echo $html; ?>
<div id="respond" class="<?php echo $module; ?>"></div>
<div class="form-group">
<input id="email<?php echo $module; ?>" name="email" class="form-control" placeholder="<?php echo $entry_email; ?>" />
</div>
<a id="button-subscribe" class="<?php echo $module; ?> btn btn-primary"><?php echo $button_subscribe; ?></a>
<?php if ($unsubscribe) { ?>
<a id="button-unsubscribe" class="<?php echo $module; ?> btn btn-default"><?php echo $button_unsubscribe; ?></a>
<?php } ?>
</div>
</div>
</div>
</div>
</div>
<div class="popup_mask popup_close" style="display: none;"></div>
<?php if(!isset($_COOKIE['newsletter_already_popup'])) { ?>
<script type="text/javascript">
$(document).ready(function() {	
if ($(window).width() > 767) {
	setTimeout(function() {	
		$('.popup_mask').fadeTo(750,0.5);	
		$('.window_holder').show();
		setTimeout(function() { $('.window_holder').addClass('active'); }, 750);
	}, <?php echo $delay; ?>);
		
	$('.popup_close').click(function () {
		$('.popup_mask').hide();
		$('.window_holder').hide();
	});	
};
<?php if ($only_once) { ?>
$.cookie( 'newsletter_already_popup' , 1 , { expires: 14 , path: '/' });
<?php } ?>
});
</script>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('.newsletter_box input[name=\'email<?php echo $module; ?>\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-subscribe<?php echo $module; ?>').trigger('click');
	}
});
$('#button-subscribe.<?php echo $module; ?>').on('click', function() {
	$.ajax({
		url: 'index.php?route=module/newsletter/subscribe',
		type: 'post',
		dataType: 'json',
		data: 'email=' + encodeURIComponent($('input[id=\'email<?php echo $module; ?>\']').val()),
		success: function(json) {
			$('.text-success, .text-danger').remove();
			if (json['error']) {
				$('#respond.<?php echo $module; ?>').after('<span class="text-danger">' + json['error'] + '</span>');
			}
			if (json['success']) {
				$('#respond.<?php echo $module; ?>').after('<span class="text-success">' + '<?php echo $success_message; ?>' + '</span>');
				$('input[id=\'email<?php echo $module; ?>\']').val('');
			}}
});
});
</script>
<script type="text/javascript"><!--
$('#button-unsubscribe.<?php echo $module; ?>').on('click', function() {
	$.ajax({
		url: 'index.php?route=module/newsletter/unsubscribe',
		type: 'post',
		dataType: 'json',
		data: 'email=' + encodeURIComponent($('input[id=\'email<?php echo $module; ?>\']').val()),
		success: function(json) {
			$('.text-success, .text-danger').remove();
			if (json['error']) {
				$('#respond.<?php echo $module; ?>').after('<span class="text-danger">' + json['error'] + '</span>');
			}
			if (json['success']) {
				$('#respond.<?php echo $module; ?>').after('<span class="text-success">' + json['success'] + '</span>');
				$('input[id=\'email<?php echo $module; ?>\']').val('');
			}}
});
});
</script>
