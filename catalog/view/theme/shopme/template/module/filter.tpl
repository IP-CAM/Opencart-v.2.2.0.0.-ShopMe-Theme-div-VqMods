<div class="box">
  <h3><?php echo $heading_title; ?></h3>
  
  <div class="bordered_content">
  <div class="filter_group_holder">
    <?php foreach ($filter_groups as $filter_group) { ?>
    
      <div class="padded filter_group" id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
      <span><?php echo $filter_group['name']; ?></span>
        <?php foreach ($filter_group['filter'] as $filter) { ?>
        <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
        <label class="checkbox">
          <input name="filter[]" type="checkbox" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
          <span><?php echo $filter['name']; ?></span></label>
        <?php } else { ?>
        <label class="checkbox">
          <input name="filter[]" type="checkbox" value="<?php echo $filter['filter_id']; ?>" />
          <span><?php echo $filter['name']; ?></span></label>
        <?php } ?>
        <?php } ?>
      </div>
    <?php } ?>
    </div>
    <div class="bottom_buttons">
    <button type="button" id="button-filter" class="btn btn-primary"><?php echo $button_filter; ?></button>
    </div>
</div>
  
    
  
</div>
<script type="text/javascript"><!--
$('#button-filter').on('click', function() {
	filter = [];
	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});
	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script> 