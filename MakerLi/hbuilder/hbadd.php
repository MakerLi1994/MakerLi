<?php
// 数据库连接
$host="localhost";
$db_user="root";
$db_pass="root";
$db_name="makerli";
$link=mysql_connect($host,$db_user,$db_pass);
mysql_select_db($db_name,$link);
header("Content-Type: text/html; charset=utf-8");
$articletype='hb';
$articlecontent='内容1';
$articletitle='第二个hb';
$time=date('Y-m-d');
$id='6';
 $sql="insert into fx_web(articletype,articlecontent,articletitle,time,id) values('$articletype','$articlecontent','$articletitle','$time','$id')";
  $ret=mysql_query($sql,$link);
             if ($ret === false) {
    die("Create Table Failed: " . mysql_error($link));
} else {
    echo "Create Table Succeed<br />";
 
}

 ?>