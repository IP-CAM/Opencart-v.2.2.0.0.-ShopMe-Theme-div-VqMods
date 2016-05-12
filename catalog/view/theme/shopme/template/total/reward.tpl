<div class="col-sm-6 margin-b">
  <h3><?php echo $heading_title; ?></h3>
  <div class="bordered_content">
  <div class="padded">
  <div class="form-group">
  <p><?php echo $entry_reward; ?></p>
  <input type="text" name="reward" value="<?php echo $reward; ?>" id="input-reward" class="form-control" />
  </div>
  </div>
  <div class="bottom_buttons">
  <input type="submit" value="<?php echo $button_reward; ?>" id="button-reward" data-loading-text="<?php echo $text_loading; ?>"  class="btn btn-default" />
  </div>
</div>
</div>

<script type="text/javascript"><!--
$('#button-reward').on('click', function() {
	$.ajax({
		url: 'index.php?route=total/reward/reward',
		type: 'post',
		data: 'reward=' + encodeURIComponent($('input[name=\'reward\']').val()),
		dataType: 'json',
		beforeSend: function() {
			$('#button-reward').button('loading');
		},
		complete: function() {
			$('#button-reward').button('reset');
		},
		success: function(json) {
			$('.alert').remove();

			if (json['error']) {
				$('#content').parent().before('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');
			}

			if (json['redirect']) {
				location = json['redirect'];
			}
		}
	});
});
//--></script>