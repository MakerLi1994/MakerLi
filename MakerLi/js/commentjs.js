/**
 * Created by Administrator on 2017/6/11.
 */
/*
* 封装的ajax函数 url的值为'';fn的值为function(data){}
* */
function commentAjax(url,fn){
    $.ajax({
        type:'get',
        url:url,
        dataType:'json',
        success:fn
    })
}
/*
 *
 *
 *
 */
function addStyle(data){
    switch(data.articletype){
        case 'php':return labelStyle='label-info';break;
        case 'sql':return labelStyle='label-default';break;
        case 'html':return labStyle='label-primary';break;
        case 'css':return labelStyle='label-success';break;
        case 'javascript':return labelStyle='label-warning';break;
        case 'hb':return labelStyle='label-danger';break;

    }
}