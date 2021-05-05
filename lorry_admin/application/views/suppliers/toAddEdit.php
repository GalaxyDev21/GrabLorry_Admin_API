<link href="<?php print base_url(); ?>css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">


<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Suppliers Add</h2>
        <ol class="breadcrumb">
            <li>
                <a href="<?php print base_url() . 'dashboard'; ?>">Dashboard</a>
            </li>
            <li>
                <a href="<?php print base_url() . 'suppliers'; ?>">Suppliers</a>
            </li>
            <li class="active">
                <a href="#"><strong>Suppliers Add</strong></a>
            </li>
        </ol>
    </div>
    <div class="col-lg-2">
    </div>
</div><?php

$supplierId = 0;
if(isset($arrSupplierData['recid'])) {
    $supplierId = $arrSupplierData['recid'];
}

$txtSupplierName = '';
if(isset($arrSupplierData['bussinessname'])) {
    $txtSupplierName = $arrSupplierData['bussinessname'];
}

$txtPostCode = '';
if(isset($arrSupplierData['postcode'])) {
    $txtPostCode = $arrSupplierData['postcode'];
}

$txtLongitude = '';
if(isset($arrSupplierData['longitude'])) {
    $txtLongitude = $arrSupplierData['longitude'];
}

$txtLatitude = '';
if(isset($arrSupplierData['latitude'])) {
    $txtLatitude = $arrSupplierData['latitude'];
}

$txtSuit = '';
if(isset($arrSupplierData['suit'])) {
    $txtSuit = $arrSupplierData['suit'];
}

$txtWebsite = '';
if(isset($arrSupplierData['phone'])) {
    $txtWebsite = $arrSupplierData['phone'];
}

$txtEmail = '';
if(isset($arrSupplierData['webaddress'])) {
    $txtEmail = $arrSupplierData['webaddress'];
}

$txtPhone = '';
if(isset($arrSupplierData['phone'])) {
    $txtPhone = $arrSupplierData['phone'];
}



?><div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Add Supplier</h5>
                    <div class="ibox-tools">
                        <a href="<?php print base_url() . 'suppliers'; ?>">
                            <button type="button" class="btn btn-success">Back</button>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <form id="frmSupplierAddEdit" method="post" class="form-horizontal" action="<?php print base_url() . 'suppliers/addUpdate'; ?>" >
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Supplier Name</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtSupplierName" id="txtSupplierName" value="<?php print $txtSupplierName; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Postcode</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtPostCode" id="txtPostCode" value="<?php print $txtPostCode; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Longitude</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtLongitude" id="txtLongitude" value="<?php print $txtLongitude; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Latitude</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtLatitude" id="txtLatitude" value="<?php print $txtLatitude; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Suit</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtSuit" id="txtSuit" value="<?php print $txtSuit; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Phone</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="txtPhone" id="txtPhone" value="<?php print $txtPhone; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Website</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control"  name="txtWebsite" id="txtWebsite" value="<?php print $txtWebsite; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Email</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control"  name="txtEmail" id="txtEmail" value="<?php print $txtEmail; ?>">
                            </div>
                        </div>
                        
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <a href="<?php print base_url() . 'suppliers'; ?>" title="cancel">
                                    <button class="btn btn-white" type="button">Cancel</button>
                                </a>
                                <button class="btn btn-primary" type="submit">Save changes</button>
                            </div>
                        </div>
                        <input type="hidden" name="hidSupplierId" id="hidSupplierId" value="<?php print $supplierId; ?>" />
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    $(document).ready(function() {
        $('#frmSupplierAddEdit').validate({
            rules: {
                txtSupplierName:{
                    required: true
                },
                txtPostCode: {
                    required: true
                },
                txtLongitude: {
                    required: true
                },
                txtLatitude: {
                    required: true
                },
                txtPhone: {
                    required: true
                },
                txtWebsite: {
                    required: true
                },
                txtEmail: {
                    required: true
                }
            },
            messages: {
                txtSupplierName:{
                    required: "Please enter Suppliers name"
                },
                txtPostCode: {
                    required: "Please enter post code"
                },
                txtLongitude: {
                    required: "Please enter longitude"
                },
                txtLatitude: {
                    required: "Please enter latitude"
                },
                txtPhone: {
                    required: "Please enter phone number"
                },
                txtWebsite: {
                    required: "Please enter website"
                },
                txtEmail: {
                    required: "Please enter email"
                }
            },
            submitHandler: function(form) {
                $(form)[0].submit();
            }
        });
    });
</script>