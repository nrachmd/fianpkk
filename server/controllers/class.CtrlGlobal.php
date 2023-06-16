<?php
date_default_timezone_set("Asia/Jakarta");
require_once 'class.Database.php';
class CtrlGlobal extends Database
{
    //call insert methods to save data  in database
    public function insert($table, $arFieldValues)
    {
        try {
            $objDB = new Database();
            $sql   = $objDB->insert2($table, $arFieldValues);
            return "success";
        } catch (Exception $e) {
            // echo "Query failure" . NL;
            echo json_encode($e->getMessage());
            die();
        }
    }

    //call insertAll methods to save data  in database
    public function insertAll($table, $arFieldValues)
    {
        try {
            $objDB = new Database();
            $sql   = $objDB->insertAll($table, $arFieldValues);
            return "success";
        } catch (Exception $e) {
            // echo "Query failure" . NL;
            echo json_encode($e->getMessage());
            die();
        }
    }

    //call update methods to save data  in database
    public function update($table, $arFieldValues, $arConditions)
    {
        try {
            $objDB = new Database();
            $sql   = $objDB->update2($table, $arFieldValues, $arConditions);
            return "success";
            // return $sql;
        } catch (Exception $e) {
            // echo "Query failure" . NL;
            echo json_encode($e->getMessage());
            die();
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
            // echo "Query failure" . NL;
            echo json_encode($e->getMessage());
            die();
        }
    }

    //call delete methods to delete data in database
    public function deleteAll($table, $arFieldValues)
    {
        try {
            $objDB = new Database();
            $sql   = $objDB->deleteAll($table, $arFieldValues);
            return "success";
        } catch (Exception $e) {
            // echo "Query failure" . NL;
            echo json_encode($e->getMessage());
            die();
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

   
    //OTHER FUNCTION
    public function findFirstAndLastDay($anyDate)
    {
        //$anyDate            =    '2009-08-25';    // date format should be yyyy-mm-dd
        list($yr, $mn, $dt) = explode('-', $anyDate); // separate year, month and date
        $timeStamp          = mktime(0, 0, 0, $mn, 1, $yr); //Create time stamp of the first day from the give date.
        $firstDay           = date('d/m/Y', $timeStamp); //get first day of the given month
        $Month           = date('m/Y', $timeStamp); //get first day of the given month
        list($y, $m, $t)    = explode('-', date('Y-m-t', $timeStamp)); //Find the last date of the month and separating it
        $lastDayTimeStamp   = mktime(0, 0, 0, $m, $t, $y); //create time stamp of the last date of the give month
        $lastDay            = date('d/m/Y', $lastDayTimeStamp); // Find last day of the month
        $arrDay             = array("$firstDay", "$lastDay", "$Month"); // return the result in an array format.

        return $arrDay;
    }
  
    
    public function setCookies($name,$value){
      $expire = time() + (86400 * 30);
      $path = "/"; // "/" adalah localhost
      // $domain = "/"; // "/" adalah localhost
      $domain = $_SERVER['HTTP_HOST'];
      $secure = FALSE;
      $httponly = FALSE;
      setcookie($name,$value, $expire,$path,$domain,$secure,$httponly);

      // setcookie($name, $value);
      return $value;
    }

    

    public function isDuplicate($num,$primary_field,$table) {
      global $cfg;
      $objDB = new Database();
      try {
        $sql = "SELECT $primary_field as name FROM $table WHERE $primary_field= '$num'";
        $passcode = $this->getName($sql);
      } catch (Exception $e) {
          // echo "Query failure" . NL;
          echo $e->getMessage();
          echo $query;
      }
    
      return $passcode;
    }

    public function generateNumberNew($primary_field,$table,$length = 4) {
        // $number = rand(0000, 9999);
        $characters       = '0123456789';
        $charactersLength = strlen($characters);
        $number     = '';
        for ($i = 0; $i < $length; $i++) {
            $number .= $characters[rand(0, $charactersLength - 1)];
        }
      return ($this->isDuplicate($number,$primary_field,$table)) ? $this->generateNumberNew($number,$primary_field,$table,$length = 4) : $number;
    }

    public function filterParams($params){
        return mysqli_escape_string($this->getConnection(), $params);
    }

    public function encode($string)
    {
        $encrypt_method = "AES-256-CBC";
        $secret_key     = '4R1frAgiLPaMu17KAS';
        $secret_iv      = '4R1frAgiLPaMu17KAS';
        $key            = hash('sha256', $secret_key);
        $iv             = substr(hash('sha256', $secret_iv), 0, 16);
        $output         = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
        $output         = base64_encode($output);
        return $output;
    }
    public function decode($string)
    {
        $encrypt_method = "AES-256-CBC";
        $secret_key     = '4R1frAgiLPaMu17KAS';
        $secret_iv      = '4R1frAgiLPaMu17KAS';
        $key            = hash('sha256', $secret_key);
        $iv             = substr(hash('sha256', $secret_iv), 0, 16);
        $output         = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
        return $output;
    }
    
    public function getAccessFile($menu_id)
    {
        global $cfg;
        $objDB = new Database();
        try {
            $query = "SELECT concat(view,'#',edit,'#',del,'#',adddata,'#',menu_id) name FROM m_menu_level WHERE menu_id = '" . $menu_id . "' AND id_level = '" . $_COOKIE['id_level'] . "' AND passcode = '".$_COOKIE['passcode']."'";
            //call select methods to retreive max id Order 00001
            $data = $this->getName($query);
        } catch (Exception $e) {
            echo "Query failure" . NL . $query;
            echo $e->getMessage();
        }
        
        return $data;
    }

   
    
}
