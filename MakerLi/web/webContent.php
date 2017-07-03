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
    <script>
    $(function () {

        $.ajax({
            type:'get',
            url:'webSql.php',
            <?php
            $articletitle=$_GET['articletitle'];?>
            data:{articletitle:'<?php echo $articletitle?>'},
            dataType:'json',
            success:function(data){
                    $(".jumbotron>h1").html(data.articletitle);
                    $('.jumbotron>p').html(data.articlecontent);
                
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
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../../index.html">MakerLi</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <form class="navbar-form navbar-right" role="search" action="../search/search.php" method="get">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="您想搜索的内容" name="search">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <!--首页内容-->
    <div class="row " >
    </div>



    <!--详细栏-->

    <div class="jumbotron">
        <h1></h1>
        <p></p>
        
    </div>
</div>

</body>
</html>