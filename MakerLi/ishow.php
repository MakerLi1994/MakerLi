<?php

 require_once 'comment/config.php';

 $query=mysql_query("select * from fx_shouye order by id");
    $flag = false;
while ($row=mysql_fetch_array($query)) {
	$flag = true;
	$sayList[] = array(
		'id'=>$row['id'],
		'content'=>$row['content'],
		'title'=>$row['title'],
		'img'=>$row['img'],
		'btnl'=>$row['btnl'],
		'btnr'=>$row['btnr'],
		'divc'=>$row['divc'],
		'herf'=>$row['herf']
      );
}
if($flag){
   echo json_encode($sayList);
}else{
	echo true;
}
?>