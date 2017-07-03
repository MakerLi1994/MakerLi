<?php

 require_once '../comment/config.php';

 $query=mysql_query("select * from fx_items");
    $flag = false;
while ($row=mysql_fetch_array($query)) {
	$flag = true;
	$sayList[] = array(
		'itemsname'=>$row['itemsname'],
		'introduce'=>$row['introduce'],
		'plan'=>$row['plan'],
		'time'=>$row['time'],
		'herf'=>$row['herf'],
      );
}
if($flag){
   echo json_encode($sayList);
}else{
	echo true;
}
?>