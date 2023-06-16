<?php
    error_reporting(E_ALL);
    header('Content-type: application/json');
    $target = 3;
    require_once "controllers/class.CtrlGlobal.php";
    $objCtrl = new CtrlGlobal();
    
    $act = ($_POST['act'] == "")?$_GET['act']:$_POST['act'];

    $act = mysqli_real_escape_string($objCtrl->getConnection(), $act);
    
    $username = mysqli_escape_string($objCtrl->getConnection(), $_POST['username']);
    $password = mysqli_escape_string($objCtrl->getConnection(), $_POST['password']);

    // $ip_address = $objCtrl->get_ip_address();


    switch ($act) {
        case 'login':
            
            if(isset($_POST['username'])) {
                $username = mysqli_real_escape_string($objCtrl->getConnection(), $_POST['username']);

                $sql="SELECT u.*, l.level_name
                FROM m_user  u
                LEFT JOIN m_level l on u.level_id = l.level_id 
                WHERE u.username='". $username ."' ";
                $row=$objCtrl->GetGlobalFilter($sql);
                if(sizeof($row)==0) {
                    $msg="Username tidak tersedia!";
                } else {
                    foreach($row as $item){
                        if($objCtrl->encode($_POST['password']) == $item['password']){
                                $objCtrl->setCookies('id_user',$item['id_user']);
                                $objCtrl->setCookies('username',$item['username']);
                                $objCtrl->setCookies('full_name',$item['full_name']);
                                $objCtrl->setCookies('level_id',$item['level_id']);
                                $objCtrl->setCookies('level_name',$item['level_name']);
                                                                   
                                $msg="success";
                        }else {
                            $msg="Password kurang tepat!";
                        }
                    }
                }
            }

            echo json_encode($msg);
            break;
        case 'logout':
            foreach($_COOKIE AS $key => $value) {
                $objCtrl->setCookies($key,"");
            }
            header('Location: ../index.php');    
            break;
    }
?>
    