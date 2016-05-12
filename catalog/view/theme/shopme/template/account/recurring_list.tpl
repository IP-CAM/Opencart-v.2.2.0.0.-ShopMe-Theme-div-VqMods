<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row">
  
  <?php echo $column_left; ?>
    
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-md-9 col-sm-8'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <div class="box">
      <div class="cart-info">
      <table>
        <?php if ($recurrings) { ?>
          <thead>
            <tr>
              <td class="text-left"><?php echo $column_recurring_id; ?></td>
              <td class="text-left"><?php echo $column_date_added; ?></td>
              <td class="text-left"><?php echo $column_status; ?></td>
              <td class="text-left"><?php echo $column_product; ?></td>
              <td class="text-right"><?php echo $column_action; ?></td>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($recurrings as $recurring) { ?>
              <tr>
                <td class="text-left">#<?php echo $recurring['id']; ?></td>
                <td class="text-left"><?php echo $recurring['date_added']; ?></td>
                <td class="text-left"><?php echo $status_types[$recurring['status']]; ?></td>
                <td class="text-left"><?php echo $recurring['name']; ?></td>
                <td class="text-right"><a href="<?php echo $recurring['href']; ?>" class="btn btn-info"><?php echo $button_view; ?></a></td>
              </tr>
            <?php } ?>
          </tbody>
          <?php } else { ?>
          <tr><td><p><?php echo $text_empty; ?></p></td></tr>
      <?php } ?>
      <?php if ($pagination) { ?>
      <tr><td><?php echo $pagination; ?></td></tr>
      <?php } ?>
        </table>
      </div>
      <div class="table_bottom_line text-right">
      <a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a>
      </div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>