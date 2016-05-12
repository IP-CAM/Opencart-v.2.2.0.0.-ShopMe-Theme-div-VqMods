<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
 <div class="page-header">
  <div class="container-fluid">
    
  <div class="pull-right">
  <?php if ($save_and_stay) { ?>
  <a class="btn btn-success" onclick="$('#save').val('stay');$('#form-faq').submit();"><i class="fa fa-check"></i> <?php echo $button_save_stay; ?></a>
  <?php } ?>
  <button type="submit" form="form-faq" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
  <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
  </div>
  
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
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
     <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-faq" class="form-horizontal">
        <input type="hidden" name="save" id="save" value="0">
          
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
          
          <div class="form-group" style="margin-bottom:30px;">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
                <input name="name" id="input-name" class="form-control" value="<?php echo $name; ?>" />
            </div>
          </div>
          
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-name"></label>
            <div class="col-sm-10">
                
                
               <a class="btn btn-primary" role="button" data-toggle="collapse" href="#collapseHelp" aria-expanded="false" aria-controls="collapseExample">View Help Block</a>
                
               <div class="collapse" id="collapseHelp" style="margin-top:10px;">
  				<div class="well">
                <h2>How do I use the module Shopme Custom Content?</h2>
                <p>This module is a multi purpose module for publishing content in your store front. You can use it to put plain texts, or use any of the template styles built in. To use you own styling, just set the <i>Template</i> as <i>Plain</i>. If you wish to use any of the templates shown below, here is how you should do.<br /><br /></p>
                
                <h3>Info Blocks 1 / Info Blocks 1 (Full Width)</h3>
                <p><img src="view/template/module/content_help/info1.png" alt="" /></p>
                <p>
                <b>How to set up this template:</b><br />
                <i>Template:</i> Info Blocks 1 or Info Blocks 1 (Full Width)<br />
                <i>Columns:</i> 1 - 5 Columns<br />
                <i>Title:</i> Leave blank<br />
                <i><b>On each block:</b></i><br />
                <i>Title:</i> Leave blank<br />
                <i>H4:</i> Any tagline, eg "Fast and Free Delivery"<br />
                <i>Icon:</i> Select your preferred one<br />
                <i>Content:</i> Leave blank<br /><br />
				</p>
                
                <h3>Info Blocks 2</h3>
                <p><img src="view/template/module/content_help/info2.png" alt="" /></p>
                <p>
                <b>How to set up this template:</b><br />
                <i>Template:</i> Info Blocks 2<br />
                <i>Columns:</i> 1 - 5 Columns<br />
                <i>Title:</i> Leave blank<br />
                <i><b>On each block:</b></i><br />
                <i>Title:</i> Leave blank<br />
                <i>H4:</i> Any tagline, eg "The highest&lt;/br&gt;product quality"<br />
                <i>Icon:</i> Select your preferred one<br />
                <i>Content (in code view):</i><br />&lt;p&gt;Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna.&lt;/p&gt;<br />
                &lt;a href=&quot;#&quot; class=&quot;btn btn-dark&quot;&gt;Read more&lt;/a&gt;<br /><br />
				</p>
                
                <h3>Info Blocks 3</h3>
                <p><img src="view/template/module/content_help/info3.png" alt="" /></p>
                <p>
                <b>How to set up this template:</b><br />
                <i>Template:</i> Info Blocks 1 or Info Blocks 1 (Full Width)<br />
                <i>Columns:</i> 1 - 6 Columns<br />
                <i>Title:</i> Leave blank<br />
                <i><b>On each block:</b></i><br />
                <i>Title:</i> Leave blank<br />
                <i>H4:</i> Any tagline, eg "The highest&lt;/br&gt;product quality"<br />
                <i>Icon:</i> Select your preferred one<br />
                <i>Content (optional) (in code view):</i> <br />&lt;p&gt;Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. &lt;a href=&quot;#&quot;&gt;Read more&lt;/a&gt;&lt;/p&gt;<br /><br />
				</p>
                
                
                
                <h3>Info Blocks 4</h3>
                <p><img src="view/template/module/content_help/info4.png" alt="" /></p>
                <p>
                <b>How to set up this template:</b><br />
                <i>Template:</i> Info Blocks 4<br />
                <i>Columns:</i> 1 Column<br />
                <i>Title:</i> Eg. "Why Customers Choose Us"<br />
                <i><b>On each block:</b></i><br />
                <i>Title:</i> Leave blank<br />
                <i>H4:</i> Any tagline, eg "The highest product quality"<br />
                <i>Icon:</i> Select your preferred one<br />
                <i>Content (in code view):</i><br />&lt;p&gt;Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna.&lt;/p&gt;<br /><br />
				</p>
                
                
                <h3>Call to action (Full width or Boxed)</h3>
                <p><img src="view/template/module/content_help/info5.png" alt="" /></p>
                <p>
                <b>How to set up this template:</b><br />
                <i>Template:</i> Call to action (Full width or Boxed)<br />
                <i>Columns:</i> 1 Column<br />
                <i>Title:</i> Leave blank<br />
                <i><b>On each block:</b></i><br />
                <i>Title:</i> Leave blank<br />
                <i>H4:</i> Leave blank<br />
                <i>Icon:</i> None<br />
                <i>Content (in code view):</i><br />
                &lt;div class=&quot;call-to-action&quot;&gt;<br />
                &lt;div class=&quot;left_side&quot;&gt;<br />
                &lt;h4&gt;Add your heading here&lt;/h4&gt;<br />
                &lt;p&gt;Add your sub line here&lt;/p&gt;<br />
                &lt;/div&gt;<br />
                &lt;div class=&quot;right_side&quot;&gt;<br />
                &lt;a class=&quot;btn btn-primary btn-lg&quot; href=&quot;#&quot;&gt;&lt;i class=&quot;icon icon-basket&quot;&gt;&lt;/i&gt; Read More&lt;/a&gt;<br />
                &lt;/div&gt;<br />
                &lt;/div&gt;<br /><br />
				</p>
                
              </div>
            </div>
                
            </div>
          </div>
          
          
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-template"><?php echo $entry_template; ?></label>
            <div class="col-sm-10">
              <select name="template" id="input-template" class="form-control">
                <?php if ($template == 'plain') { ?>
                <option value="plain" selected="selected"><?php echo $text_plain; ?></option>
                <?php } else { ?>
                <option value="plain"><?php echo $text_plain; ?></option>
                <?php } ?>
                <?php if ($template == 'info1') { ?>
                <option value="info1" selected="selected"><?php echo $text_info1; ?></option>
                <?php } else { ?>
                <option value="info1"><?php echo $text_info1; ?></option>
                <?php } ?>
                <?php if ($template == 'info1 full') { ?>
                <option value="info1 full" selected="selected"><?php echo $text_info1_full; ?></option>
                <?php } else { ?>
                <option value="info1 full"><?php echo $text_info1_full; ?></option>
                <?php } ?>
                <?php if ($template == 'info2') { ?>
                <option value="info2" selected="selected"><?php echo $text_info2; ?></option>
                <?php } else { ?>
                <option value="info2"><?php echo $text_info2; ?></option>
                <?php } ?>
                <?php if ($template == 'info3') { ?>
                <option value="info3" selected="selected"><?php echo $text_info3; ?></option>
                <?php } else { ?>
                <option value="info3"><?php echo $text_info3; ?></option>
                <?php } ?>
                <?php if ($template == 'info4') { ?>
                <option value="info4" selected="selected"><?php echo $text_info4; ?></option>
                <?php } else { ?>
                <option value="info4"><?php echo $text_info4; ?></option>
                <?php } ?>
                <?php if ($template == 'action boxed') { ?>
                <option value="action boxed" selected="selected"><?php echo $text_action1; ?></option>
                <?php } else { ?>
                <option value="action boxed"><?php echo $text_action1; ?></option>
                <?php } ?>
                <?php if ($template == 'action full') { ?>
                <option value="action full" selected="selected"><?php echo $text_action2; ?></option>
                <?php } else { ?>
                <option value="action full"><?php echo $text_action2; ?></option>
                <?php } ?>
              </select>
				<div id="template-info" class="alert alert-info" style="display:<?php if ($template == 'action full' || $template == 'info1 full') { echo 'block'; } else { echo 'none'; } ?>"><?php echo $text_action2_help; ?></div>
            </div>
          </div>
          
          
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-template"><?php echo $entry_columns; ?></label>
            <div class="col-sm-10">
              <select name="columns" id="input-status" class="form-control">
                <?php if ($columns == 'col-xs-12') { ?>
                <option value="col-xs-12" selected="selected"><?php echo $text_col1; ?></option>
                <?php } else { ?>
                <option value="col-xs-12"><?php echo $text_col1; ?></option>
                <?php } ?>
                
                <?php if ($columns == 'col-md-6') { ?>
                <option value="col-md-6" selected="selected"><?php echo $text_col2; ?></option>
                <?php } else { ?>
                <option value="col-md-6"><?php echo $text_col2; ?></option>
                <?php } ?>
                
                <?php if ($columns == 'col-md-4') { ?>
                <option value="col-md-4" selected="selected"><?php echo $text_col3; ?></option>
                <?php } else { ?>
                <option value="col-md-4"><?php echo $text_col3; ?></option>
                <?php } ?>
                
                <?php if ($columns == 'col-sm-6 col-md-3') { ?>
                <option value="col-sm-6 col-md-3" selected="selected"><?php echo $text_col4; ?></option>
                <?php } else { ?>
                <option value="col-sm-6 col-md-3"><?php echo $text_col4; ?></option>
                <?php } ?>
                
                <?php if ($columns == 'col-20') { ?>
                <option value="col-20" selected="selected"><?php echo $text_col5; ?></option>
                <?php } else { ?>
                <option value="col-20"><?php echo $text_col5; ?></option>
                <?php } ?>
                
                <?php if ($columns == 'col-sm-4 col-lg-2') { ?>
                <option value="col-sm-4 col-lg-2" selected="selected"><?php echo $text_col6; ?></option>
                <?php } else { ?>
                <option value="col-sm-4 col-lg-2"><?php echo $text_col6; ?></option>
                <?php } ?>
                
              </select>
            </div>
          </div>
          
          <div class="form-group">
          <label class="col-sm-2 control-label" for="input-title"><?php echo $entry_title; ?></label>
          <div class="col-sm-10">
          <?php foreach ($languages as $language) { ?>
          <div class="input-group">
          <span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['language_id']; ?>" /></span>
          <input type="text" class="form-control" name="module_title[<?php echo $language['language_id']; ?>]" value="<?php echo isset($module_title[$language['language_id']]) ? $module_title[$language['language_id']] : ''; ?>" />
		  </div>
		  <?php } ?>
          </div>
          </div> <!-- form-group ends -->

          
          <legend><h3 style="font-size:20px">Content Blocks</h3></legend>
          
        <div class="row">
            
         <div class="col-sm-2">
      		<ul class="nav nav-pills nav-stacked" id="section">
        		
                <?php $section_row = 1; ?>
                
                <?php foreach ($sections as $section) { ?>
        		<li><a href="#tab-section-<?php echo $section_row; ?>" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$('a[href=\'#tab-section-<?php echo $section_row; ?>\']').parent().remove(); $('#tab-section-<?php echo $section_row; ?>').remove(); $('#section a:first').tab('show');"></i> <?php echo $tab_section . ' ' . $section_row; ?></a></li>
        		<?php $section_row++; ?>
        		<?php } ?>
        		<li id="section-add" style="cursor:pointer"><a onclick="addSection();"><i class="fa fa-plus-circle"></i> <?php echo $text_add_section; ?></a></li> 
        	</ul>
        </div>
      
      	<div class="col-sm-10">
        
        
        <div class="tab-content first">
        <?php $section_row = 1; ?>
      	<?php foreach ($sections as $section) { ?>
           
		<div class="tab-pane" id="tab-section-<?php echo $section_row; ?>">
		<div class="tab-content">

          	<div id="language-<?php echo $section_row; ?>">
                  <ul class="nav nav-tabs" id="language<?php echo $section_row; ?>">
                    <?php foreach ($languages as $language) { ?>
                    <li><a href="#tab-section-<?php echo $section_row; ?>-<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                 </div>
               
               <div class="tab-content">
                <?php foreach ($languages as $language) { ?>
                <div class="tab-pane" id="tab-section-<?php echo $section_row; ?>-<?php echo $language['language_id']; ?>">
                
                <div class="form-vertical">
                
                <div class="control-group">
          		<label class="control-label"><?php echo $text_section_title; ?></label>
          		<div class="controls">
       	  		<input type="text" class="form-control" name="sections[<?php echo $section_row; ?>][title][<?php echo $language['language_id']; ?>]" value="<?php echo isset($section['title'][$language['language_id']]) ? $section['title'][$language['language_id']] : ''; ?>" />         
          		</div>
          		</div> <!-- form-group ends -->
                
                <div class="control-group">
          		<label class="control-label"><?php echo $text_section_icon; ?></label>
          		<div class="controls">
       	  		
                <select name="sections[<?php echo $section_row; ?>][icon][<?php echo $language['language_id']; ?>]" class="form-control icon-select">
                
                <?php if ($section['icon'][$language['language_id']] == '0') { ?>
                <option value="0" selected="selected">None</option>
                <?php } else { ?>
                <option value="0">None</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-basket') { ?>
                <option value="icon-basket" selected="selected">&#xe800; icon-basket</option>
                <?php } else { ?>
                <option value="icon-basket">&#xe800; icon-basket</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-note') { ?>
                <option value="icon-note" selected="selected">&#xe804; icon-note</option>
                <?php } else { ?>
                <option value="icon-note">&#xe804; icon-note</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-cog') { ?>
                <option value="icon-cog" selected="selected">&#xe805; icon-cog</option>
                <?php } else { ?>
                <option value="icon-cog">&#xe805; icon-cog</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-params') { ?>
                <option value="icon-params" selected="selected">&#xe806; icon-params</option>
                <?php } else { ?>
                <option value="icon-params">&#xe806; icon-params</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-calendar') { ?>
                <option value="icon-calendar" selected="selected">&#xe807; icon-calendar</option>
                <?php } else { ?>
                <option value="icon-calendar">&#xe807; icon-calendar</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-sound') { ?>
                <option value="icon-sound" selected="selected">&#xe808; icon-sound</option>
                <?php } else { ?>
                <option value="icon-sound">&#xe808; icon-sound</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-clock') { ?>
                <option value="icon-clock" selected="selected">&#xe809; icon-clock</option>
                <?php } else { ?>
                <option value="icon-clock">&#xe809; icon-clock</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-lightbulb') { ?>
                <option value="icon-lightbulb" selected="selected">&#xe80a; icon-lightbulb</option>
                <?php } else { ?>
                <option value="icon-lightbulb">&#xe80a; icon-lightbulb</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-tv') { ?>
                <option value="icon-tv" selected="selected">&#xe80b; icon-tv</option>
                <?php } else { ?>
                <option value="icon-tv">&#xe80b; icon-tv</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-beaker') { ?>
                <option value="icon-beaker" selected="selected">&#xe80c; icon-beaker</option>
                <?php } else { ?>
                <option value="icon-beaker">&#xe80c; icon-beaker</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-truck') { ?>
                <option value="icon-truck" selected="selected">&#xe80d; icon-truck</option>
                <?php } else { ?>
                <option value="icon-truck">&#xe80d; icon-truck</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-money') { ?>
                <option value="icon-money" selected="selected">&#xe80e; icon-money</option>
                <?php } else { ?>
                <option value="icon-money">&#xe80e; icon-money</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-shop') { ?>
                <option value="icon-shop" selected="selected">&#xe810; icon-shop</option>
                <?php } else { ?>
                <option value="icon-shop">&#xe810; icon-shop</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-diamond') { ?>
                <option value="icon-diamond" selected="selected">&#xe811; icon-diamond</option>
                <?php } else { ?>
                <option value="icon-diamond">&#xe811; icon-diamond</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-t-shirt') { ?>
                <option value="icon-t-shirt" selected="selected">&#xe812; icon-t-shirt</option>
                <?php } else { ?>
                <option value="icon-t-shirt">&#xe812; icon-t-shirt</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-wallet') { ?>
                <option value="icon-wallet" selected="selected">&#xe813; icon-wallet</option>
                <?php } else { ?>
                <option value="icon-wallet">&#xe813; icon-wallet</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-mail') { ?>
                <option value="icon-mail" selected="selected">&#xe816; icon-mail</option>
                <?php } else { ?>
                <option value="icon-mail">&#xe816; icon-mail</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-heart') { ?>
                <option value="icon-heart" selected="selected">&#xe817; icon-heart</option>
                <?php } else { ?>
                <option value="icon-heart">&#xe817; icon-heart</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-star') { ?>
                <option value="icon-star" selected="selected">&#xe818; icon-star</option>
                <?php } else { ?>
                <option value="icon-star">&#xe818; icon-star</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-user') { ?>
                <option value="icon-user" selected="selected">&#xe819; icon-user</option>
                <?php } else { ?>
                <option value="icon-user">&#xe819; icon-user</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-videocam') { ?>
                <option value="icon-videocam" selected="selected">&#xe81a; icon-videocam</option>
                <?php } else { ?>
                <option value="icon-videocam">&#xe81a; icon-videocam</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-camera') { ?>
                <option value="icon-camera" selected="selected">&#xe81b; icon-camera</option>
                <?php } else { ?>
                <option value="icon-camera">&#xe81b; icon-camera</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-photo') { ?>
                <option value="icon-photo" selected="selected">&#xe81c; icon-photo</option>
                <?php } else { ?>
                <option value="icon-photo">&#xe81c; icon-photo</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-lock') { ?>
                <option value="icon-lock" selected="selected">&#xe81e; icon-lock</option>
                <?php } else { ?>
                <option value="icon-lock">&#xe81e; icon-lock</option>
                <?php } ?>
                <?php if ($section['icon'][$language['language_id']] == 'icon-eye') { ?>
                <option value="icon-eye" selected="selected">&#xe81f; icon-eye</option>
                <?php } else { ?>
                <option value="icon-eye">&#xe81f; icon-eye</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-desktop') { ?>
                <option value="icon-desktop" selected="selected">&#xe820; icon-desktop</option>
                <?php } else { ?>
                <option value="icon-desktop">&#xe820; icon-desktop</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-mobile') { ?>
                <option value="icon-mobile" selected="selected">&#xe821; icon-mobile</option>
                <?php } else { ?>
                <option value="icon-mobile">&#xe821; icon-mobile</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-inbox') { ?>
                <option value="icon-inbox" selected="selected">&#xe823; icon-inbox</option>
                <?php } else { ?>
                <option value="icon-inbox">&#xe823; icon-inbox</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-globe') { ?>
                <option value="icon-globe" selected="selected">&#xe824; icon-globe</option>
                <?php } else { ?>
                <option value="icon-globe">&#xe824; icon-globe</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-tag') { ?>
                <option value="icon-tag" selected="selected">&#xe825; icon-tag</option>
                <?php } else { ?>
                <option value="icon-tag">&#xe825; icon-tag</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-thumbs-up') { ?>
                <option value="icon-thumbs-up" selected="selected">&#xe826; icon-thumbs-up</option>
                <?php } else { ?>
                <option value="icon-thumbs-up">&#xe826; icon-thumbs-up</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-cloud') { ?>
                <option value="icon-cloud" selected="selected">&#xe827; icon-cloud</option>
                <?php } else { ?>
                <option value="icon-cloud">&#xe827; icon-cloud</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-paper-plane') { ?>
                <option value="icon-paper-plane" selected="selected">&#xe828; icon-paper-plane</option>
                <?php } else { ?>
                <option value="icon-paper-plane">&#xe828; icon-paper-plane</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-comment') { ?>
                <option value="icon-comment" selected="selected">&#xe82a; icon-comment</option>
                <?php } else { ?>
                <option value="icon-comment">&#xe82a; icon-comment</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-pencil') { ?>
                <option value="icon-pencil" selected="selected">&#xe829; icon-pencil</option>
                <?php } else { ?>
                <option value="icon-pencil">&#xe829; icon-pencil</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-location') { ?>
                <option value="icon-location" selected="selected">&#xe82b; icon-location</option>
                <?php } else { ?>
                <option value="icon-location">&#xe82b; icon-location</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-cup') { ?>
                <option value="icon-cup" selected="selected">&#xe82c; icon-cup</option>
                <?php } else { ?>
                <option value="icon-cup">&#xe82c; icon-cup</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-doc') { ?>
                <option value="icon-doc" selected="selected">&#xe82e; icon-doc</option>
                <?php } else { ?>
                <option value="icon-doc">&#xe82e; icon-doc</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-key') { ?>
                <option value="icon-key" selected="selected">&#xe82f; icon-key</option>
                <?php } else { ?>
                <option value="icon-key">&#xe82f; icon-key</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-megaphone') { ?>
                <option value="icon-megaphone" selected="selected">&#xe831; icon-megaphone</option>
                <?php } else { ?>
                <option value="icon-megaphone">&#xe831; icon-megaphone</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-graduation-cap') { ?>
                <option value="icon-graduation-cap" selected="selected">&#xe832; icon-graduation-cap</option>
                <?php } else { ?>
                <option value="icon-graduation-cap">&#xe832; icon-graduation-cap</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'icon-fire') { ?>
                <option value="icon-fire" selected="selected">&#xe833; icon-fire</option>
                <?php } else { ?>
                <option value="icon-fire">&#xe833; icon-fire</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-anchor') { ?>
                <option value="fa fa-anchor" selected="selected">&#xf13d; fa-anchor</option>
                <?php } else { ?>
                <option value="fa fa-anchor">&#xf13d; fa-anchor</option>
                <?php } ?>

                <?php if ($section['icon'][$language['language_id']] == 'fa fa-angellist') { ?>
                <option value="fa fa-angellist" selected="selected">&#xf209; fa-angellist</option>
                <?php } else { ?>
                <option value="fa fa-angellist">&#xf209; fa-angellist</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-bar-chart') { ?>
                <option value="fa fa-bar-chart" selected="selected">&#xf080; fa-bar-chart</option>
                <?php } else { ?>
                <option value="fa fa-bar-chart">&#xf080; fa-bar-chart</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-bicycle') { ?>
                <option value="fa fa-bicycle" selected="selected">&#xf206; fa-bicycle</option>
                <?php } else { ?>
                <option value="fa fa-bicycle">&#xf206; fa-bicycle</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-birthday-cake') { ?>
                <option value="fa fa-birthday-cake" selected="selected">&#xf1fd; fa-birthday-cake</option>
                <?php } else { ?>
                <option value="fa fa-birthday-cake">&#xf1fd; fa-birthday-cake</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-btc') { ?>
                <option value="fa fa-btc" selected="selected">&#xf15a; fa-btc</option>
                <?php } else { ?>
                <option value="fa fa-btc">&#xf15a; fa-btc</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-building-o') { ?>
                <option value="fa fa-building-o" selected="selected">&#xf0f7; fa-building-o</option>
                <?php } else { ?>
                <option value="fa fa-building-o">&#xf0f7; fa-building-o</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-bullhorn') { ?>
                <option value="fa fa-bullhorn" selected="selected">&#xf0a1; fa-bullhorn</option>
                <?php } else { ?>
                <option value="fa fa-bullhorn">&#xf0a1; fa-bullhorn</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-bullseye') { ?>
                <option value="fa fa-bullseye" selected="selected">&#xf140; fa-bullseye</option>
                <?php } else { ?>
                <option value="fa fa-bullseye">&#xf140; fa-bullseye</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-calculator') { ?>
                <option value="fa fa-calculator" selected="selected">&#xf1ec; fa-calculator</option>
                <?php } else { ?>
                <option value="fa fa-calculator">&#xf1ec; fa-calculator</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-calendar') { ?>
                <option value="fa fa-calendar" selected="selected">&#xf073; fa-calendar</option>
                <?php } else { ?>
                <option value="fa fa-calendar">&#xf073; fa-calendar</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-certificate') { ?>
                <option value="fa fa-certificate" selected="selected">&#xf0a3; fa-certificate</option>
                <?php } else { ?>
                <option value="fa fa-certificate">&#xf0a3; fa-certificate</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-check') { ?>
                <option value="fa fa-check" selected="selected">&#xf00c; fa-check</option>
                <?php } else { ?>
                <option value="fa fa-check">&#xf00c; fa-check</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-check-square-o') { ?>
                <option value="fa fa-check-square-o" selected="selected">&#xf046; fa-check-square-o</option>
                <?php } else { ?>
                <option value="fa fa-check-square-o">&#xf046; fa-check-square-o</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-child') { ?>
                <option value="fa fa-child" selected="selected">&#xf1ae; fa-child</option>
                <?php } else { ?>
                <option value="fa fa-child">&#xf1ae; fa-child</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-comment-o') { ?>
                <option value="fa fa-comment-o" selected="selected">&#xf0e5; fa-comment-o</option>
                <?php } else { ?>
                <option value="fa fa-comment-o">&#xf0e5; fa-comment-o</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-compass') { ?>
                <option value="fa fa-compass" selected="selected">&#xf14e; fa-compass</option>
                <?php } else { ?>
                <option value="fa fa-compass">&#xf14e; fa-compass</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-credit-card') { ?>
                <option value="fa fa-credit-card" selected="selected">&#xf09d; fa-credit-card</option>
                <?php } else { ?>
                <option value="fa fa-credit-card">&#xf09d; fa-credit-card</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-facebook-official') { ?>
                <option value="fa fa-facebook-official" selected="selected">&#xf230; fa-facebook-official</option>
                <?php } else { ?>
                <option value="fa fa-facebook-official">&#xf230; fa-facebook-official</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-flag-o') { ?>
                <option value="fa fa-flag-o" selected="selected">&#xf11d; fa-flag-o</option>
                <?php } else { ?>
                <option value="fa fa-flag-o">&#xf11d; fa-flag-o</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-flask') { ?>
                <option value="fa fa-flask" selected="selected">&#xf0c3; fa-flask</option>
                <?php } else { ?>
                <option value="fa fa-flask">&#xf0c3; fa-flask</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-gift') { ?>
                <option value="fa fa-gift" selected="selected">&#xf06b; fa-gift</option>
                <?php } else { ?>
                <option value="fa fa-gift">&#xf06b; fa-gift</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-info') { ?>
                <option value="fa fa-info" selected="selected">&#xf129; fa-info</option>
                <?php } else { ?>
                <option value="fa fa-info">&#xf129; fa-info</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-life-ring') { ?>
                <option value="fa fa-life-ring" selected="selected">&#xf1cd; fa-life-ring</option>
                <?php } else { ?>
                <option value="fa fa-life-ring">&#xf1cd; fa-life-ring</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-mobile') { ?>
                <option value="fa fa-mobile" selected="selected">&#xf10b; fa-mobile</option>
                <?php } else { ?>
                <option value="fa fa-mobile">&#xf10b; fa-mobile</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-money') { ?>
                <option value="fa fa-money" selected="selected">&#xf0d6; fa-money</option>
                <?php } else { ?>
                <option value="fa fa-money">&#xf0d6; fa-money</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-smile-o') { ?>
                <option value="fa fa-smile-o" selected="selected">&#xf118; fa-smile-o</option>
                <?php } else { ?>
                <option value="fa fa-smile-o">&#xf118; fa-smile-o</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-suitcase') { ?>
                <option value="fa fa-suitcase" selected="selected">&#xf0f2; fa-suitcase</option>
                <?php } else { ?>
                <option value="fa fa-suitcase">&#xf0f2; fa-suitcase</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-sun-o') { ?>
                <option value="fa fa-sun-o" selected="selected">&#xf185; fa-sun-o</option>
                <?php } else { ?>
                <option value="fa fa-sun-o">&#xf185; fa-sun-o</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-thumb-tack') { ?>
                <option value="fa fa-thumb-tack" selected="selected">&#xf08d; fa-thumb-tack</option>
                <?php } else { ?>
                <option value="fa fa-thumb-tack">&#xf08d; fa-thumb-tack</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-ticket') { ?>
                <option value="fa fa-ticket" selected="selected">&#xf145; fa-ticket</option>
                <?php } else { ?>
                <option value="fa fa-ticket">&#xf145; fa-ticket</option>
                <?php } ?>
                
                <?php if ($section['icon'][$language['language_id']] == 'fa fa-trophy') { ?>
                <option value="fa fa-trophy" selected="selected">&#xf091; fa-trophy</option>
                <?php } else { ?>
                <option value="fa fa-trophy">&#xf091; fa-trophy</option>
                <?php } ?>
                
                </select>
            
          		</div>
          		</div> <!-- form-group ends -->
                
                <div class="control-group">
          		<label class="control-label"><?php echo $text_section_h3; ?></label>
          		<div class="controls">
       	  		<input type="text" class="form-control" name="sections[<?php echo $section_row; ?>][h3][<?php echo $language['language_id']; ?>]" value="<?php echo isset($section['h3'][$language['language_id']]) ? $section['h3'][$language['language_id']] : ''; ?>" />         
          		</div>
          		</div> <!-- form-group ends -->
                
                <div class="control-group">
                  <label class="control-label"><?php echo $text_input_block; ?></label>
                  <div class="controls">
                  <textarea class="form-control custom-control summernote" cols="3" name="sections[<?php echo $section_row; ?>][block][<?php echo $language['language_id']; ?>]" id="description-<?php echo $section_row; ?>-<?php echo $language['language_id']; ?>"><?php echo isset($section['block'][$language['language_id']]) ? $section['block'][$language['language_id']] : ''; ?></textarea>
                  </div>
                 </div> <!-- form-group ends -->

                </div> 
                
               </div>
              <?php } ?>
             </div>



          
          
          
          
          
          
            
         </div> <!-- tab-content ends -->
      	<?php $section_row++; ?>
      	</div>
      	<?php } ?> <!-- foreach sections ends -->
      
       </div>
      </div> <!-- col-sm-10 ends -->
      
     </form>
    </div>
   </div>
  </div>
 </div>
</div>

<script type="text/javascript"><!--
var section_row = <?php echo $section_row; ?>;

function addSection() {	

   	html  = '<div class="tab-pane" id="tab-section-' + section_row + '">';
	html += '<div class="tab-content">';
	html += '<div id="language-' + section_row + '">';
	html += '<ul class="nav nav-tabs" id="language-' + section_row + '">';
	<?php foreach ($languages as $language) { ?>
	html += '<li><a href="#tab-section-' + section_row + '-<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>';
	<?php } ?>
	html += '</ul>';
    html += '</div>';
	html += '<div class="tab-content">';
	<?php foreach ($languages as $language) { ?>
	html += '<div class="tab-pane" id="tab-section-' + section_row + '-<?php echo $language['language_id']; ?>">';
	
	html += '<div class="form-vertical">';
	html += '<div class="control-group">';
	html += '<label class="control-label"><?php echo $text_section_title; ?></label>';
	html += '<div class="controls">';
	html += '<input type="text" name="sections[' + section_row + '][title][<?php echo $language['language_id']; ?>]" class="form-control"/>';
	html += '</div>';
	html += '</div>';
	
	html += '<div class="control-group">';
	html += '<label class="control-label"><?php echo $text_section_icon; ?></label>';
	html += '<div class="controls">';
	html += '<select name="sections[' + section_row + '][icon][<?php echo $language['language_id']; ?>]" class="form-control icon-select">';
	html += '<option value="0">None</option>';
	html += '<option value="icon-basket">&#xe800; icon-basket</option>';
	html += '<option value="icon-note">&#xe804; icon-note</option>';
	html += '<option value="icon-cog">&#xe805; icon-cog</option>';
	html += '<option value="icon-params">&#xe806; icon-params</option>';
	html += '<option value="icon-calendar">&#xe807; icon-calendar</option>';
	html += '<option value="icon-sound">&#xe808; icon-sound</option>';
	html += '<option value="icon-clock">&#xe809; icon-clock</option>';
	html += '<option value="icon-lightbulb">&#xe80a; icon-lightbulb</option>';
	html += '<option value="icon-tv">&#xe80b; icon-tv</option>';
	html += '<option value="icon-beaker">&#xe80c; icon-beaker</option>';
	html += '<option value="icon-truck">&#xe80d; icon-truck</option>';
	html += '<option value="icon-money">&#xe80e; icon-money</option>';
	html += '<option value="icon-shop">&#xe810; icon-shop</option>';
	html += '<option value="icon-diamond">&#xe811; icon-diamond</option>';
	html += '<option value="icon-t-shirt">&#xe812; icon-t-shirt</option>';
	html += '<option value="icon-wallet">&#xe813; icon-wallet</option>';
	html += '<option value="icon-mail">&#xe816; icon-mail</option>';
	html += '<option value="icon-heart">&#xe817; icon-heart</option>';
	html += '<option value="icon-star">&#xe818; icon-star</option>';
	html += '<option value="icon-user">&#xe819; icon-user</option>';
	html += '<option value="icon-videocam">&#xe81a; icon-videocam</option>';
	html += '<option value="icon-camera">&#xe81b; icon-camera</option>';
	html += '<option value="icon-photo">&#xe81c; icon-photo</option>';
	html += '<option value="icon-lock">&#xe81e; icon-lock</option>';
	html += '<option value="icon-eye">&#xe81f; icon-eye</option>';
	html += '<option value="icon-desktop">&#xe820; icon-desktop</option>';
	html += '<option value="icon-mobile">&#xe821; icon-mobile</option>';
	html += '<option value="icon-inbox">&#xe823; icon-inbox</option>';
	html += '<option value="icon-globe">&#xe824; icon-globe</option>';
	html += '<option value="icon-tag">&#xe825; icon-tag</option>';
	html += '<option value="icon-thumbs-up">&#xe826; icon-thumbs-up</option>';
	html += '<option value="icon-cloud">&#xe827; icon-cloud</option>';
	html += '<option value="icon-paper-plane">&#xe828; icon-paper-plane</option>';
	html += '<option value="icon-comment">&#xe82a; icon-comment</option>';
	html += '<option value="icon-pencil">&#xe829; icon-pencil</option>';
	html += '<option value="icon-location">&#xe82b; icon-location</option>';
	html += '<option value="icon-cup">&#xe82c; icon-cup</option>';
	html += '<option value="icon-doc">&#xe82e; icon-doc</option>';
	html += '<option value="icon-key">&#xe82f; icon-key</option>';
	html += '<option value="icon-megaphone">&#xe831; icon-megaphone</option>';
	html += '<option value="icon-graduation-cap">&#xe832; icon-graduation-cap</option>';
	html += '<option value="icon-fire">&#xe833; icon-fire</option>';
	html += '<option value="fa fa-anchor">&#xf13d; fa-anchor</option>';
	html += '<option value="fa fa-angellist">&#xf209; fa-angellist</option>';
	html += '<option value="fa fa-bar-chart">&#xf080; fa-bar-chart</option>';
	html += '<option value="fa fa-bicycle">&#xf206; fa-bicycle</option>';
	html += '<option value="fa fa-birthday-cake">&#xf1fd; fa-birthday-cake</option>';
	html += '<option value="fa fa-btc">&#xf15a; fa-btc</option>';
	html += '<option value="fa fa-building-o">&#xf0f7; fa-building-o</option>';
	html += '<option value="fa fa-bullhorn">&#xf0a1; fa-bullhorn</option>';
	html += '<option value="fa fa-bullseye">&#xf140; fa-bullseye</option>';
	html += '<option value="fa fa-calculator">&#xf1ec; fa-calculator</option>';
	html += '<option value="fa fa-calendar">&#xf073; fa-calendar</option>';
	html += '<option value="fa fa-certificate">&#xf0a3; fa-certificate</option>';
	html += '<option value="fa fa-check">&#xf00c; fa-check</option>';
	html += '<option value="fa fa-check-square-o">&#xf046; fa-check-square-o</option>';
	html += '<option value="fa fa-child">&#xf1ae; fa-child</option>';
	html += '<option value="fa fa-comment-o">&#xf0e5; fa-comment-o</option>';
	html += '<option value="fa fa-compass">&#xf14e; fa-compass</option>';
	html += '<option value="fa fa-credit-card">&#xf09d; fa-credit-card</option>';
	html += '<option value="fa fa-facebook-official">&#xf230; fa-facebook-official</option>';
	html += '<option value="fa fa-flag-o">&#xf11d; fa-flag-o</option>';
	html += '<option value="fa fa-flask">&#xf0c3; fa-flask</option>';
	html += '<option value="fa fa-gift">&#xf06b; fa-gift</option>';
	html += '<option value="fa fa-info">&#xf129; fa-info</option>';
	html += '<option value="fa fa-life-ring">&#xf1cd; fa-life-ring</option>';
	html += '<option value="fa fa-mobile">&#xf10b; fa-mobile</option>';
	html += '<option value="fa fa-money">&#xf0d6; fa-money</option>';
	html += '<option value="fa fa-smile-o">&#xf118; fa-smile-o</option>';
	html += '<option value="fa fa-suitcase">&#xf0f2; fa-suitcase</option>';
	html += '<option value="fa fa-sun-o">&#xf185; fa-sun-o</option>';
	html += '<option value="fa fa-thumb-tack">&#xf08d; fa-thumb-tack</option>';
	html += '<option value="fa fa-ticket">&#xf145; fa-ticket</option>';
	html += '<option value="fa fa-trophy">&#xf091; fa-trophy</option>';
	html += '</select>';
	html += '</div>';
	html += '</div>';
	
	html += '<div class="form-vertical">';
	html += '<div class="control-group">';
	html += '<label class="control-label"><?php echo $text_section_h3; ?></label>';
	html += '<div class="controls">';
	html += '<input type="text" name="sections[' + section_row + '][h3][<?php echo $language['language_id']; ?>]" class="form-control"/>';
	html += '</div>';
	html += '</div>';
	html += '</div>';
	
	html += '<div class="control-group">';
	html += '<label class="control-label"><?php echo $text_input_block; ?></label>';
	html += '<div class="controls">';
	html += '<textarea name="sections[' + section_row + '][block][<?php echo $language['language_id']; ?>]" id="description-' + section_row + '-<?php echo $language['language_id']; ?>" class="form-control custom-control summernote" cols="3"></textarea>';
	html += '</div>';
	html += '</div>';
	html += '</div>';
	html += '</div>';
	<?php } ?>
	html += '</div>';
	html += '</div>';
	html += '</div>';        

	$('.tab-content.first').append(html);
		
	$('#section-add').before('<li><a href="#tab-section-' + section_row + '" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$(\'a[href=\\\'#tab-section-' + section_row + '\\\']\').parent().remove(); $(\'#tab-section-' + section_row + '\').remove(); $(\'#section a:first\').tab(\'show\');"></i> <?php echo $tab_section; ?> ' + section_row + '</a></li>');
	
	$('#section a[href=\'#tab-section-' + section_row + '\']').tab('show');
	
	<?php foreach ($languages as $language) { ?>
	$('#description-' + section_row + '-<?php echo $language['language_id']; ?>' ).summernote({ 
	height: 200,
	toolbar: [
    ['style', ['style']], // no style button
    ['style', ['bold', 'italic', 'underline', 'strikethrough', 'superscript', 'subscript', 'clear']],
    ['fontsize', ['fontsize']],
	['fontname', ['fontname']],
    ['color', ['color']],
    ['para', ['ul', 'ol', 'paragraph']],
    ['height', ['height']], 
	['table', ['table']], // no table button
    ['insert', ['picture', 'link', 'video', 'hr']], // no insert buttons
	['codeview', ['fullscreen', 'codeview']] //no help button
  	] });
	$('.tab-pane li:first-child a').tab('show');
	<?php } ?>
	
	section_row++;
}
//--></script>

<script type="text/javascript"><!--
function addGroup( section_row) {
	group_row = $('#tab-section-' + section_row + ' .group').length;
	
	html  = '<div id="group-row-' + section_row + '-' + group_row + '" class="group">';
	html += '<div id="language-' + section_row + '-' + group_row + '">';
	html += '<ul class="nav nav-tabs" id="language-' + section_row + '">';
	<?php foreach ($languages as $language) { ?>
    html += '  <li><a href="#tab-section-' + section_row + '-' + group_row + '-<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>';
	<?php } ?>
	html += '</ul>';
    html += '</div>';
	html += '<div class="tab-content">';
	<?php foreach ($languages as $language) { ?>
	html += '<div class="tab-pane" id="tab-section-' + section_row + '-' + group_row + '-<?php echo $language['language_id']; ?>">';
	
	html += '<div class="form-group">';
	html += '<label class="col-sm-2 control-label"><?php echo $text_input_question; ?></label>';
	html += '<div class="col-sm-10"><input type="text" name="sections[' + section_row + '][groups][' + group_row + '][title][<?php echo $language['language_id']; ?>]" class="form-control"/></div>';
	html += '</div>';
	html += '<div class="form-group">';
	html += '<label class="col-sm-2 control-label"><?php echo $text_section_icon; ?></label>';
	html += '<div class="col-sm-10">';
	html += '<select name="sections[' + section_row + '][groups][' + group_row + '][icon][<?php echo $language['language_id']; ?>]" class="form-control icon-select"/>';
	html += '<option value="icon-basket">&#xe800; icon-basket</option>';
	html += '<option value="icon-note">&#xe804; icon-note</option>';
	html += '<option value="icon-cog">&#xe805; icon-cog</option>';
	html += '<option value="icon-params">&#xe806; icon-params</option>';
	html += '<option value="icon-calendar">&#xe807; icon-calendar</option>';
	html += '<option value="icon-sound">&#xe808; icon-sound</option>';
	html += '<option value="icon-clock">&#xe809; icon-clock</option>';
	html += '<option value="icon-lightbulb">&#xe80a; icon-lightbulb</option>';
	html += '<option value="icon-tv">&#xe80b; icon-tv</option>';
	html += '<option value="icon-beaker">&#xe80c; icon-beaker</option>';
	html += '<option value="icon-truck">&#xe80d; icon-truck</option>';
	html += '<option value="icon-money">&#xe80e; icon-money</option>';
	html += '<option value="icon-shop">&#xe810; icon-shop</option>';
	html += '<option value="icon-diamond">&#xe811; icon-diamond</option>';
	html += '<option value="icon-t-shirt">&#xe812; icon-t-shirt</option>';
	html += '<option value="icon-wallet">&#xe813; icon-wallet</option>';
	html += '<option value="icon-mail">&#xe816; icon-mail</option>';
	html += '<option value="icon-heart">&#xe817; icon-heart</option>';
	html += '<option value="icon-star">&#xe818; icon-star</option>';
	html += '<option value="icon-user">&#xe819; icon-user</option>';
	html += '<option value="icon-videocam">&#xe81a; icon-videocam</option>';
	html += '<option value="icon-camera">&#xe81b; icon-camera</option>';
	html += '<option value="icon-photo">&#xe81c; icon-photo</option>';
	html += '<option value="icon-lock">&#xe81e; icon-lock</option>';
	html += '<option value="icon-eye">&#xe81f; icon-eye</option>';
	html += '<option value="icon-desktop">&#xe820; icon-desktop</option>';
	html += '<option value="icon-mobile">&#xe821; icon-mobile</option>';
	html += '<option value="icon-inbox">&#xe823; icon-inbox</option>';
	html += '<option value="icon-globe">&#xe824; icon-globe</option>';
	html += '<option value="icon-tag">&#xe825; icon-tag</option>';
	html += '<option value="icon-thumbs-up">&#xe826; icon-thumbs-up</option>';
	html += '<option value="icon-cloud">&#xe827; icon-cloud</option>';
	html += '<option value="icon-paper-plane">&#xe828; icon-paper-plane</option>';
	html += '<option value="icon-comment">&#xe82a; icon-comment</option>';
	html += '<option value="icon-pencil">&#xe829; icon-pencil</option>';
	html += '<option value="icon-location">&#xe82b; icon-location</option>';
	html += '<option value="icon-cup">&#xe82c; icon-cup</option>';
	html += '<option value="icon-doc">&#xe82e; icon-doc</option>';
	html += '<option value="icon-key">&#xe82f; icon-key</option>';
	html += '<option value="icon-megaphone">&#xe831; icon-megaphone</option>';
	html += '<option value="icon-graduation-cap">&#xe832; icon-graduation-cap</option>';
	html += '<option value="icon-fire">&#xe833; icon-fire</option>';
	html += '<option value="fa fa-anchor">&#xf13d; fa-anchor</option>';
	html += '<option value="fa fa-angellist">&#xf209; fa-angellist</option>';
	html += '<option value="fa fa-bar-chart">&#xf080; fa-bar-chart</option>';
	html += '<option value="fa fa-bicycle">&#xf206; fa-bicycle</option>';
	html += '<option value="fa fa-birthday-cake">&#xf1fd; fa-birthday-cake</option>';
	html += '<option value="fa fa-btc">&#xf15a; fa-btc</option>';
	html += '<option value="fa fa-building-o">&#xf0f7; fa-building-o</option>';
	html += '<option value="fa fa-bullhorn">&#xf0a1; fa-bullhorn</option>';
	html += '<option value="fa fa-bullseye">&#xf140; fa-bullseye</option>';
	html += '<option value="fa fa-calculator">&#xf1ec; fa-calculator</option>';
	html += '<option value="fa fa-calendar">&#xf073; fa-calendar</option>';
	html += '<option value="fa fa-certificate">&#xf0a3; fa-certificate</option>';
	html += '<option value="fa fa-check">&#xf00c; fa-check</option>';
	html += '<option value="fa fa-check-square-o">&#xf046; fa-check-square-o</option>';
	html += '<option value="fa fa-child">&#xf1ae; fa-child</option>';
	html += '<option value="fa fa-comment-o">&#xf0e5; fa-comment-o</option>';
	html += '<option value="fa fa-compass">&#xf14e; fa-compass</option>';
	html += '<option value="fa fa-credit-card">&#xf09d; fa-credit-card</option>';
	html += '<option value="fa fa-facebook-official">&#xf230; fa-facebook-official</option>';
	html += '<option value="fa fa-flag-o">&#xf11d; fa-flag-o</option>';
	html += '<option value="fa fa-flask">&#xf0c3; fa-flask</option>';
	html += '<option value="fa fa-gift">&#xf06b; fa-gift</option>';
	html += '<option value="fa fa-info">&#xf129; fa-info</option>';
	html += '<option value="fa fa-life-ring">&#xf1cd; fa-life-ring</option>';
	html += '<option value="fa fa-mobile">&#xf10b; fa-mobile</option>';
	html += '<option value="fa fa-money">&#xf0d6; fa-money</option>';
	html += '<option value="fa fa-smile-o">&#xf118; fa-smile-o</option>';
	html += '<option value="fa fa-suitcase">&#xf0f2; fa-suitcase</option>';
	html += '<option value="fa fa-sun-o">&#xf185; fa-sun-o</option>';
	html += '<option value="fa fa-thumb-tack">&#xf08d; fa-thumb-tack</option>';
	html += '<option value="fa fa-ticket">&#xf145; fa-ticket</option>';
	html += '<option value="fa fa-trophy">&#xf091; fa-trophy</option>';
	html += '</select>';
	html += '</div>';
	html += '</div>';
	html += '<div class="form-group">';
	html += '<label class="col-sm-2 control-label"><?php echo $text_input_block; ?></label>';
	html += '<div class="col-sm-10"><textarea name="sections[' + section_row + '][groups][' + group_row + '][description][<?php echo $language['language_id']; ?>]" id="description-' + section_row + '-' + group_row + '-<?php echo $language['language_id']; ?>" class="summernote-' + group_row + ' form-control"></textarea></div>';
	html += '</div>';
	html += '</div>';
	<?php } ?>
	html += '<button type="button" class="btn btn-danger pull-right" onclick="removegroup('+ section_row +',' + group_row +');"><span class="glyphicon glyphicon-trash"></span> <?php echo $button_remove; ?></button>';
	html += '<div class="clearfix"></div>';
	html += '<hr />';
	html += '</div>';
	
	$('#group-holder-' + section_row ).before(html);

	$('.summernote-' + group_row ).summernote({ height: 200 });
	$('.tab-pane li:first-child a').tab('show');
	
	group_row++;
}
	
function removeGroup(section_row, group_row){
	$('#group-row-' + section_row + '-' + group_row).remove();
}
//--></script> 

<script type="text/javascript"><!--
$('#section li:first-child a').tab('show');
//--></script>

<script type="text/javascript"><!--
<?php $section_row = 1; ?>
<?php $group_row = 0; ?>
<?php foreach ($sections as $section) { ?>
$('#language<?php echo $section_row; ?> li:first-child a').tab('show');
<?php $section_row++; ?>
<?php } ?> 
//--></script> 

<script type="text/javascript">
$('.summernote').focus(function( ){
$(this).summernote({ height: 200 });
});
</script>
<script type="text/javascript">
$(document).ready( function() {
  $('#input-template').bind('change', function (e) { 
    if( $('#input-template').val() == 'action full' || $('#input-template').val() == 'info1 full') {
      $('#template-info').show();
    }
    else{
      $('#template-info').hide();
    }         
  });
});
</script>
<style>
img {max-width:100%;height:auto !important;}
.form-vertical .control-group {
  margin-bottom:10px;
}

.form-vertical .control-group > label {
  text-align: left;
  margin-bottom:5px;
  padding-top:0;
}
small {font-weight:normal; font-size:11px;}
.alert {margin:5px 0;}

@font-face {
  font-family: 'fontello';
  src: url('view/template/module/content_help/fontello.eot?60124471');
  src: url('view/template/module/content_help/fontello.eot?60124471#iefix') format('embedded-opentype'),
       url('view/template/module/content_help/fontello.woff?60124471') format('woff'),
       url('view/template/module/content_help/fontello.ttf?60124471') format('truetype'),
       url('view/template/module/content_help/fontello.svg?60124471#fontello') format('svg');
}

.icon-select {
	font-family:FontAwesome, 'fontello', Arial, Helvetica, sans-serif;
	height:42px;
	font-size:18px;
}

</style>
<?php echo $footer; ?>