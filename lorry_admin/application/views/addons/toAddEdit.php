<link href="<?php print base_url(); ?>css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">


<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Addons Add</h2>
        <ol class="breadcrumb">
            <li>
                <a href="<?php print base_url() . 'dashboard'; ?>">Dashboard</a>
            </li>
            <li>
                <a href="<?php print base_url() . 'addons'; ?>">Add Ons</a>
            </li>
            <li class="active">
                <a href="#"><strong>Add Ons Add</strong></a>
            </li>
        </ol>
    </div>
    <div class="col-lg-2">
    </div>
</div><?php


$addOnId = 0;
if(isset($arrAddonsList['recid'])) {
    $addOnId = $arrAddonsList['recid'];
}

$txtCompanyName = '';
if(isset($arrAddonsList['companyname'])) {
    $txtCompanyName = $arrAddonsList['companyname'];
}

$txtProductName = '';
if(isset($arrAddonsList['productname'])) {
    $txtProductName = $arrAddonsList['productname'];
}

$txtDetails = '';
if(isset($arrAddonsList['details'])) {
    $txtDetails = $arrAddonsList['details'];
}

$txtPrice = '';
if(isset($arrAddonsList['price'])) {
    $txtPrice = $arrAddonsList['price'];
}

$txtSize = '';
if(isset($arrAddonsList['size'])) {
    $txtSize = $arrAddonsList['size'];
}

$txtStockCount = '';
if(isset($arrAddonsList['stockcount'])) {
    $txtStockCount = $arrAddonsList['stockcount'];
}


$txtWeight = '';
if(isset($arrAddonsList['weight'])) {
    $txtWeight = $arrAddonsList['weight'];
}



?><div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Add Add Ons</h5>
                    <div class="ibox-tools">
                        <a href="<?php print base_url() . 'addons'; ?>">
                            <button type="button" class="btn btn-success">Back</button>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <form id="frmAddOnsAddEdit" method="post" class="form-horizontal" action="<?php print base_url() . 'addons/addUpdate'; ?>" >
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Company Name</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtCompanyName" id="txtCompanyName" value="<?php print $txtCompanyName; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Product Name</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtProductName" id="txtProductName" value="<?php print $txtProductName; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Details</label>

                            <div class="col-sm-10">
                                <textarea class="form-control" name="txtDetails" id="txtDetails" rows="5"><?php print $txtDetails; ?></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Price</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtPrice" id="txtPrice" value="<?php print $txtPrice; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Size</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtSize" id="txtSize" value="<?php print $txtSize; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Weight</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtWeight" id="txtWeight" value="<?php print $txtWeight; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Stock</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control"  name="txtStockCount" id="txtStockCount" value="<?php print $txtStockCount; ?>">
                            </div>
                        </div>
                        
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <a href="<?php print base_url() . 'addons'; ?>" title="cancel">
                                    <button class="btn btn-white" type="button">Cancel</button>
                                </a>
                                <button class="btn btn-primary" type="submit">Save changes</button>
                            </div>
                        </div>
                        <input type="hidden" name="hidAddOnId" id="hidAddOnId" value="<?php print $addOnId; ?>" />
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    $(document).ready(function() {
        $('#frmAddOnsAddEdit').validate({
            rules: {
                txtCompanyName:{
                    required: true
                },
                txtProductName: {
                    required: true
                },
                txtDetails: {
                    required: true
                },
                txtPrice: {
                    required: true
                },
                txtWeight: {
                    required: true
                },
                txtStockCount: {
                    required: true
                },
                txtSize: {
                    required: true
                }
            },
            messages: {
                txtCompanyName:{
                    required: "Please enter Company name"
                },
                txtProductName: {
                    required: "Please enter Product Name"
                },
                txtDetails: {
                    required: "Please enter Detail"
                },
                txtPrice: {
                    required: "Please enter Price"
                },
                txtWeight: {
                    required: "Please enter Weight"
                },
                txtStockCount: {
                    required: "Please enter Stock Count"
                },
                txtSize: {
                    required: "Please enter Size"
                }
            },
            submitHandler: function(form) {
                $(form)[0].submit();
            }
        });
    });
</script>