<?php

 require_once '../comment/config.php';

 $query=mysql_query("select * from fx_web");
    $flag = false;
while ($row=mysql_fetch_array($query)) {
	$flag = true;
	$sayList[] = array(
		'articletype'=>$row['articletype'],
		'articlecontent'=>$row['articlecontent'],
		'articletitle'=>$row['articletitle'],
		'time'=>$row['time'],
		'id'=>$row['id'],
      );
}
if($flag){
   echo json_encode($sayList);
}else{
	echo true;
}
?>