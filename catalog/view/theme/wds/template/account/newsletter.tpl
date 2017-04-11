<?php echo $header; ?>
    <!-- BREADCRUMB ================================================== -->
    <div class="breadcrumb">
        <div class="container">
            <div class="clearfix">
                <ul>
                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                    <?php } ?>
                </ul>
            </div>
        </div>
    </div>
    <!-- MAIN CONTENT ================================================== -->
    <div class="main-content full-width home">
        <div class="container">
            <?php echo $content_top; ?>
            <div class="row">
                <div class="col-sm-12 center-column">
                    <h2 id="title-page"><?php echo $heading_title; ?></h2>

                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo $entry_newsletter; ?></label>
                                <div class="col-sm-10">
                                    <?php if ($newsletter) { ?>
                                        <label class="radio-inline">
                                            <input type="radio" name="newsletter" value="1" checked="checked" />
                                            <?php echo $text_yes; ?> </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="newsletter" value="0" />
                                            <?php echo $text_no; ?></label>
                                    <?php } else { ?>
                                        <label class="radio-inline">
                                            <input type="radio" name="newsletter" value="1" />
                                            <?php echo $text_yes; ?> </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="newsletter" value="0" checked="checked" />
                                            <?php echo $text_no; ?></label>
                                    <?php } ?>
                                </div>
                            </div>
                        </fieldset>
                        <div class="buttons clearfix">
                            <div class="pull-left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
                            <div class="pull-right">
                                <input type="submit" value="<?php echo $button_continue; ?>" class="button" />
                            </div>
                        </div>
                    </form>

                </div>
            </div>
            <?php echo $content_bottom; ?>
        </div>
    </div>
<?php echo $column_right; ?>
<?php echo $footer; ?>