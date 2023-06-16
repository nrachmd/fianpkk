<?php
header('Content-type: application/json');
$target = 3;
require_once "controllers/class.CtrlGlobal.php";
$objCtrl = new CtrlGlobal();
require_once "controllers/class.CtrlNumber.php";
$objNumber = new CtrlNumber();
$act = ($_GET['act'] == "")?$_POST['act']:$_GET['act'];
$act = $objCtrl->filterParams($act);
$jumlah_barang = $objCtrl->filterParams($_POST['jumlah_barang']);
$id_barang = $objCtrl->filterParams($_POST['id_barang']);
$reason = $objCtrl->filterParams($_POST['reason']);

$id_inventaris = $objCtrl->filterParams($_POST['id_inventaris']);
$id_inventaris = $objCtrl->decode($id_inventaris);
$id_inventaris_del = $objCtrl->filterParams($_POST['id_inventaris_del']);
$id_inventaris_del = $objCtrl->decode($id_inventaris_del);


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
      $id_inventaris = $objNumber->getNoMaster('id_inventaris','d_data_barang','I');
      $insert = $objCtrl->insert('d_data_barang',array(
         'id_inventaris' => $id_inventaris,
         'jumlah_barang' => $jumlah_barang,
         'id_barang' => $id_barang,
      ));
      echo json_encode($insert);
      break;
   case 'read':
      $sql = "SELECT id_inventaris,jumlah_barang,id_barang FROM d_data_barang WHERE id_inventaris = '".$id_inventaris."'";
      $row['data'] = $objCtrl->GetGlobalFilter($sql);
      $row['xid_inventaris'] = $objCtrl->encode($objCtrl->GetGlobalFilter($sql)[0]['id_inventaris']);
      echo json_encode($row);
      break;
   case 'update':
      $sql = "SELECT * FROM d_data_barang WHERE id_inventaris = '".$id_inventaris_del."'";
      $row = $objCtrl->GetGlobalFilter($sql);
      foreach ($row as $item) {
         $objCtrl->insert('d_data_barang_edit',array(
            'id_inventaris' => $item['id_inventaris'],
            'jumlah_barang' => $item['jumlah_barang'],
            'id_barang' => $item['id_barang'],
            'type' =>'update',
            'user_act' =>$_COOKIE['id_inventaris'],
            'log_time' =>date('Y-m-d H:i:s'),

         ));
      }
      $update = $objCtrl->update('d_data_barang',array(
         'jumlah_barang' => $jumlah_barang,
         'id_barang' => $id_barang,
      ),array( 'id_inventaris' => $id_inventaris));
      echo json_encode($update);
      break;
   case 'delete':
      $sql = "SELECT * FROM d_data_barang WHERE id_inventaris = '".$id_inventaris_del."'";
      $row = $objCtrl->GetGlobalFilter($sql);
      foreach ($row as $item) {
         $objCtrl->insert('d_data_barang_edit',array(
            'id_inventaris' => $item['id_inventaris'],
            'jumlah_barang' => $item['jumlah_barang'],
            'id_barang' => $item['id_barang'],
            'reason' => $reason,
            'type' =>'delete',
            'user_act' =>$_COOKIE['id_inventaris'],
            'log_time' =>date('Y-m-d H:i:s'),

         ));
      }

      $delete = $objCtrl->delete('d_data_barang',array(
         'id_inventaris' => $id_inventaris_del
      ));
      echo json_encode($delete);
      break;
   case 'readTable':
       if($searchValue != ''){
           $searchQuery.= " and (jumlah_barang like '%".$searchValue."%' OR jenis_barang like '%".$searchValue."%' OR price like '%".$searchValue."%') ";
        }
        $sqltot = "SELECT count(id_inventaris) as name FROM d_data_barang t 
         LEFT JOIN d_jenis_barang o ON t.id_barang = o.id_barang 
        where 1=1";
        $sqltot.= $searchQuery;
        $rowtot = $objCtrl->getName($sqltot);

        $sql = "SELECT t.*, o.jenis_barang
        FROM d_data_barang t 
        LEFT JOIN d_jenis_barang o ON t.id_barang = o.id_barang
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
                'id_inventaris' => $objCtrl->encode($item['id_inventaris']),
                'jumlah_barang' => $item['jumlah_barang'],
                'id_barang' => $item['id_barang'],
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
   case 'listBarang':
       $sql = "SELECT * FROM d_jenis_barang";
       $row['data'] = $objCtrl->GetGlobalFilter($sql);
       echo json_encode($row);
       break;
   case 'test':
      echo "Arif Ragil";
      break;
   
 default:
      // code...
      break;
}
?>