<?php
// 数据库连接
 require_once '../comment/config.php';

header("Content-Type: text/html; charset=utf-8");
$itemsname='HBuilder混合app仿微信';
$introduce='HBuilder混合appk开发';
$plan='20';
$time=date('Y-m-d');
$herf='../index.html';
 $sql="insert into fx_items(itemsname,introduce,plan,time,herf) values('$itemsname','$introduce','$plan','$time','$herf')";
  $ret=mysql_query($sql,$link);
             if ($ret === false) {
    die("Create Table Failed: " . mysql_error($link));
} else {
    echo "Create Table Succeed<br />";
 
}

 ?>