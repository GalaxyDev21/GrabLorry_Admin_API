<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Add Ons</h2>
        <ol class="breadcrumb">
            <li>
                <a href="<?php print base_url() . 'dashboard'; ?>">Dashboard</a>
            </li>
            <li class="active">
                <a href="<?php print base_url() . 'addons'; ?>"><strong>Add Ons</strong></a>
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
                        List of all the Add ons in the database.
                    </h5>
                    <div class="ibox-tools">
                        <a href="<?php print base_url() . 'addons/add/'; ?>">
                            <button type="button" class="btn btn-success">Add</button>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover datatables">
                            <thead>
                                <tr>
                                    <th>Company Name</th>
                                    <th>Product Name</th>
                                    <th>Price</th>
                                    <th>Size</th>
                                    <th>Weight</th>
                                    <th>Stock count</th>
                                    <th style="width: 13%">Action</th>
                                </tr>
                            </thead><?php

                            if(isset($arrAddonsList) && !empty($arrAddonsList)) {
                                ?><tbody><?php
                                    foreach($arrAddonsList AS $key => $arrAddonsInfo) {

                                        $recid = $arrAddonsInfo->recid;
                                        $companyname = $arrAddonsInfo->companyname;
                                        $productname = $arrAddonsInfo->productname;
                                        $details = $arrAddonsInfo->details;
                                        $price = $arrAddonsInfo->price;
                                        $size = $arrAddonsInfo->size;
                                        $weight = $arrAddonsInfo->weight;
                                        $stockcount = $arrAddonsInfo->stockcount;
                                        $status = $arrAddonsInfo->status;
                                        $created = $arrAddonsInfo->created;

                                        ?><tr class="gradeX">
                                            <td><?php print $companyname; ?></td>
                                            <td><?php print $productname; ?></td>
                                            <td><?php print $price; ?></td>
                                            <td><?php print $size; ?></td>
                                            <td><?php print $weight; ?></td>
                                            <td><?php print $stockcount; ?></td>
                                            <td class="center">
                                                <a href="<?php print base_url() . 'addons/edit/' . $recid; ?>">
                                                    <button type="button" class="btn btn-success">Edit</button>
                                                </a>
                                                <a href="<?php print base_url() . 'addons/delete/' . $recid; ?>">
                                                    <button type="button" class="btn btn-danger">Delete</button>
                                                </a>
                                            </td>
                                        </tr><?php
                                    }
                                ?></tbody><?php
                            }
                            ?><tfoot>
                                <tr>
                                    <th>Company Name</th>
                                    <th>Product Name</th>
                                    <th>Price</th>
                                    <th>Size</th>
                                    <th>Weight</th>
                                    <th>Stock count</th>
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

