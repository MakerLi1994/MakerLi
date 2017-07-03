<?php
$search=$_GET['search'];
 require_once '../comment/config.php';
header("Content-Type: text/html; charset=utf-8");

    $query=mysql_query("select * from fx_web where articletitle like '%".$search."%'");
$i=0;
while ($row=mysql_fetch_array($query)) {
        $book[$i] = array(
            'articletitle'=>$row['articletitle'],
            'articlecontent'=>$row['articlecontent'],
            'articletype'=>$row['articletype'],
            'time'=>$row['time']
              
        );
		$i++;
    } 
	echo json_encode($book);

  

//     $flag = false;
// while ($row=mysql_fetch_array($query)) {
//     $flag = true;
//     $sayList[] = array(
//         'articletype'=>$row['articletype'],
//         'articlecontent'=>$row['articlecontent'],
//         'articletitle'=>$row['articletitle'],
//         'time'=>$row['time'],
//         'id'=>$row['id'],
//       );
// }
// if($flag){
//    echo json_encode($sayList);
// }else{
//     echo true;
// }
?>