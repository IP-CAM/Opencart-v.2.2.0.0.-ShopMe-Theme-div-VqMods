<?php if (count($languages) > 1) { ?>
    <ul>
    <?php foreach ($languages as $language) { ?>
    <?php if ($language['code'] == $code) { ?>
    <li class="has-sub"><a><img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /><?php echo $language['name']; ?><i class="icon-down-dir"></i></a>
    <ul style="display:inline">
    <?php } ?>
    <?php } ?>
    
    <?php foreach ($languages as $language) { ?>
    <?php if ($language['code'] == $code) { ?>
    <li><a class="current"><img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /><?php echo $language['name']; ?></a></li>
    <?php } else { ?>
    <li><a onclick="$('input[name=\'code\']').attr('value', '<?php echo $language['code']; ?>'); $('#language').submit();">
    <img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /><?php echo $language['name']; ?></a></li>
    <?php } ?>
    <?php } ?>
</ul>
</li>
</ul>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
<input type="hidden" name="code" value="" />
<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
<?php } ?>