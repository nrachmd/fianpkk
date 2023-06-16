<?php
error_reporting(~E_NOTICE);
session_start();
if ($_COOKIE['username'] == "") {
     header("Location: http://".$_SERVER['HTTP_HOST'].substr($_SERVER['SCRIPT_NAME'], 0, strrpos($_SERVER['SCRIPT_NAME'], "/")+1)."/../server/ajax_register.php?act=logout");
     die();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="utf-8" />
   <title>
      TAXMON
   </title>
   <!-- <link rel="shortcut icon" href="assets/images/logo/sicon.png"> -->

   <link rel="icon" type="image/x-icon" href="/assets/images/logo/sicon.ico">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta content="width=device-width, initial-scale=1" name="viewport" />
   <meta content="Smart Klinik" name="description" />
   <meta content="Aplikasi Klinik dan Apotik" name="description" />
   <meta content="" name="author" />
   <link href="assets/css/font-google.css" rel="stylesheet" type="text/css" />
   <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
   <link href="assets/css/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
   
   <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
   <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"> -->


  <link rel="shortcut icon" href="assets/logo.jpg">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta content="width=device-width, initial-scale=1" name="viewport" />
      <meta content="Preview page of Metronic Admin Theme #1 for responsive extension demos" name="description" />
      <meta content="Preview page of Metronic Admin Theme #1 for bootstrap form validation demos using jquery validation plugin" name="description" />
      <meta content="" name="author" />
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
      <link href="assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
      <link href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
      <link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
      <link href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
      <link href="assets/global/plugins/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
      <link href="assets/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
      <link href="assets/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
      <link href="assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css" />
      <link href="assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css" rel="stylesheet" type="text/css" />
      <link href="assets/global/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css" rel="stylesheet" type="text/css" />
      <link href="assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
      <link href="assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
      <link href="assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
      <link href="assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
      <link href="assets/global/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
      <link href="assets/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css" />
      <link href="assets/layouts/layout/css/themes/grey.css" rel="stylesheet" type="text/css" id="style_color" />
      <link href="assets/layouts/layout/css/custom.min.css" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.10/css/bootstrap-select.min.css">
      <link rel="shortcut icon" href="favicon.ico" />
      <link rel="stylesheet" type="text/css" href="assets/css/style.css">
      <link href="assets/css/bootstrap-toggle.min.css" rel="stylesheet">
      

   <style type="text/css">
      .nav-item, 
      .nav-link {
       background-color: #ffffff !important;
       border-top: 1px solid #ffffff !important;
    }
 </style>
</head>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
   <div class="page-wrapper">
      <div class="page-header navbar navbar-fixed-top">
         <div class="page-header-inner ">
            <div class="page-logo" style="width: 250px;">
               <a href="index.html">
                  <div style="display: flex;">
                     <!-- <p style="margin-top: 6px; margin-left: 5px; color: #ffffff"> GARIS - SYSTEM</p> -->
                  </div>
               </a>
               <div class="menu-toggler sidebar-toggler">
                  <span></span>
               </div>
            </div>
            <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
               <span></span>
            </a>
            <div class="top-menu">
               <ul class="nav navbar-nav pull-right">
                  <li class="dropdown dropdown-user">
                     <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true" aria-expanded="false">
                        <img alt="" class="img-circle" src="assets/images/employees/<?php echo $_COOKIE['photo']; ?>" onerror="this.onerror=null;this.src='assets/images/avatar.jpg';">
                        <span class="username username-hide-on-mobile"> <?php echo $_COOKIE['username']; ?> <small>(<?php echo $_COOKIE['level_name']; ?>)</small> </span>
                        <i class="fa fa-angle-down"></i>
                     </a>
                     <ul class="dropdown-menu dropdown-menu-default">
                        <li>
                           <a href="m_employees.php?user=<?php echo $_COOKIE['id_user']; ?>">
                              <i class="icon-user"></i> Setting Profile 
                           </a>
                        </li>
                        <li>
                           <a href="../server/ajax_register.php?act=logout">
                              <i class="icon-logout"></i> Log Out 
                           </a>
                        </li>
                     </ul>
                  </li>
               </ul>
            </div>
         </div>
      </div>
      <div class="clearfix"> </div>
      <div class="page-container p-15 bg-grey">