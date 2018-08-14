<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/10
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/vue.js"></script>
    <script type="text/javascript" src="js/axios.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style type="text/css">
        #log{
            border:1px solid #e3e3e3;
            width:450px;
            height:380px;
            background-color: aquamarine;
            margin-left:400px;
            padding-left: 80px;
            padding-bottom: 10px;
        }
    </style>
    <script type="text/javascript" >
        function identifyload(){
            document.getElementById('myyzm').src='yzm01';
        }
    </script>
</head>
<body>
<div id="log">
    <div class="font text-muted">
        <h3>用户登录/Login</h3>
    </div>
    <hr>
    <form name="loginform" action="./ident" method="post">
        用户名&emsp;<input type="text" id="name" name="username" placeholder="请输入用户名"/><br/><br/>
        密&emsp;码&emsp;<input type="password" id="passwd" name="password" placeholder="请输入密码"/><br/><br/>
        验证码&emsp;<input type="text" id="yzm" name="yzm01" placeholder="请输入验证码"><img src="./yzm01" id="myyzm"/><br/><br/>
        <button type="submit" onclick="identifyload()">看不清楚,再来一张</button><br/><br/>
        <div class="row">
            <div class="col-lg-4">
                <input type="radio" name="status"/>管理人员
            </div >
            <div class="col-lg-4">
                <input type="radio" name="status"/>加盟店
            </div>
            <div class="col-lg-4">
                <input type="radio" name="status"/>商户<br/><br/>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <button type="submit" name="login" id="login" class="btn btn-success">登录</button>
            </div >
            <div class="col-lg-6">
                <button type="reset" name="reset" id="reset" class="btn btn-default">重置</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
