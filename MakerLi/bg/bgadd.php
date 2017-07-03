<?php
// 数据库连接
require_once '../comment/config.php';
$link=mysql_connect($host,$db_user,$db_pass);
mysql_select_db($db_name,$link);
header("Content-Type: text/html; charset=utf-8");
$articletype='php';
$articlecontent='内容3';
$articletitle='第二个php';
$time=date('Y-m-d');
$id='5';
 $sql="insert into fx_web(articletype,articlecontent,articletitle,time,id) values('$articletype','$articlecontent','$articletitle','$time','$id')";
  $ret=mysql_query($sql,$link);
             if ($ret === false) {
    die("Create Table Failed: " . mysql_error($link));
} else {
    echo "Create Table Succeed<br />";
 
}

 ?>