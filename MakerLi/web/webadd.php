<?php
// 数据库连接
 require_once '../comment/config.php';
header("Content-Type: text/html; charset=utf-8");
$articletype='html';
$articlecontent='内容1';
$articletitle='第一个php';
$time=date('Y-m-d');
 $sql="insert into fx_web(articletype,articlecontent,articletitle,time) values('$articletype','$articlecontent','$articletitle','$time')";
  $ret=mysql_query($sql,$link);
             if ($ret === false) {
    die("Create Table Failed: " . mysql_error($link));
} else {
    echo "Create Table Succeed<br />";
 
}

 ?>