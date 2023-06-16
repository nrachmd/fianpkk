<?php
// error_reporting(~E_NOTICE);
error_reporting(~E_NOTICE & ~E_WARNING);
global $cfg;
global $bln_arr;


session_start([
    'gc_maxlifetime' => 86400,
]);

$cfg['db']['host'] = 'localhost';
$cfg['db']['user'] = 'root';
$cfg['db']['password'] = '';
$cfg['db']['name'] = 'taxmon';

?>
