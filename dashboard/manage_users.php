<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Rapid Auth - User Manager</title>
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
        <?php
            include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/dashboard/navbar.php';
            echo $nav_bar;
        ?>
        <!-- End Navigation Bar-->


        

        <div class="wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card-box">
                            <h4 class="header-title">User Manager</h4>

                            <table id="datatable" class="table table-bordered dt-responsive nowrap">
                                <thead>
                                <tr>
                                    <th>UID</th>
                                    <th>Username</th>
                                    <th>Last IP Address</th>
                                    <th>Active</th>
                                    <th>Products</th>
                                </tr>
                                </thead>


                                <tbody>
                                <?php
                                include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/security/cookies.php';
                                include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/groups/get_group_info.php';
                                include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/groups/products.php';
                                include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/users/get_user_info.php';
                                include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/keys/keys.php';
                                include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/loader_users/l_users.php';


                                if (!uid_in_group(get_cookie_information()[2]))
                                {
                                    echo '<script>error_msg("You\'re not in a group")</script>';   
                                    
                                }
                                else
                                {
                                    $gid = get_gid_by_uid(get_cookie_information()[2]);
                                    $users = get_loader_users_by_gid($gid);
                                    foreach ($users as $user)
                                    {
                                        echo '<tr>';
                                        //UUID
                                        echo '<td>' . $user[0] . '</td>';
                                        
                                        
                                        //Username 
                                        echo '<td>' . $user[1] . '</td>';
                                        //Last IP Address
                                        echo '<td>' . $user[13] . '</td>';
                                        //Active
                                        if ($user[3] == 0)
                                            echo '<td>No</td>';
                                        else
                                            echo '<td>Yes</td>';
                                        
                                        //Products
                                        $product_array = array();
                                        foreach (json_decode($user[4]) as $product)
                                        {
                                            array_push($product_array, 
                                            array($product,
                                            get_product_name_by_kid_and_gid($product, $gid),
                                            get_key_name_by_kid_and_gid($product, $gid),
                                            get_days_left_by_kid_and_gid($product, $gid)));
                                        }
                                        
                                        echo '<td>';
                                        
                                        //foreach ($product_array as $product)
                                        //{
                                            //$key_name = $product[2];
                                            //echo '<br>Key ID: ' . $product[0] . ' Product Name: ' . $product[1] . ' Key: ' . $key_name . ' Days left: ' . $product[3] .'<br>';
                                        //}
                                        echo '</td>';

                                        //echo '<td>' . $user[4] . '<button style="margin-left: 1em;" data-toggle="modal" data-target=".key_editor_modal_id' . $user[0] . '" type="button" class="btn btn-primary w-md">Edit</button></td>';
                                        
                                        echo '</tr>';


                                        /*
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
                                        */
                                        
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
        <?php
            include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/dashboard/right_sidebar.php';
            echo $right_bar;
        ?>
        <!-- /Right-bar -->


        <?php
            include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/dashboard/js_include.php';
            echo $js;
        ?>
        

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
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/keys/keys.php';

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

?>