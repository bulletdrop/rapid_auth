<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Rapid Auth - Key Manager</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

         <!-- jvectormap -->
         <link href="assets/libs/jqvmap/jqvmap.min.css" rel="stylesheet" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- DataTables -->
        <link href="assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/datatables.net-select-bs4/css/select.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <!-- Icons css -->
        <link href="assets/libs/@mdi/font/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/dripicons/webfont/webfont.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css" />

        <!-- App css -->
        <!-- build:css -->
        <link href="assets/css/app.css" rel="stylesheet" type="text/css" />
        <!-- endbuild -->

        <!-- Select 2 css -->
        <link href="assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet" />
        <link href="assets/libs/mohithg-switchery/switchery.min.css" rel="stylesheet">
        <link href="assets/libs/bootstrap-select/css/bootstrap-select.min.css" rel="stylesheet" />
        <link href="assets/libs/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />
        <link href="assets/libs/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet" />
        <link href="assets/libs/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" />
        <link href="assets/libs/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" />


    </head>

    <body>

        <!-- Navigation Bar-->
        <header id="topnav">
            <nav class="navbar-custom">

                <div class="container-fluid">
                    <ul class="list-unstyled topbar-right-menu float-right mb-0">

                        <li class="dropdown notification-list">
                            <!-- Mobile menu toggle-->
                            <a class="navbar-toggle nav-link">
                                <div class="lines">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </a>
                            <!-- End mobile menu toggle-->
                        </li>
    
                        <li class="dropdown notification-list">
                            <a class="nav-link dropdown-toggle nav-user" data-toggle="dropdown" href="#" role="button"
                                aria-haspopup="false" aria-expanded="false">
                                <img id="dashboard_profile_picture_1" src="assets/images/users/avatar-1.jpg" alt="user" class="rounded-circle"> <span class="ml-1" id="dashboard_username">Agnes K <i class="mdi mdi-chevron-down"></i> </span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated profile-dropdown ">
                                <!-- item-->
                                <div class="dropdown-item noti-title">
                                    <h6 class="text-overflow m-0">Welcome !</h6>
                                </div>
    
                            </div>
                        </li>
                        <li class="dropdown notification-list">
                            <a href="javascript:void(0);" class="nav-link right-bar-toggle">
                                <i class="dripicons-gear noti-icon"></i>
                            </a>
                        </li>
    
                    </ul>
    
                    <ul class="list-inline menu-left mb-0">
                        <li class="float-left">
                            <a href="dashboard.php" class="logo">
                                <span class="logo-lg">
                                    <img src="assets/images/logo.png" alt="" height="20">
                                </span>
                                <span class="logo-sm">
                                    <img src="assets/images/logo_sm.png" alt="" height="28">
                                </span>
                            </a>
                        </li>
                    </ul>
                </div>

            </nav>
            <!-- end topbar-main -->

            <div class="topbar-menu">
                <div class="container-fluid">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu">

                            <li class="has-submenu">
                                <a href="dashboard.php"><i class="mdi mdi-view-dashboard"></i>Dashboard</a>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="mdi mdi-key"></i>Keys</a>
                                <ul class="submenu megamenu">
                                    <li>
                                        <ul>
                                            <li><a href="create_key.php">Create a key</a></li>
                                            <li><a href="key_manager.php">Key Manager</a></li>     
                                            <li><a href="product_manager.php">Manage Products</a></li>                
                                        </ul>
                                    </li>
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="mdi mdi-account-box"></i>Users</a>
                                <ul class="submenu">
                                    <li><a href="manage_users.php">Manage Users</a></li>
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="mdi mdi-comment-question-outline"></i>Support</a>
                                <ul class="submenu">
                                    <li>
                                        <a href="request_support.php">Request support</a>
                                    </li> 
                                    <li>
                                        <a href="support_requests.php">Your support requests</a>
                                    </li>      
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="mdi mdi-account-multiple"></i>Groups</a>
                                <ul class="submenu">
                                    <li><a href="group_invites.php">Group invites</a></li>
                                    <li><a href="create_group.php">Create a group</a></li>
                                    <li><a href="manage_group.php">Manage your group</a></li>
                                </ul>
                            </li>
                        </ul>
                        <!-- End navigation menu -->

                        <div class="clearfix"></div>
                    </div> <!-- end #navigation -->
                </div> <!-- end container -->
            </div> <!-- end navbar-custom -->
        </header>
        <!-- End Navigation Bar-->


        

        <div class="wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card-box">
                            <h4 class="header-title">Key Manager</h4>

                            <table id="datatable" class="table table-bordered dt-responsive nowrap">
                                <thead>
                                <tr>
                                    <th>Key ID</th>
                                    <th>Loader User UID</th>
                                    <th>Product</th>
                                    <th>Days left</th>
                                    <th>Freezed</th>
                                    <th>Lifetime</th>
                                    <th>Key: </th>
                                </tr>
                                </thead>


                                <tbody>
                                <?php
                                include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/security/cookies.php';
                                include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/groups/get_group_info.php';
                                include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/groups/products.php';
                                include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/users/get_user_info.php';
                                include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/keys/get_keys.php';


                                if (!uid_in_group(get_cookie_information()[2]))
                                {
                                    echo '<script>error_msg("You\'re not in a group")</script>';   
                                    
                                }
                                else
                                {
                                    $gid = get_gid_by_uid(get_cookie_information()[2]);
                                    $keys = get_keys_by_gid($gid);
                                    foreach ($keys as $key)
                                    {
                                        echo '<tr>';
                                        //Key ID
                                        echo '<td>' . $key[0] . '</td>';
                                        //Loader UID -1 means no owner
                                        if ($key[2] == "-1")
                                            echo '<td>None</td>';
                                        else
                                            echo '<td>' . $key[2] . '</td>';
                                        //Product Name 
                                        echo '<td>' . get_product_name_by_index($gid, $key[3]) . '</td>';
                                        // Days left
                                        echo '<td>' . $key[4] . '</td>';
                                        // Freezed
                                        if ($key[5] == 0)
                                            echo '<td>No</td>';
                                        else
                                            echo '<td>Yes</td>';

                                        //Lifetime
                                        if ($key[6] == 0)
                                            echo '<td>No</td>';
                                        else
                                            echo '<td>Yes</td>';
                                        
                                        //The key
                                        echo '<td>' . $key[1] . '<button style="margin-left: 1em;" data-toggle="modal" data-target=".key_editor_modal_id' . $key[0] . '" type="button" class="btn btn-primary w-md">Edit</button></td>';
                                        echo '</tr>';



                                        echo '
                                        <div class="modal fade key_editor_modal_id' . $key[0] . '" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" style="display: none;" aria-hidden="true">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title" id="myLargeModalLabel">Key Editor</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    </div>
                                                    <div class="modal-body">
                                                    <!-- Modal Body start-->
                                                    <form method="post">
                                                        <div class="form-group row">
                                                            <label class="col-sm-2 col-form-label">Key</label>
                                                            <div class="col-sm-10"> <input type="text" name="key_name" class="form-control" value="' . $key[1] . '"> </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <label class="col-sm-2 col-form-label">Loader UID (-1 is no owner)</label>
                                                            <div class="col-sm-10"> <input type="number" name="loader_user_uid" class="form-control" value="' . $key[2] . '"> </div>
                                                        </div>
                                                        
                                                        <div class="form-group row">
                                                            <label class="col-sm-2 col-form-label">Days left</label>
                                                            <div class="col-sm-10"> <input type="number" name="days_left" class="form-control" value="' . $key[4] .'"> </div>
                                                        </div>
                                                        

                                                        <div class="form-group row">
                                                            <label class="col-sm-2 col-form-label">Freezed</label>
                                                            <div class="col-sm-10"> <input name="freezed" type="checkbox"';
                                                        
                                                        
                                                        if ($key[5] != 0)
                                                            echo ' checked ';

                                                        echo 'data-plugin="switchery" data-color="#039cfd"/></div>
                                                        </div>


                                                        <div class="form-group row">
                                                            <label class="col-sm-2 col-form-label">Lifetime</label>
                                                            <div class="col-sm-10"> <input name="lifetime" type="checkbox"';
                                                            
                                                        if ($key[6] != 0)
                                                            echo ' checked ';

                                                        echo 'data-plugin="switchery" data-color="#039cfd"/></div>
                                                        </div>
                                                        <button name="submit" type="submit" value="'.$key[0].'" class="btn btn-primary w-md">Save</button>
                                                    </form>
                                                        
                                                    <!-- Modal Body end-->
                                                    </div>
                                                    </div>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div>
                                        ';
                                        
                                    }
                                }

                                ?>
                                </tbody>
                            </table>
                        </div> <!-- end card-box -->
                    </div> <!-- end col -->
                </div> <!-- end row -->

            </div> <!-- end container -->
        </div>
        <!-- end wrapper -->


       <!-- end wrapper -->
        <!-- Footer -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 text-center">
                        2022 © bullet - rapid-auth.com
                    </div>
                </div>
            </div>
        </footer>
        <!-- End Footer -->


        <!-- Right Sidebar -->
        <div class="right-bar">
            <div class="rightbar-title">
                <a href="javascript:void(0);" class="right-bar-toggle float-right">
                    <i class="dripicons-cross noti-icon"></i>
                </a>
                <h5 class="m-0">Settings</h5>
            </div>
            <div class="slimscroll-menu">
                <!-- User box -->
                <div class="user-box">
                    <div class="user-img">
                        <img id="dashboard_profile_picture" src="assets/images/users/avatar-1.jpg" alt="user-img" title="Mat Helme" class="rounded-circle img-fluid">
                        <a href="" class="user-edit"><i class="mdi mdi-pencil"></i></a>
                    </div>
                    
                    <h5><a href="#" id="dashboard_username_1">Agnes Kennedy</a> </h5>
                    <p class="text-muted mb-0" id="dashboard_rank"><small>Admin Head</small></p>
                </div>

                <!-- Timeline -->
                </div>
        </div>
        <!-- /Right-bar -->


        <!-- jQuery  -->
        <script src="assets/libs/jquery/jquery.min.js"></script>
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/jquery-slimscroll/jquery.slimscroll.min.js"></script>

        <!-- Datatable js -->
        <script src="assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
        <script src="assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="assets/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
        <!-- Buttons examples -->
        <script src="assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js" type="text/javascript"></script>
        <script src="assets/libs/datatables.net-buttons/js/buttons.html5.min.js" type="text/javascript"></script>
        <script src="assets/libs/datatables.net-buttons/js/buttons.flash.min.js" type="text/javascript"></script>
        <script src="assets/libs/datatables.net-buttons/js/buttons.print.min.js" type="text/javascript"></script>
        <script src="assets/libs/datatables.net-buttons/js/buttons.colVis.min.js" type="text/javascript"></script>
        <script src="assets/libs/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js" type="text/javascript"></script>
        <!-- Key Tables -->
        <script src="assets/libs/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
        <!-- Selection table -->
        <script src="assets/libs/datatables.net-select/js/dataTables.select.min.js"></script>

        <!-- KNOB JS -->
        <script src="assets/libs/jquery-knob/jquery.knob.min.js"></script>
        <!-- Chart JS -->
        <script src="assets/libs/chart.js/Chart.bundle.min.js"></script>

        <!-- Jvector map -->
        <script src="assets/libs/jqvmap/jquery.vmap.min.js"></script>
        <script src="assets/libs/jqvmap/maps/jquery.vmap.usa.js"></script>

        <!-- Datatable js -->
        <script src="assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
        <script src="assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="assets/libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>

        <!-- Dashboard Init JS -->
        <script src="assets/js/jquery.dashboard.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

        <!-- select2 js -->
        <script src="assets/libs/select2/js/select2.min.js"></script>
        <script src="assets/libs/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
        <script src="assets/libs/mohithg-switchery/switchery.min.js"></script>
        <script src="assets/libs/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
        <!-- Mask input -->
        <script src="assets/libs/jquery-mask-plugin/jquery.mask.min.js"></script>
        <!-- Bootstrap Select -->
        <script src="assets/libs/bootstrap-select/js/bootstrap-select.min.js"></script>

        <script src="assets/libs/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>

        <script src="assets/libs/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>

        <script src="assets/libs/moment/moment.js"></script>

        <script src="assets/libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

        <script src="assets/libs/bootstrap-daterangepicker/daterangepicker.js"></script>

        <!-- Init Js file -->
        <script src="assets/js/jquery.form-advanced.js"></script>                            


        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
        

        <script type="text/javascript">
            $(document).ready(function() {

                // Default Datatable
                $('#datatable').DataTable({
                    keys: true
                });

                //Buttons examples
                var table = $('#datatable-buttons').DataTable({
                    lengthChange: false,
                    buttons: ['copy', 'print']
                });

                // Multi Selection Datatable
                $('#selection-datatable').DataTable({
                    select: {
                        style: 'multi'
                    }
                });

                table.buttons().container()
                        .appendTo('#datatable-buttons_wrapper .col-md-6:eq(0)');
            } );

        </script>
    </body>
