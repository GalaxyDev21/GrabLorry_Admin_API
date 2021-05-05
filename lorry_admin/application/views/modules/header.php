<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Lorry Application</title>

    <link href="<?php print base_url(); ?>css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php print base_url(); ?>font-awesome/css/font-awesome.css" rel="stylesheet">
    
    <link href="<?php print base_url(); ?>css/plugins/iCheck/custom.css" rel="stylesheet">

    <link href="<?php print base_url(); ?>css/animate.css" rel="stylesheet">
    <link href="<?php print base_url(); ?>css/style.css" rel="stylesheet">

    <script src="<?php print base_url(); ?>js/jquery-3.1.1.min.js"></script>
    <script src="<?php print base_url(); ?>js/bootstrap.min.js"></script>

    <script src="<?php print base_url(); ?>js/plugins/jqueryvalidate/jquery.validate.js"></script>
    <script src="<?php print base_url(); ?>js/plugins/jqueryvalidate/additional-methods.js"></script>
    <script src="<?php print base_url(); ?>js/lodash.js"></script>
    
</head>

<body>
    <div id="wrapper">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <span>
                                <img alt="image" class="img-circle" src="<?php print base_url(); ?>img/logo-s.png" />
                            </span>
                        </div>
                        <div class="logo-element">
                            LA+
                        </div>
                    </li>
                    
                    <li>
                        <a href="<?php print base_url() . 'dashboard'; ?>"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboard</span></a>
                    </li>
                    <li>
                        <a href="<?php print base_url() . 'suppliers'; ?>"><i class="fa fa-diamond"></i> <span class="nav-label">Suppliers</span></a>
                    </li>
                    <li>
                        <a href="<?php print base_url() . 'addons'; ?>"><i class="fa fa-plus-square"></i> <span class="nav-label">Add Ons</span></a>
                    </li>
                    <li>
                        <a href="<?php print base_url() . 'lorryrequest'; ?>"><i class="fa fa-paper-plane"></i> <span class="nav-label">Lorry Request</span></a>
                    </li>
                </ul>

            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#">
                            <i class="fa fa-bars"></i>
                        </a>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li>
                            <span class="m-r-sm text-muted welcome-message">Welcome to Lorry Application Dashbaord.</span>
                        </li>
                        <li>
                            <a href="<?php print base_url() . 'dashboard/logout'; ?>">
                                <i class="fa fa-sign-out"></i> Log out
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>