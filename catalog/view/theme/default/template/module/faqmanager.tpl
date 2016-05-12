<?php foreach($sections as $section) { ?>
<?php if ($section['title']){ ?>
<h3><?php echo $section['title']; ?></h3>
<?php } ?>
<div class="panel-group" id="section<?php echo $section['index']; ?>" role="tablist" aria-multiselectable="true">
  <?php foreach($section['groups'] as $key => $group){ ?>
  <div class="panel">
    <div class="panel-heading" role="tab">
      <h4 class="panel-title">
        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#section<?php echo $section['index']; ?>" href="#item<?php echo $section['index']; ?>-<?php echo $group['id']; ?>">
          <?php echo $group['title']; ?> <div class="btn btn-default"><i class="fa fa-plus"></i><i class="fa fa-minus"></i></div>
        </a>
      </h4>
    </div>
    <div id="item<?php echo $section['index']; ?>-<?php echo $group['id']; ?>" class="panel-collapse collapse" role="tabpanel">
      <div class="panel-body">
        <?php echo $group['description']; ?>
      </div>
    </div>
  </div>
  <?php } ?>
 </div>
<?php } ?>
<script type="text/javascript"><!--
$('.hidden.faq').parent().hide(); 
//--></script> 