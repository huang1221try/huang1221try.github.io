<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set  var="ctxPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
</head>
<%--<link href="/static/css/test.css" type="text/css" rel="stylesheet">--%>
<style>
    body{
        background-color: paleturquoise;

    }
    .div1{
        margin: 0 auto;
        /* background-color: .000000; */
        width: 700px;
        height: 100%;
    }
    .div2{
        background-color: white;
        width: 600px;
        height: 150px;
        margin: 10px auto;
    }
    .yc{
        /* background-color: .0000CC; */
        width: 550px;
        height: 20px;
        position: relative;
        margin: 0 auto;
    }
    .sp1{
        margin-left:460px;
    }
    /*.sp2{*/
    /*    float: left;*/
    /*    !*margin-left:60px;*!*/
    /*}*/
    /*.sp3{*/
    /*    padding-left:60px ;*/
    /*}*/
    /*.sp4{*/
    /*    !*float: left;*!*/
    /*    padding-left:60px ;*/
    /*    color: blue;*/
    /*    !* display: none; *!*/
    /*}*/
    table{
        width: 100%;
        text-align: center;

    }
    td{
        width: 190px;
    }

    td input{
        width: 120px;
        height: 25px;
        border-bottom: 1px solid #000000;
        border-top:0px;
        border-left:0px;
        border-right:0px;
    }
    .td1{
        text-align: left;
    }
    .hides input{
        display: none;
    }
    .div3{
        /* background-color: .000000; */
        width: 570px;
        height: 30px;
        position: relative; /*必须指定position，值也可以为absolute*/
        margin: 0 auto -25px auto;
    }
    .div4{
        /* background-color: .000000; */
        width: 550px;
        height: 86px;
        position: relative; /*必须指定position，值也可以为absolute*/
        top: 10%;
        margin: -18px auto;

    }
    .div4-dj{
        background-color: white;
        width: 100%;
        height: 50%;
        float: left;
    }
    .div4-mean{
        /*background-color: aliceblue;*/
        width: 100%;
        height: 50%;
        float: left;
    }
    .div4-dj span{
        width: 100%;
        margin-left:30px ;
    }
    .div4-mean span{
        width: 100%;
        margin-left:30px ;
    }

</style>
<body>

    <div class="div1">
        <c:forEach var="word" items="${list}">
        <div class="div2">
            <div class="yc">
                <span class="sp1">
                    易错<input type="checkbox" name="yc" />
                </span>
            </div>
            <div class="div3">
                <table>
                    <tr>
                        <td class="td1">${word.w_id}、&nbsp;&nbsp;${word.w_name}</td>
                        <td><input type="text" name="val" value="${word.w_name}"/></td>
                        <td class="hides"><input type="text" name="inval" value="${word.w_name}"/></td>
                    </tr>
                </table>

            </div>
            <br/>
            <hr/>
            <div class="div4">
                <div class="div4-dj">
                    <span>
                        由于页面设计需要，有时我们可能会出现只有下划线（底部边框）的input，如下图所示
                    </span>
                </div>
                <div class="div4-mean">
                    <span>
                        比如将上、右、左边框宽度设置为0，下边框为1，颜色根据需要调整

                    </span>
                </div>
            </div>

        </div>
        </c:forEach>
        <button onclick="sub();">提交</button>
    </div>

</body>
<script>
    function sub(){
        alert("提交");

        var str = document.getElementsByName("val");
        var vals = new Array(str.length);
        for(var i=0;i<str.length;i++){
            // console.log(str[i].value);
            vals[i]=str[i].value;
        }
        for(var j=0;j<vals.length;j++){
            console.log(vals[j]);
        }
    }
</script>
</html>

