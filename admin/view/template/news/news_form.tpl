<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <a onclick="$('#form').attr('action', '<?php echo $action; ?>&redirect=add').submit()" class="btn btn-primary"><i class="fa fa-check"></i> <?php echo $button_save_add; ?></a>
                <a onclick="$('#form').attr('action', '<?php echo $action; ?>&redirect=edit').submit()" class="btn btn-primary"><i class="fa fa-check"></i> <?php echo $button_save_edit; ?></a>
                <a onclick="$('#form').attr('action', '<?php echo $action; ?>&redirect=exit').submit()" class="btn btn-primary"><i class="fa fa-check"></i> <?php echo $button_save_exit; ?></a>
                <a href="<?php echo $cancel; ?>" class="btn btn-primary"><i class="fa fa-reply"></i> <?php echo $button_cancel; ?></a>
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
        <?php if($error_warning) { ?>
            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
        <?php } ?>
        <?php if($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
            </div>
            <div class="panel-body">
                <form action="" method="post" enctype="multipart/form-data" id="form" class="form-horizontal">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
                        <li><a href="#tab-data" data-toggle="tab"><?php echo $tab_data; ?></a></li>
                        <li><a href="#tab-links" data-toggle="tab"><?php echo $tab_links; ?></a></li>
                        <li><a href="#tab-image" data-toggle="tab"><?php echo $tab_image; ?></a></li>
                        <li><a href="#tab-seo" data-toggle="tab"><?php echo $tab_seo; ?></a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab-general">
                            <ul class="nav nav-tabs" id="language">
                                <?php foreach ($languages as $language) { ?>
                                    <li>
                                        <a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?>
                                        </a></li>
                                <?php } ?>
                            </ul>
                            <div class="tab-content">
                                <?php foreach ($languages as $language) { ?>
                                    <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
                                        <div class="form-group required">
                                            <label class="col-sm-2 control-label" for="input-name<?php echo $language['language_id']; ?>"><?php echo $entry_name; ?></label>
                                            <div class="col-sm-10">
                                                <input type="text" name="news_description[<?php echo $language['language_id']; ?>][name]" value="<?php echo isset($news_description[$language['language_id']]) ? $news_description[$language['language_id']]['name'] : ''; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name<?php echo $language['language_id']; ?>" class="form-control" />
                                                <?php if(isset($error_name[$language['language_id']])) { ?>
                                                    <div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="news-description<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
                                            <div class="col-sm-10">
                                                <textarea name="news_description[<?php echo $language['language_id']; ?>][description]" placeholder="<?php echo $entry_description; ?>" id="news-description<?php echo $language['language_id']; ?>" class="form-control summernote"><?php echo isset($news_description[$language['language_id']]) ? $news_description[$language['language_id']]['description'] : ''; ?></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="input-tag<?php echo $language['language_id']; ?>"><span data-toggle="tooltip" title="<?php echo $help_tag; ?>"><?php echo $entry_tag; ?></span></label>
                                            <div class="col-sm-10">
                                                <input type="text" name="news_description[<?php echo $language['language_id']; ?>][tag]" value="<?php echo isset($news_description[$language['language_id']]) ? $news_description[$language['language_id']]['tag'] : ''; ?>" placeholder="<?php echo $entry_tag; ?>" id="input-tag<?php echo $language['language_id']; ?>" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab-data">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-date-available"><?php echo $entry_date_available; ?></label>
                                <div class="col-sm-3">
                                    <div class="input-group date">
                                        <input type="text" name="date_available" value="<?php echo $date_available; ?>" placeholder="<?php echo $entry_date_available; ?>" data-date-format="YYYY-MM-DD" id="input-date-available" class="form-control" />
                                        <span class="input-group-btn"><button class="btn btn-default" type="button">
                                                <i class="fa fa-calendar"></i></button></span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
                                <div class="col-sm-10">
                                    <select name="status" id="input-status" class="form-control">
                                        <?php if($status) { ?>
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
                                <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
                                <div class="col-sm-10">
                                    <input type="text" name="sort_order" value="<?php echo $sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab-links">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-category"><span data-toggle="tooltip" title="<?php echo $help_category; ?>"><?php echo $entry_category; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="category" value="" placeholder="<?php echo $entry_category; ?>" id="input-category" class="form-control" />
                                    <div id="news-category" class="well well-sm" style="height: 150px; overflow: auto;">
                                        <?php foreach ($news_categories as $news_category) { ?>
                                            <div id="news-category<?php echo $news_category['category_id']; ?>">
                                                <i class="fa fa-minus-circle"></i> <?php echo $news_category['name']; ?>
                                                <input type="hidden" name="news_category[]" value="<?php echo $news_category['category_id']; ?>" />
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-related"><span data-toggle="tooltip" title="<?php echo $help_related; ?>"><?php echo $entry_related; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="related" value="" placeholder="<?php echo $entry_related; ?>" id="input-related" class="form-control" />
                                    <div id="news-related" class="well well-sm" style="height: 150px; overflow: auto;">
                                        <?php foreach ($news_relateds as $news_related) { ?>
                                            <div id="news-related<?php echo $news_related['news_id']; ?>">
                                                <i class="fa fa-minus-circle"></i> <?php echo $news_related['name']; ?>
                                                <input type="hidden" name="news_related[]" value="<?php echo $news_related['news_id']; ?>" />
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab-image">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <td class="text-left"><?php echo $entry_image; ?></td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td class="text-left">
                                            <a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="table-responsive">
                                <table id="images" class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <td class="text-left"><?php echo $entry_additional_image; ?></td>
                                        <td class="text-right"><?php echo $entry_sort_order; ?></td>
                                        <td></td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php $image_row = 0; ?>
                                    <?php foreach ($news_images as $news_image) { ?>
                                        <tr id="image-row<?php echo $image_row; ?>">
                                            <td class="text-left">
                                                <a href="" id="thumb-image<?php echo $image_row; ?>" data-toggle="image" class="img-thumbnail"><img src="<?php echo $news_image['thumb']; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><input type="hidden" name="news_image[<?php echo $image_row; ?>][image]" value="<?php echo $news_image['image']; ?>" id="input-image<?php echo $image_row; ?>" />
                                            </td>
                                            <td class="text-right">
                                                <input type="text" name="news_image[<?php echo $image_row; ?>][sort_order]" value="<?php echo $news_image['sort_order']; ?>" placeholder="<?php echo $entry_sort_order; ?>" class="form-control" />
                                            </td>
                                            <td class="text-left">
                                                <button type="button" onclick="$('#image-row<?php echo $image_row; ?>').remove();" class="btn btn-danger">
                                                    <i class="fa fa-minus-circle"></i> <?php echo $button_remove; ?></button>
                                            </td>
                                        </tr>
                                        <?php $image_row++; ?>
                                    <?php } ?>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <td colspan="2"></td>
                                        <td class="text-left">
                                            <button type="button" onclick="addImage();" class="btn btn-primary">
                                                <i class="fa fa-plus-circle"></i> <?php echo $button_add; ?></button>
                                        </td>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab-seo">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-keyword"><span data-toggle="tooltip" title="<?php echo $help_keyword; ?>"><?php echo $entry_keyword; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="keyword" value="<?php echo $keyword; ?>" placeholder="<?php echo $help_url_seo; ?>" id="input-keyword" class="form-control" />
                                    <?php if($error_keyword) { ?>
                                    <div class="text-danger"><?php echo $error_keyword; ?></div>
                                    <?php } ?>
                                </div>
                            </div>
                            <ul class="nav nav-tabs" id="language-seo">
                                <?php foreach ($languages as $language) { ?>
                                <li>
                                    <a href="#language-seo<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?>
                                    </a></li>
                                <?php } ?>
                            </ul>
                            <div class="tab-content">
                                <?php foreach ($languages as $language) { ?>
                                <div class="tab-pane" id="language-seo<?php echo $language['language_id']; ?>">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-meta-title<?php echo $language['language_id']; ?>"><?php echo $entry_meta_title; ?></label>
                                        <div class="col-sm-10">
                                            <input type="text" name="news_description[<?php echo $language['language_id']; ?>][meta_title]" value="<?php echo isset($news_description[$language['language_id']]) ? $news_description[$language['language_id']]['meta_title'] : ''; ?>" placeholder="<?php echo $entry_meta_title; ?>" id="input-meta-title<?php echo $language['language_id']; ?>" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-meta-description<?php echo $language['language_id']; ?>"><?php echo $entry_meta_description; ?></label>
                                        <div class="col-sm-10">
                                            <textarea name="news_description[<?php echo $language['language_id']; ?>][meta_description]" rows="5" placeholder="<?php echo $entry_meta_description; ?>" id="input-meta-description<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($news_description[$language['language_id']]) ? $news_description[$language['language_id']]['meta_description'] : ''; ?></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-meta-keyword<?php echo $language['language_id']; ?>"><?php echo $entry_meta_keyword; ?></label>
                                        <div class="col-sm-10">
                                            <textarea name="news_description[<?php echo $language['language_id']; ?>][meta_keyword]" rows="5" placeholder="<?php echo $entry_meta_keyword; ?>" id="input-meta-keyword<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($news_description[$language['language_id']]) ? $news_description[$language['language_id']]['meta_keyword'] : ''; ?></textarea>
                                        </div>
                                    </div>
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>
    <link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
    <script type="text/javascript" src="view/javascript/summernote/opencart.js"></script>
    <script type="text/javascript"><!--
        // Category
        $('input[name=\'category\']').autocomplete({
            'source': function (request, response) {
                $.ajax({
                    url     : 'index.php?route=news/category/autocomplete&token=<?php echo $token; ?>&filter_name=' + encodeURIComponent(request),
                    dataType: 'json',
                    success : function (json) {
                        response($.map(json, function (item) {
                            return {
                                label: item['name'],
                                value: item['category_id']
                            }
                        }));
                    }
                });
            },
            'select': function (item) {
                $('input[name=\'category\']').val('');

                $('#news-category' + item['value']).remove();

                $('#news-category').append('<div id="news-category' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="news_category[]" value="' + item['value'] + '" /></div>');
            }
        });

        $('#news-category').delegate('.fa-minus-circle', 'click', function () {
            $(this).parent().remove();
        });

        // Related
        $('input[name=\'related\']').autocomplete({
            'source': function (request, response) {
                $.ajax({
                    url     : 'index.php?route=news/news/autocomplete&token=<?php echo $token; ?>&filter_name=' + encodeURIComponent(request),
                    dataType: 'json',
                    success : function (json) {
                        response($.map(json, function (item) {
                            return {
                                label: item['name'],
                                value: item['news_id']
                            }
                        }));
                    }
                });
            },
            'select': function (item) {
                $('input[name=\'related\']').val('');

                $('#news-related' + item['value']).remove();

                $('#news-related').append('<div id="news-related' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="news_related[]" value="' + item['value'] + '" /></div>');
            }
        });

        $('#news-related').delegate('.fa-minus-circle', 'click', function () {
            $(this).parent().remove();
        });
        //--></script>
    <script type="text/javascript"><!--
        var image_row = <?php echo $image_row; ?>;

        function addImage() {
            html = '<tr id="image-row' + image_row + '">';
            html += '  <td class="text-left"><a href="" id="thumb-image' + image_row + '"data-toggle="image" class="img-thumbnail"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a><input type="hidden" name="news_image[' + image_row + '][image]" value="" id="input-image' + image_row + '" /></td>';
            html += '  <td class="text-right"><input type="text" name="news_image[' + image_row + '][sort_order]" value="" placeholder="<?php echo $entry_sort_order; ?>" class="form-control" /></td>';
            html += '  <td class="text-left"><button type="button" onclick="$(\'#image-row' + image_row + '\').remove();"  class="btn btn-danger"><i class="fa fa-minus-circle"></i> <?php echo $button_remove; ?></button></td>';
            html += '</tr>';

            $('#images tbody').append(html);

            image_row++;
        }
        //--></script>
    <script type="text/javascript"><!--
        $('.date').datetimepicker({
            pickTime: false
        });

        $('.time').datetimepicker({
            pickDate: false
        });

        $('.datetime').datetimepicker({
            pickDate: true,
            pickTime: true
        });
        //--></script>
    <script type="text/javascript"><!--
        $('#language a:first').tab('show');
        $('#language-seo a:first').tab('show');
        //--></script>
</div>
<?php echo $footer; ?>
