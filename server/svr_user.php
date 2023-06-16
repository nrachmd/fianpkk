<?php
header('Content-type: application/json');
$target = 3;
require_once "controllers/class.CtrlGlobal.php";
$objCtrl = new CtrlGlobal();
require_once "controllers/class.CtrlNumber.php";
$objNumber = new CtrlNumber();
$act = ($_GET['act'] == "")?$_POST['act']:$_GET['act'];
$act = $objCtrl->filterParams($act);
$full_name = $objCtrl->filterParams($_POST['full_name']);
$username = $objCtrl->filterParams($_POST['username']);
$password = $objCtrl->filterParams($_POST['password']);
$level_id = $objCtrl->filterParams($_POST['level_id']);
$reason = $objCtrl->filterParams($_POST['reason']);

$id_user = $objCtrl->filterParams($_POST['id_user']);
$id_user = $objCtrl->decode($id_user);
$id_user_del = $objCtrl->filterParams($_POST['id_user_del']);
$id_user_del = $objCtrl->decode($id_user_del);


$draw = $_POST['draw'];
$row = $_POST['start'];
$rowperpage = $_POST['length']; // Rows display per page
$columnIndex = $_POST['order'][0]['column']; // Column index
$columnName = $_POST['columns'][$columnIndex]['data']; // Column name
$columnSortOrder = $_POST['order'][0]['dir']; // asc or desc
$searchValue = $_POST['search']['value']; // Search value
$searchQuery = "";

switch ($act) {
   case 'create':
      $id_user = $objNumber->getNoMaster('id_user','m_user','U');
      $insert = $objCtrl->insert('m_user',array(
         'id_user' => $id_user,
         'full_name' => $full_name,
         'username' => $username,
         'password' => $objCtrl->encode($password),
         'level_id' => $level_id,
      ));
      echo json_encode($insert);
      break;
   case 'read':
      $sql = "SELECT id_user,username,full_name,level_id FROM m_user WHERE id_user = '".$id_user."'";
      $row['data'] = $objCtrl->GetGlobalFilter($sql);
      $row['xid_user'] = $objCtrl->encode($objCtrl->GetGlobalFilter($sql)[0]['id_user']);
      echo json_encode($row);
      break;
   case 'update':
      $sql = "SELECT * FROM m_user WHERE id_user = '".$id_user_del."'";
      $row = $objCtrl->GetGlobalFilter($sql);
      foreach ($row as $item) {
         $objCtrl->insert('m_user_edit',array(
            'id_user' => $item['id_user'],
            'full_name' => $item['full_name'],
            'username' => $item['username'],
            'password' => $item['password'],
            'level_id' => $item['level_id'],
            'type' =>'update',
            'user_act' =>$_COOKIE['id_user'],
            'log_time' =>date('Y-m-d H:i:s'),

         ));
      }
      $update = $objCtrl->update('m_user',array(
         'full_name' => $full_name,
         'username' => $username,
         'password' => $objCtrl->encode($password),
         'level_id' => $level_id,
      ),array( 'id_user' => $id_user));
      echo json_encode($update);
      break;
   case 'delete':
      $sql = "SELECT * FROM m_user WHERE id_user = '".$id_user_del."'";
      $row = $objCtrl->GetGlobalFilter($sql);
      foreach ($row as $item) {
         $objCtrl->insert('m_user_edit',array(
            'id_user' => $item['id_user'],
            'full_name' => $item['full_name'],
            'username' => $item['username'],
            'password' => $item['password'],
            'level_id' => $item['level_id'],
            'reason' => $reason,
            'type' =>'delete',
            'user_act' =>$_COOKIE['id_user'],
            'log_time' =>date('Y-m-d H:i:s'),

         ));
      }

      $delete = $objCtrl->delete('m_user',array(
         'id_user' => $id_user_del
      ));
      echo json_encode($delete);
      break;
   case 'readTable':
       if($searchValue != ''){
           $searchQuery.= " and (username like '%".$searchValue."%' OR full_name like '%".$searchValue."%') ";
        }
        $sqltot = "SELECT count(id_user) as name FROM m_user where 1=1";
        $sqltot.= $searchQuery;
        $rowtot = $objCtrl->getName($sqltot);

        $sql = "SELECT u.id_user,u.full_name,u.username,u.level_id, l.level_name FROM m_user u join m_level l on u.level_id=l.level_id where 1=1";
        $sql.= $searchQuery;
        
        $sql.=" order by ".$columnName." ".$columnSortOrder." limit ".$row.",".$rowperpage;
        $no = $columnSortOrder+1;
        $array_row = [];
        //Access File
        $row = $objCtrl->GetGlobalFilter($sql);
        // $access = explode('#', $objCtrl->getAccessFile('108'));
        $data = array();
        foreach ($row as $item) {
             $data[] = array( 
                'id_user' => $objCtrl->encode($item['id_user']),
                'full_name' => $item['full_name'],
                'username' => $item['username'],
                'level_name' => $item['level_name'],
                'no' => $no,
                // 'view' => $access[0],
                // 'edit' => $access[1],
                // 'del' => $access[2],
                // 'add' => $access[3],
                // 'menu_id' => $access[8],    
            );
            $no++;
        }
        $data = [
            'sql' => $sql,
            "draw" => intval($draw),
            "iTotalRecords" => $rowtot,
            "iTotalDisplayRecords" => $rowtot,
            'data' => $data,
        ];
        echo json_encode($data);
      break;
   case 'test':
      echo "Arif Ragil";
      break;
   case 'levelData':
       $sql = "SELECT * FROM m_level";
       $row['data'] = $objCtrl->GetGlobalFilter($sql);
       echo json_encode($row);
       break;
   
 default:
      // code...
      break;
}
?>