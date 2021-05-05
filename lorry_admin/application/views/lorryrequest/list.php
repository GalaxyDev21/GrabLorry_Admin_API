<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Lorry Request</h2>
        <ol class="breadcrumb">
            <li>
                <a href="<?php print base_url() . 'dashboard'; ?>">Dashboard</a>
            </li>
            <li class="active">
                <a href="<?php print base_url() . 'lorryrequest'; ?>"><strong>Lorry Request</strong></a>
            </li>
        </ol>
    </div>
    <div class="col-lg-2">
    </div>
</div>



<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>
                        List of all the Lorry Request in the database.
                    </h5>
                    <div class="ibox-tools">
                        <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                            Launch demo modal
                        </button> -->
                        <!-- <a href="<?php print base_url() . 'addons/add/'; ?>">
                            <button type="button" class="btn btn-success">Add</button>
                        </a> -->
                    </div>
                </div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover datatables">
                            <thead>
                                <tr>
                                    <th>Site User</th>
                                    <th>Request Number</th>
                                    <th>Order Total</th>
                                    <th>Mobile</th>
                                    <th>PickUp Address</th>
                                    <th>Status</th>
                                    <th style="width: 13%">Action</th>
                                </tr>
                            </thead><?php

                            if(isset($arrLorryRequest) && !empty($arrLorryRequest)) {
                                ?><tbody><?php
                                    foreach($arrLorryRequest AS $key => $arrLorryRequestInfo) {

                                        $recid = $arrLorryRequestInfo->recid;
                                        $siteuserid = $arrLorryRequestInfo->siteuserid;
                                        $requestnumber = $arrLorryRequestInfo->requestnumber;
                                        $aggregateid = $arrLorryRequestInfo->aggregateid;
                                        $typeid = $arrLorryRequestInfo->typeid;
                                        $trip = $arrLorryRequestInfo->trip;
                                        $quantity = $arrLorryRequestInfo->quantity;
                                        $ordertotal = $arrLorryRequestInfo->ordertotal;
                                        $address = $arrLorryRequestInfo->address;
                                        $notes = $arrLorryRequestInfo->notes;
                                        $nearbysuppliers = $arrLorryRequestInfo->nearbysuppliers;
                                        $status = $arrLorryRequestInfo->status;
                                        $datex = $arrLorryRequestInfo->datex;
                                        $created = $arrLorryRequestInfo->created;
                                        $name = $arrLorryRequestInfo->name;
                                        $email = $arrLorryRequestInfo->email;
                                        $password = $arrLorryRequestInfo->password;
                                        $mobile = $arrLorryRequestInfo->mobile;
                                        $radius = $arrLorryRequestInfo->radius;
                                        $longitude = $arrLorryRequestInfo->longitude;
                                        $latitude = $arrLorryRequestInfo->latitude;
                                        $lorryStatus = $arrLorryRequestInfo->lorryStatus;
                                        $lorryRequestId = $arrLorryRequestInfo->lorryRequestId;                                        

                                        ?><tr class="gradeX">

                                            <td><?php print $name; ?></td>
                                            <td><?php print $requestnumber; ?></td>
                                            <td><?php print $ordertotal; ?></td>
                                            <td><?php print $mobile; ?></td>
                                            <td><?php print $address; ?></td>
                                            <td><?php

                                                $strLabel = "";
                                                $strLabelClass = "";
                                                switch($lorryStatus) {
                                                    case "RECV":
                                                        $strLabel = "Received";
                                                        $strLabelClass = "label-primary";
                                                        break;
                                                    case "ASSIGNED":
                                                        $strLabel = "Assigned";
                                                        $strLabelClass = "label-primary";
                                                        break;
                                                    
                                                }
                                                ?><span class="label <?php print $strLabelClass; ?>"><?php print $strLabel; ?></span>
                                            </td>
                                            <td class="center"><?php

                                                if($lorryStatus != 'ASSIGNED') {
                                                    ?><a href="javascript: return false;" class="btn btn-success" data-nearBySuppliersId="<?php print $nearbysuppliers; ?>" data-lorryRequestId="<?php print $lorryRequestId; ?>" data-toggle="modal" data-target="#myModal">
                                                        Assign
                                                    </a><?php
                                                }
                                            ?></td>
                                        </tr><?php
                                    }
                                ?></tbody><?php
                            }
                            ?><tfoot>
                                <tr>
                                    <th>Site User</th>
                                    <th>Request Number</th>
                                    <th>Order Total</th>
                                    <th>Mobile</th>
                                    <th>PickUp Address</th>
                                    <th>Status</th>
                                    <th style="width: 13%">Action</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<div class="modal inmodal" id="myModal" tabindex="-1" role="dialog" data-backdrop="false" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content animated bounceInRight">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <i class="fa fa-laptop modal-icon"></i>
                <h4 class="modal-title">Suppliers List</h4>
                <small class="font-bold">List of all suppliers in the system</small>
            </div>

            <form name="frmMappSupplierToRequest" id="frmMappSupplierToRequest" method="POST" action="<?php print base_url() . 'lorryrequest/mapsupplieruser'; ?>" >
                <div class="modal-body">
                    <!-- <p><strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                    <div class="form-group">
                        <label>Sample Input</label>
                        <input type="email" placeholder="Enter your email" class="form-control">
                    </div> -->
                    <table class="table table-striped table-bordered table-hover table-responsive datatablesSuppliers">
                        <thead>
                            <tr>
                                <th>Action</th>
                                <th>Bussiness Name</th>
                                <th>PostCode</th>
                                <th>Phone</th>
                                <th>Website</th>
                                <th>Email</th>
                            </tr>
                        </thead><?php
                            if(!empty($arrSuppliersList)) {
                                ?><tbody><?php
                                foreach($arrSuppliersList AS $key => $arrSupplierInfo) {

                                    $recid = $arrSupplierInfo->recid;
                                    $bussinessname = $arrSupplierInfo->bussinessname;
                                    $postcode = $arrSupplierInfo->postcode;
                                    $longitude = $arrSupplierInfo->longitude;
                                    $latitude = $arrSupplierInfo->latitude;
                                    $suit = $arrSupplierInfo->suit;
                                    $phone = $arrSupplierInfo->phone;
                                    $webaddress = $arrSupplierInfo->webaddress;
                                    $hours = $arrSupplierInfo->hours;
                                    $website = $arrSupplierInfo->website;
                                    $email = $arrSupplierInfo->email;
                                    $status = $arrSupplierInfo->status;
                                    $created = $arrSupplierInfo->created;

                                    ?><tr class="gradeX supplierAssignDataTable" id="suplier_id_<?php print $recid; ?>">
                                        <td>
                                            <input type="radio" value="<?php print $recid; ?>" name="rdSupplierId" id="rdSupplierId_<?php print $recid; ?>">                                        
                                        </td>
                                        <td><?php print $bussinessname; ?></td>
                                        <td><?php print $postcode; ?></td>
                                        <td><?php print $phone; ?></td>
                                        <td><?php print $webaddress; ?></td>
                                        <td><?php print $email; ?></td>
                                    </tr><?php
                                }
                                ?></tbody><?php
                            }
                        ?><tfoot>
                            <tr>
                                <th>Action</th>
                                <th>Bussiness Name</th>
                                <th>PostCode</th>
                                <th>Phone</th>
                                <th>Website</th>
                                <th>Email</th>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
                <input type="hidden" name="hidRequestId" id="hidRequestId" value="" />
            </form>
        </div>
    </div>
</div>


<script type="text/javascript">
    $(document).ready(function() {
        
        // var t = $('.datatablesSuppliers').DataTable();

        $('#myModal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget) // Button that triggered the modal
            var lorryRequestId = button.attr('data-lorryRequestId');
            var nearBySuppliersId = button.attr('data-nearBySuppliersId');
            var modal = $(this)
            modal.find('#hidRequestId').val(lorryRequestId);

            var arrNearBySupplierId = nearBySuppliersId.split(',');
            
            $('.supplierAssignDataTable').css('display', 'none');
            _.forEach(arrNearBySupplierId, function(eachSupplierId) {
                $('#suplier_id_' + eachSupplierId).css('display', 'table-row');
            });

        })

        $('#frmMappSupplierToRequest').validate({
            rules: {
                rdSupplierId:{
                    required: true
                }
            },
            messages: {
                rdSupplierId:{
                    required: "Please select atleast one supplier"
                }
            },
            submitHandler: function(form) {
                $(form)[0].submit();
            }
        });
    });
</script>