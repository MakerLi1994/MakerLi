<?php
$articletitle=$_GET['articletitle'];
 require_once '../comment/config.php';
header("Content-Type: text/html; charset=utf-8");

    $query=mysql_query("select * from fx_web where articletitle ='".$articletitle."'");
while ($row=mysql_fetch_array($query)) {
        $book = array(
            'articletitle'=>$row['articletitle'],
            'articlecontent'=>$row['articlecontent']
            
        );
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