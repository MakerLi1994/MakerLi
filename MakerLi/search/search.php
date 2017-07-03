<?php
$search=$_GET['search'];
?>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>MakerLi</title>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" href="../css/bootstrap.min.css"/>
    <script src="../js/jquery-1.12.2.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/html5shiv.min.js"></script>
    <script src="../js/commentjs.js"></script>
     <script>
    $(function () {

        $.ajax({
            type:'get',
            url:'searchSql.php',
            data:{search:'<?php echo $search?>'},
            dataType:'json',
            success:function(data){    
            for(var k in data){
                    var labelStyle='';
                    labelStyle=addStyle(data[k]);
                            str=
                                    '<li class="list-group-item"><span class="badge">'+data[k].time+'</span><a href="../web/webContent.php?articletitle='+data[k].articletitle+'">'+data[k].articletitle+'</a><span class="label '+labelStyle+'">'+data[k].articletype+'</span></li>'
                            $("#webContent").append(str);
                            }
                        }
            })
       
    })
    </script>
</head>
<body>
<div class="body container">
    <!--导航栏-->
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">MakerLi</a>
            </div>
        </div>
    </nav>
    <ul class="list-group  " id="webContent">

    </ul>
</div>

</body>
</html>