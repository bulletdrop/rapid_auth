<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Rapid Auth - Register</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta content="Rapid Auth" name="A secure and high performance auth system" />
		<meta content="Rapid Auth" name="bullet" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- Icons css -->
        <link href="assets/libs/@mdi/font/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/dripicons/webfont/webfont.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css" />

        <!-- App css -->
        <!-- build:css -->
        <link href="assets/css/app.css" rel="stylesheet" type="text/css" />
        <!-- endbuild -->

    </head>

    <body class="bg-account-pages">

        <!-- Register -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-12">

                        <div class="wrapper-page">
                            <div class="account-pages">
                                <div class="account-box">

                                    <!-- Logo box-->
                                    <div class="account-logo-box">
                                        <h2 class="text-uppercase text-center">
                                            <a href="index.html" class="text-success">
                                                <span><img src="assets/images/logo.png" alt="" height="28"></span>
                                            </a>
                                        </h2>
                                    </div>
                                    

                                    <!-- Error Modal -->
                                    <div class="modal fade error_modal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog modal-dialog-centered modal-sm">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title" id="mySmallModalLabel">Error :(</h4>
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                </div>
                                                <div class="modal-body" id="error_msg">
                                                    Wrong Username / Password
                                                </div>
                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal-dialog -->
                                    </div><!-- /.modal -->

                                    <div class="account-content">
                                        <form class="form-horizontal" method="post">
                                            <div class="form-group mb-3">
                                                <label for="emailaddress" class="font-weight-medium">Email address</label>
                                                <input class="form-control" name="email" type="email" id="emailaddress" required="" placeholder="john@deo.com">
                                            </div>

                                            <div class="form-group mb-3">
                                                <label for="username" class="font-weight-medium">Username</label>
                                                <input class="form-control" name="username" type="text" id="username" required="" placeholder="Username">
                                            </div>

                                            <div class="form-group mb-3">
                                                <label for="password" class="font-weight-medium">Password</label>
                                                <input class="form-control" name="password" type="password" required="" id="password" placeholder="Enter your password">
                                            </div>       

                                            <div class="form-group">
                                                <button class="btn btn-block btn-success waves-effect waves-light" name="submit" type="submit">Free Sign Up</button>
                                            </div>
                                        </form> <!-- end form -->

                                        <div class="row mt-3">
                                            <div class="col-12 text-center">
                                                <p class="text-muted">Already have an account? <a href="auth-login.php" class="text-muted ml-1"><b>Sign In</b></a></p>
                                            </div>
                                        </div>
                                    </div> <!-- end account-content -->

                                </div> <!-- end account-box -->
                            </div>
                            <!-- end account-page-->
                        </div>
                        <!-- end wrapper-page -->

                    </div> <!-- end col -->
                </div> <!-- end row -->
            </div> <!-- end container -->
        </section>
        <!-- END HOME -->    


        <!-- jQuery  -->
        <script src="assets/libs/jquery/jquery.min.js"></script>
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/jquery-slimscroll/jquery.slimscroll.min.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
        
        <!-- Call the Error Modal function -->
        <script>
            function error_msg(msg)
            {
                document.getElementById("error_msg").innerHTML = msg;
                $(".error_modal").modal();
            }
        </script>
    </body>
</html>

<?php
include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';
include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';

if (isset($_POST["submit"]))
{
    $post_username = $_POST["username"];
    $post_password = $_POST["password"];
    $post_email = $_POST["email"];

    switch (false)
    {
        case (!ip_is_banned($_SERVER['REMOTE_ADDR'])):
            echo '<script>toastr.error("Your IP is banned from this service, come back tomorrow", "Error")</script>';
            break;
        case (strlen($post_email) > 4 && strlen($post_password) > 4 && strlen($post_username) > 3):
            echo json_encode(array("status" => "too_short_input"));
            break;
        case (!check_username_in_use($post_username)):
            echo '<script>error_msg("This username is allready in use")</script>';
            break;
        case (!check_email_in_use($post_email)):
            echo '<script>error_msg("This E-Mail Address is allready in use")</script>';
            break;
        case (passed_password_policy($post_password)):
            echo '<script>error_msg("The entered password dosent meet our password policy")</script>';
            break;
        default:
            create_user($post_username, $post_password, $post_email);
            add_cookie($post_username, $post_password, get_uid_by_username($post_username));
            write_log("User " . $post_username . " signed up", true);
            sleep(1);
            echo '<script>window.location.href = "auth-login.php";</script>';
            break;
    }
}



?>