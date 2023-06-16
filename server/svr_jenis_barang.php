<?php
header('Content-type: application/json');
$target = 3;
require_once "controllers/class.CtrlGlobal.php";
$objCtrl = new CtrlGlobal();
require_once "controllers/class.CtrlNumber.php";
$objNumber = new CtrlNumber();
$act = ($_GET['act'] == "")?$_POST['act']:$_GET['act'];
$act = $objCtrl->filterParams($act);
$jenis_barang = $objCtrl->filterParams($_POST['jenis_barang']);
$reason = $objCtrl->filterParams($_POST['reason']);

$id_barang = $objCtrl->filterParams($_POST['id_barang']);
$id_barang = $objCtrl->decode($id_barang);
$id_barang_del = $objCtrl->filterParams($_POST['id_barang_del']);
$id_barang_del = $objCtrl->decode($id_barang_del);


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
      $id_barang = $objNumber->getNoMaster('id_barang','d_jenis_barang','B');
      $insert = $objCtrl->insert('d_jenis_barang',array(
         'id_barang' => $id_barang,
         'jenis_barang' => $jenis_barang,
      ));
      echo json_encode($insert);
      break;
   case 'read':
      $sql = "SELECT id_barang,jenis_barang FROM d_jenis_barang WHERE id_barang = '".$id_barang."'";
      $row['data'] = $objCtrl->GetGlobalFilter($sql);
      $row['xid_inventaris'] = $objCtrl->encode($objCtrl->GetGlobalFilter($sql)[0]['id_barang']);
      echo json_encode($row);
      break;
   case 'update':
      $sql = "SELECT * FROM d_jenis_barang WHERE id_barang = '".$id_barang_del."'";
      $row = $objCtrl->GetGlobalFilter($sql);
      foreach ($row as $item) {
         $objCtrl->insert('d_jenis_barang_edit',array(
            'id_barang' => $item['id_barang'],
            'jenis_barang' => $item['jenis_barang'],
            'type' =>'update',
            'user_act' =>$_COOKIE['id_user'],
            'log_time' =>date('Y-m-d H:i:s'),

         ));
      }
      $update = $objCtrl->update('d_jenis_barang',array(
         'jenis_barang' => $jenis_barang,
         'jumlah_barang' => $jumlah_barang,
         'kondisi' => $kondisi,
         'id_kecamatan' => $id_kecamatan,
      ),array( 'id_barang' => $id_barang));
      echo json_encode($update);
      break;
   case 'delete':
      $sql = "SELECT * FROM d_jenis_barang WHERE id_barang = '".$id_barang_del."'";
      $row = $objCtrl->GetGlobalFilter($sql);
      foreach ($row as $item) {
         $objCtrl->insert('d_jenis_barang_edit',array(
            'id_barang' => $item['id_barang'],
            'jenis_barang' => $item['jenis_barang'],
            'reason' => $reason,
            'type' =>'delete',
            'user_act' =>$_COOKIE['id_barang'],
            'log_time' =>date('Y-m-d H:i:s'),

         ));
      }

      $delete = $objCtrl->delete('d_jenis_barang',array(
         'id_barang' => $id_barang_del
      ));
      echo json_encode($delete);
      break;
   case 'readTable':
       if($searchValue != ''){
           $searchQuery.= " and (jenis_barang like '%".$searchValue."%') ";
        }
        $sqltot = "SELECT count(id_barang) as name FROM d_jenis_barang 
        where 1=1";
        $sqltot.= $searchQuery;
        $rowtot = $objCtrl->getName($sqltot);

        $sql = "SELECT *
        FROM d_jenis_barang 
        where 1=1";
        $sql.= $searchQuery;
        if($columnName != "no" && $columnName != ""){
         $sql.=" order by ".$columnName." ".$columnSortOrder;
         }
        $sql.=" limit ".$row.",".$rowperpage;
        $no = $row+1;
        $array_row = [];
        //Access File
        $row = $objCtrl->GetGlobalFilter($sql);
        // $access = explode('#', $objCtrl->getAccessFile('108'));
        $data = array();
        foreach ($row as $item) {
             $data[] = array( 
                'id_barang' => $objCtrl->encode($item['id_barang']),
                'jenis_barang' => $item['jenis_barang'],
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
   
 default:
      // code...
      break;
}
?>