</html>
<?php
    // error_reporting(0);
    
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/users/authenticate_user.php';
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/users/get_user_info.php';
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/security/cookies.php';
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/dashboard/get_stats.php';
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/keys/get_keys.php';

    //This Part should be on every dashboard site expect login and sign up 
    if (!check_cookie())
        echo '<script>window.location.href = "auth-login.php";</script>';

    $dashboard_username = get_cookie_information()[0];
    $dashboard_profile_picture_url = get_profile_picture_url_by_uid(get_cookie_information()[2]);
    
    echo '<script>document.getElementById("dashboard_username").innerHTML = "' . $dashboard_username . '";</script>';

    echo '<script>document.getElementById("dashboard_username_1").innerHTML = "' . $dashboard_username . '";</script>';

    echo '<script>document.getElementById("dashboard_rank").innerHTML = "' . get_rank_by_uid(get_cookie_information()[2]) . '";</script>';

    echo '<script>document.getElementById("dashboard_profile_picture").src = "' . $dashboard_profile_picture_url . '";</script>';

    echo '<script>document.getElementById("dashboard_profile_picture_1").src = "' . $dashboard_profile_picture_url . '";</script>';

    //This is the end of the part for every website
    
    if (isset($_POST["submit"]) && strlen($_POST["key_name"]) > 0)
    {
        $lifetime = 0;
        $freezed = 0;

        if ($_POST["lifetime"] == "on")
            $lifetime = 1;

        if ($_POST["freezed"] == "on")
            $freezed = 1;

        $gid = get_gid_by_uid(get_cookie_information()[2]);
        update_key($gid, $_POST["submit"], $_POST["loader_user_uid"], $_POST["days_left"], $freezed, $lifetime, $_POST["key_name"]);
        unset($_POST["submit"]);
    }

?>