<?php
date_default_timezone_set("Asia/Jakarta");
require_once 'class.Database.php';
class CtrlNumber extends Database
{
    //call insert methods to save data  in database
    public function insert($table, $arFieldValues)
    {
        try {
            $objDB = new Database();
            $sql   = $objDB->insert2($table, $arFieldValues);
            return "success";
        } catch (Exception $e) {
            echo "Query failure" . NL;
            echo $e->getMessage();
        }
    }

    //call update methods to save data  in database
    public function update($table, $arFieldValues, $arConditions)
    {
        try {
            $objDB = new Database();
            $sql   = $objDB->update2($table, $arFieldValues, $arConditions);
            return "success";
        } catch (Exception $e) {
            echo "Query failure" . NL;
            echo $e->getMessage();
        }
    }
    //call delete methods to delete data in database
    public function delete($table, $arFieldValues)
    {
        try {
            $objDB = new Database();
            $sql   = $objDB->delete($table, $arFieldValues);
            return "success";
        } catch (Exception $e) {
            echo "Query failure" . NL;
            echo $e->getMessage();
        }
    }

    public function GetGlobalFilter($sql)
    {
        try {
            $objDB = new Database();
        } catch (Exception $e) {
            echo $e->getMessage();
            exit(1);
        }
        try {
            $data = $objDB->select($sql);
        } catch (Exception $e) {
            echo $e->getMessage();
        }
        return $data;
    }

    public function getName($sql)
    {
        try {
            $objDB = new Database();
        } catch (Exception $e) {
            echo $e->getMessage();
            exit(1);
        }
        $name = "";
        try {
            $data = $objDB->select($sql);
        } catch (Exception $e) {
            echo $e->getMessage();
        }
        foreach ($data as $item):
            $name = $item['name'];
        endforeach;
        return $name;
    }

    function getNoSystem($id_primary,$table,$kode){
        $month     = date("m");
        $year      = date("Y");
        $size_code = strlen($kode) + 2;
        $id_primary = ($id_primary == "")?'id_system':$id_primary;
        global $cfg;
        $objDB = new Database();
        try {
            //$refrance = 'MKE/WO/'.$month.'/'.$year.'';
            $query = "SELECT max(substr($id_primary,-5,5)) as $id_primary FROM $table where substr($id_primary,$size_code,4) = '" . $year . "'";
            //call select methods to retreive max id Order 00001
            $data = $objDB->select($query);
            foreach ($data as $item):
                if (!isset($item[$id_primary])) {
                    $maxid = $kode ."/" . $year . "/00001".$item[$id_primary];
                } else {
                    $maxid = $kode ."/" . $year. "/" . str_pad($item[$id_primary] + 1, 5, "0", STR_PAD_LEFT);
                }
            endforeach;
        } catch (Exception $e) {
            // echo "Query failure" . NL;
            echo $e->getMessage();
            echo $query;
        }
        return $maxid;

    }
    function getNoMaster($id_primary,$table,$kode){
        $size_code = strlen($kode) + 2;
        global $cfg;
        $objDB = new Database();
        try {
            $query = "SELECT max(substr($id_primary,-4,4)) as $id_primary FROM $table order by $id_primary desc";
            $data = $objDB->select($query);
            foreach ($data as $item):
                if (!isset($item[$id_primary])) {
                    $maxid = $kode . "0001".$item[$id_primary];
                } else {
                    $maxid = $kode . str_pad($item[$id_primary] + 1, 4, "0", STR_PAD_LEFT);
                }
            endforeach;
        } catch (Exception $e) {
            echo $e->getMessage();
            echo $query;
        }
        return $maxid;

    }
}
