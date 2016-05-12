<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-banner" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-banner" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="status" id="input-status" class="form-control">
                <?php if ($status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          
          
            <div class="form-group">
                <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?php echo $entry_title_h; ?>"><?php echo $entry_title; ?></span></label>
                <div class="col-sm-10">
                
                <?php foreach ($languages as $language) { ?>
                <div class="input-group">
                <span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
                 <input type="text" name="title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($title[$language['language_id']]) ? $title[$language['language_id']] : ''; ?>" class="form-control"/>
                 </div>
                 <?php } ?>
                 
                </div>
            </div>
            
          
          <div class="form-group clearfix">
            <label class="col-sm-2 control-label" for="input-name"><span data-toggle="tooltip" title="<?php echo $entry_tabs_help; ?>"><?php echo $entry_tabs; ?></span></label>
            <div class="col-sm-10">
            <div class="well well-sm" style="height: 150px; overflow: auto;">
            <?php foreach ($tabs as $keytab => $tab) { ?>
            <?php if (isset($selected_tabs['tabs']) && in_array($keytab, $selected_tabs['tabs'])) { ?>
             <label><input type="checkbox" name="selected_tabs[tabs][]" value="<?php echo $keytab; ?>" checked="checked" />
             <?php echo $tab['tab_title']; ?></label><br />
               <?php } else { ?>
             <label><input type="checkbox" name="selected_tabs[tabs][]" value="<?php echo $keytab; ?>" />
             <?php echo $tab['tab_title']; ?></label><br />
            <?php } ?>
           <?php } ?>
           </div>           
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_tab_pos; ?></label>
            <div class="col-sm-10">
              <select name="tab_pos" id="input-tab_pos" class="form-control">
                <?php if ($tab_pos == 'vertical') { ?>
                <option value="vertical" selected="selected"><?php echo $text_left; ?></option>
                <option value="0"><?php echo $text_top; ?></option>
                <?php } else { ?>
                <option value="vertical"><?php echo $text_left; ?></option>
                <option value="0" selected="selected"><?php echo $text_top; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-tab_style"><?php echo $entry_tab_style; ?></label>
            <div class="col-sm-10">
              <select name="tab_style" id="input-tab_style" class="form-control">
                <?php if ($tab_style == 'sm') { ?>
                <option value="sm" selected="selected"><?php echo $text_sm; ?></option>
                <?php } else { ?>
                <option value="sm"><?php echo $text_sm; ?></option>
                <?php } ?>
                <?php if ($tab_style == 'lg') { ?>
                <option value="lg" selected="selected"><?php echo $text_lg; ?></option>
                <?php } else { ?>
                <option value="lg"><?php echo $text_lg; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          
           <div class="form-group">
            <label class="col-sm-2 control-label" for="input-limit"><span data-toggle="tooltip" title="<?php echo $entry_limit_help; ?>"><?php echo $entry_limit; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="limit" value="<?php echo $limit; ?>"  id="input-limit" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-image_width"><?php echo $entry_width; ?></label>
            <div class="col-sm-10">
              <input type="text" name="image_width" value="<?php echo $image_width; ?>" id="input-image_width" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-image_height"><?php echo $entry_height; ?></label>
            <div class="col-sm-10">
              <input type="text" name="image_height" value="<?php echo $image_height; ?>" id="input-image_height" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-columns"><?php echo $entry_columns; ?></label>
            <div class="col-sm-10">
              <select name="columns" id="input-columns" class="form-control">
                
                <?php if ($columns == '0, 1], [400, 2], [600, 3], [992, 4], [1199, 6') { ?>
                <option value="0, 1], [400, 2], [600, 3], [992, 4], [1199, 6" selected="selected"><?php echo $text_grid6; ?></option>
                <?php } else { ?>
                <option value="0, 1], [400, 2], [600, 3], [992, 4], [1199, 6"><?php echo $text_grid6; ?></option>
                <?php } ?>
                
                <?php if ($columns == '0, 1], [400, 2], [600, 3], [992, 4], [1199, 5') { ?>
                <option value="0, 1], [400, 2], [600, 3], [992, 4], [1199, 5" selected="selected"><?php echo $text_grid5; ?></option>
                <?php } else { ?>
                <option value="0, 1], [400, 2], [600, 3], [992, 4], [1199, 5"><?php echo $text_grid5; ?></option>
                <?php } ?>
                
                <?php if ($columns == '0, 1], [400, 2], [600, 3], [768, 2], [992, 3], [1199, 4') { ?>
                <option value="0, 1], [400, 2], [600, 3], [768, 2], [992, 3], [1199, 4" selected="selected"><?php echo $text_grid4; ?></option>
                <?php } else { ?>
                <option value="0, 1], [400, 2], [600, 3], [768, 2], [992, 3], [1199, 4"><?php echo $text_grid4; ?></option>
                <?php } ?>
                
                <?php if ($columns == '0, 1], [400, 2], [992, 3') { ?>
                <option value="0, 1], [400, 2], [992, 3" selected="selected"><?php echo $text_grid3; ?></option>
                <?php } else { ?>
                <option value="0, 1], [400, 2], [992, 3"><?php echo $text_grid3; ?></option>
                <?php } ?>
                
                <?php if ($columns == '0, 1') { ?>
                <option value="0, 1" selected="selected"><?php echo $text_grid1; ?></option>
                <?php } else { ?>
                <option value="0, 1"><?php echo $text_grid1; ?></option>
                <?php } ?>
                
                <?php if ($columns == 'gridz') { ?>
                <option value="gridz" selected="selected"><?php echo $text_gridz; ?></option>
                <?php } else { ?>
                <option value="gridz"><?php echo $text_gridz; ?></option>
                <?php } ?>
                
              </select>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-carousel"><?php echo $entry_carousel; ?></label>
            <div class="col-sm-10">
              <select name="carousel" id="input-carousel" class="form-control">
                <?php if ($carousel) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><span data-toggle="tooltip" title="<?php echo $entry_countdown_h; ?>"><?php echo $entry_countdown; ?></span></label>
            <div class="col-sm-10">
              <select name="countdown" id="input-countdown" class="form-control">
                <?php if ($countdown) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          
          <div class="form-group">
                <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?php echo $entry_link_title_h; ?>"><?php echo $entry_link_title; ?></span></label>
                <div class="col-sm-10">
                <?php foreach ($languages as $language) { ?>
                <div class="input-group">
                <span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
                 <input type="text" name="link_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($link_title[$language['language_id']]) ? $link_title[$language['language_id']] : ''; ?>" class="form-control"/>
                 </div>
                 <?php } ?>
                </div>
            </div>
            
            <div class="form-group">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_link_href; ?></label>
            <div class="col-sm-10">
              <input type="text" name="link_href" value="<?php echo $link_href; ?>" placeholder="<?php echo $entry_link_href; ?>" id="input-link_href" class="form-control" />
            </div>
          </div>
          
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>