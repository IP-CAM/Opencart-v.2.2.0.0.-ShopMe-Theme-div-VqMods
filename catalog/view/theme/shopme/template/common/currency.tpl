<?php if (count($currencies) > 1) { ?>
<ul>
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['code'] == $code) { ?>
    <li class="has-sub"><a><?php echo $currency['code']; ?><i class="icon-down-dir"></i></a>
    <ul style="display:inline">
    <?php } ?>
    <?php } ?>
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['code'] == $code) { ?>
    <li><a class="current"><?php echo $currency['title']; ?></a></li>
    <?php } else { ?>
    <li><a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'code\']').attr('value', '<?php echo $currency['code']; ?>'); $('#currency').submit();"><?php echo $currency['title']; ?></a></li>
    <?php } ?>
    <?php } ?>
</ul>
</li>
</ul>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="currency">
<input type="hidden" name="code" value="" />
<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
<?php } ?>