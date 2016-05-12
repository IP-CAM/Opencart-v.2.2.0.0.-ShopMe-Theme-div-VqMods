<div class="footer_modules">
<div class="container main">
<div class="row">
<?php $i = 0 ?>
<?php foreach ($modules as $module) { ?>
<?php if ($shopme_footer_columns == 'col-md-3 col-sm-6') { ?>
<div class="number<?php echo $i; ?>"></div>
<?php } ?>
<div class="<?php echo $shopme_footer_columns; ?> module">
<?php echo $module; ?>
</div>
<?php $i++ ?>
<?php } ?>
</div>
</div>
</div>



