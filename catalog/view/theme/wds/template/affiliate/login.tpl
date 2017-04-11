<?php echo $header; ?>
<?php if ($success) { ?>
    <div class="container">
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div></div>
<?php } ?>
<?php if ($error_warning) { ?>
    <div class="container">
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div></div>
<?php } ?>
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

                    <?php echo $text_description; ?>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="well">
                                <h2><?php echo $text_new_affiliate; ?></h2>
                                <p><?php echo $text_register_account; ?></p>
                                <a class="button" href="<?php echo $register; ?>"><?php echo $button_continue; ?></a></div>
                        </div>
                        <div class="col-sm-6">
                            <div class="well">
                                <h2><?php echo $text_returning_affiliate; ?></h2>
                                <p><strong><?php echo $text_i_am_returning_affiliate; ?></strong></p>
                                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                                        <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="input-password"><?php echo $entry_password; ?></label>
                                        <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                                        <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a> </div>
                                    <input type="submit" value="<?php echo $button_login; ?>" class="button" />
                                    <?php if ($redirect) { ?>
                                        <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                                    <?php } ?>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <?php echo $content_bottom; ?>
        </div>
    </div>
<?php echo $column_right; ?>
<?php echo $footer; ?>