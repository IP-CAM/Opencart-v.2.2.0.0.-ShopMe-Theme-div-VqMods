<div class="confirm"><label><?php if ($text_agree) { ?>
  <?php echo $text_agree; ?>
  <?php if ($agree) { ?>&nbsp;&nbsp;
  <input type="checkbox" name="agree" value="1" checked="checked" />
  <?php } else { ?>
  <input type="checkbox" name="agree" value="1" />
  <?php } ?>
<?php } ?></label>&nbsp;&nbsp;
<a id="button-payment-method" class="btn btn-primary"><?php echo $button_continue; ?></a></div>