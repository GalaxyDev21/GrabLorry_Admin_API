<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Suppliers</h2>
        <ol class="breadcrumb">
            <li>
                <a href="<?php print base_url() . 'dashboard'; ?>">Dashboard</a>
            </li>
            <li class="active">
                <a href="<?php print base_url() . 'suppliers'; ?>"><strong>Suppliers</strong></a>
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
                        List of all the suppliers in the database.
                    </h5>
                    <div class="ibox-tools">
                        <a href="<?php print base_url() . 'suppliers/add/'; ?>">
                            <button type="button" class="btn btn-success">Add</button>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover datatables">
                            <thead>
                                <tr>
                                    <th>Supplier Name</th>
                                    <th>PostCode</th>
                                    <th>Phone</th>
                                    <th>Website</th>
                                    <th>Email address</th>
                                    <th style="width: 13%">Action</th>
                                </tr>
                            </thead><?php

                            if(isset($arrSuppliersList) && !empty($arrSuppliersList)) {
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

                                        ?><tr class="gradeX">
                                            <td><?php print $bussinessname; ?></td>
                                            <td><?php print $postcode; ?></td>
                                            <td><?php print $phone; ?></td>
                                            <td><?php print $webaddress; ?></td>
                                            <td><?php print $email; ?></td>
                                            <td class="center">
                                                <a href="<?php print base_url() . 'suppliers/edit/' . $recid; ?>">
                                                    <button type="button" class="btn btn-success">Edit</button>
                                                </a>
                                                <a href="<?php print base_url() . 'suppliers/delete/' . $recid; ?>">
                                                    <button type="button" class="btn btn-danger">Delete</button>
                                                </a>
                                            </td>
                                        </tr><?php
                                    }
                                ?></tbody><?php
                            }
                            ?><tfoot>
                                <tr>
                                    <th>Supplier Name</th>
                                    <th>PostCode</th>
                                    <th>Phone</th>
                                    <th>Website</th>
                                    <th>Email address</th>
                                    <th>Action</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

