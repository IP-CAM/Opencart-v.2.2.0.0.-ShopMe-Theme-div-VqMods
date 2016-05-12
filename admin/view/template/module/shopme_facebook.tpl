<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-shopme_facebook" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if (isset($error['error_warning'])) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error['error_warning']; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $heading_title; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-shopme_facebook" class="form-horizontal">
          
          
          <?php foreach ($languages as $language) { ?>
            <div class="form-group">
                <label class="col-sm-2 control-label"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> Module Title</label>
                <div class="col-sm-10">
                 <input type="text" name="shopme_facebook_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($shopme_facebook_title[$language['language_id']]) ? $shopme_facebook_title[$language['language_id']] : ''; ?>" class="form-control"/>
                </div>
            </div>
            <?php } ?>
            
            
            
            <div class="form-group">
            
            <div class="col-sm-10 col-sm-push-2">
              <p>Configure, and get your Page Plugin code <a href="https://developers.facebook.com/docs/plugins/page-plugin" target="_blank">Here</a></p>
            </div>
          </div>
          
          <div class="form-group">
            <div class="col-sm-10 col-sm-push-2">
            <b>Script</b> <i>(1. Include the JavaScript SDK on your page once, ideally right after the opening &lt;body&gt; tag.)</i>
              <textarea style="margin-top:5px" rows="8" name="shopme_facebook_script" class="form-control"><?php echo $shopme_facebook_script; ?></textarea>
            </div>
          </div>
          
          <div class="form-group">
            <div class="col-sm-10 col-sm-push-2">
            <b>HTML</b> <i>(2. Place the code for your plugin wherever you want the plugin to appear on your page.)</i>
              <textarea style="margin-top:5px" rows="8" name="shopme_facebook_html" class="form-control"><?php echo $shopme_facebook_html; ?></textarea>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="shopme_facebook_status" id="input-status" class="form-control">
                <?php if ($shopme_facebook_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>