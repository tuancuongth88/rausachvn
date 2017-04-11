<?php echo $header; ?>
<?php if ($success) { ?>
    <div class="container">
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div></div>
<?php } ?>
<?php if ($error_warning) { ?>
    <div class="container">
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div></div>
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

                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <td class="text-left" colspan="2"><?php echo $text_order_detail; ?></td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="text-left" style="width: 50%;"><?php if ($invoice_no) { ?>
                                    <b><?php echo $text_invoice_no; ?></b> <?php echo $invoice_no; ?><br />
                                <?php } ?>
                                <b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
                                <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
                            <td class="text-left" style="width: 50%;"><?php if ($payment_method) { ?>
                                    <b><?php echo $text_payment_method; ?></b> <?php echo $payment_method; ?><br />
                                <?php } ?>
                                <?php if ($shipping_method) { ?>
                                    <b><?php echo $text_shipping_method; ?></b> <?php echo $shipping_method; ?>
                                <?php } ?></td>
                        </tr>
                        </tbody>
                    </table>
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <td class="text-left" style="width: 50%; vertical-align: top;"><?php echo $text_payment_address; ?></td>
                            <?php if ($shipping_address) { ?>
                                <td class="text-left" style="width: 50%; vertical-align: top;"><?php echo $text_shipping_address; ?></td>
                            <?php } ?>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="text-left"><?php echo $payment_address; ?></td>
                            <?php if ($shipping_address) { ?>
                                <td class="text-left"><?php echo $shipping_address; ?></td>
                            <?php } ?>
                        </tr>
                        </tbody>
                    </table>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <td class="text-left"><?php echo $column_name; ?></td>
                                <td class="text-left"><?php echo $column_model; ?></td>
                                <td class="text-right"><?php echo $column_quantity; ?></td>
                                <td class="text-right"><?php echo $column_price; ?></td>
                                <td class="text-right"><?php echo $column_total; ?></td>
                                <?php if ($products) { ?>
                                    <td style="width: 20px;"></td>
                                <?php } ?>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach ($products as $product) { ?>
                                <tr>
                                    <td class="text-left"><?php echo $product['name']; ?>
                                        <?php foreach ($product['option'] as $option) { ?>
                                            <br />
                                            &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                                        <?php } ?></td>
                                    <td class="text-left"><?php echo $product['model']; ?></td>
                                    <td class="text-right"><?php echo $product['quantity']; ?></td>
                                    <td class="text-right"><?php echo $product['price']; ?></td>
                                    <td class="text-right"><?php echo $product['total']; ?></td>
                                    <td class="text-right" style="white-space: nowrap;"><?php if ($product['reorder']) { ?>
                                            <a href="<?php echo $product['reorder']; ?>" data-toggle="tooltip" title="<?php echo $button_reorder; ?>" class="button"><i class="fa fa-shopping-cart"></i></a>
                                        <?php } ?>
                                        <a href="<?php echo $product['return']; ?>" data-toggle="tooltip" title="<?php echo $button_return; ?>" class="button"><i class="fa fa-reply"></i></a></td>
                                </tr>
                            <?php } ?>
                            <?php foreach ($vouchers as $voucher) { ?>
                                <tr>
                                    <td class="text-left"><?php echo $voucher['description']; ?></td>
                                    <td class="text-left"></td>
                                    <td class="text-right">1</td>
                                    <td class="text-right"><?php echo $voucher['amount']; ?></td>
                                    <td class="text-right"><?php echo $voucher['amount']; ?></td>
                                    <?php if ($products) { ?>
                                        <td></td>
                                    <?php } ?>
                                </tr>
                            <?php } ?>
                            </tbody>
                            <tfoot>
                            <?php foreach ($totals as $total) { ?>
                                <tr>
                                    <td colspan="3"></td>
                                    <td class="text-right"><b><?php echo $total['title']; ?></b></td>
                                    <td class="text-right"><?php echo $total['text']; ?></td>
                                    <?php if ($products) { ?>
                                        <td></td>
                                    <?php } ?>
                                </tr>
                            <?php } ?>
                            </tfoot>
                        </table>
                    </div>
                    <?php if ($comment) { ?>
                        <table class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <td class="text-left"><?php echo $text_comment; ?></td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="text-left"><?php echo $comment; ?></td>
                            </tr>
                            </tbody>
                        </table>
                    <?php } ?>
                    <?php if ($histories) { ?>
                        <h3><?php echo $text_history; ?></h3>
                        <table class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <td class="text-left"><?php echo $column_date_added; ?></td>
                                <td class="text-left"><?php echo $column_status; ?></td>
                                <td class="text-left"><?php echo $column_comment; ?></td>
                            </tr>
                            </thead>
                            <tbody>
                            <?php if ($histories) { ?>
                                <?php foreach ($histories as $history) { ?>
                                    <tr>
                                        <td class="text-left"><?php echo $history['date_added']; ?></td>
                                        <td class="text-left"><?php echo $history['status']; ?></td>
                                        <td class="text-left"><?php echo $history['comment']; ?></td>
                                    </tr>
                                <?php } ?>
                            <?php } else { ?>
                                <tr>
                                    <td colspan="3" class="text-center"><?php echo $text_no_results; ?></td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    <?php } ?>
                    <div class="buttons clearfix">
                        <div class="pull-right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
                    </div>

                </div>
            </div>
            <?php echo $content_bottom; ?>
        </div>
    </div>
<?php echo $column_right; ?>
<?php echo $footer; ?>