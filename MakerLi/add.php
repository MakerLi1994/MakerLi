<?php
// 数据库连接
 require_once 'comment/config.php';

// 获取参数
// $last = $_GET['last'];
// $amount = $_GET['amount'];
// // 查询SQL语句
// $start = $last * $amount;
$id='4';
$content='内容2';
$title='标题2';
$img='3.jpg';
$btnl='前往';
$btnr='收藏';
$divc='col-xs12 col-sm-12 col-md-12 col-lg-12';
$herf='';
 $sql="insert into fx_shouye(id,img,title,content,btnl,btnr,divc,herf) values('$id','$img','$title','$content','$btnl','$btnr','$divc',$'herf')";
  $ret=mysql_query($sql,$link);
             if ($ret === false) {
    die("Create Table Failed: " . mysql_error($link));
} else {
    echo "Create Table Succeed<br />";
 
}

 ?>