<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>高校成绩管理系统</title>
</head>
<body>
<section class="material-half-bg">
    <div class="cover"></div>
</section>
<section class="login-content">
    <div class="logo">
        <h1>高校成绩管理系统</h1>
    </div>
    <div class="login-box">
        <form class="login-form" action="/login">
            <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>登陆</h3>
            <div class="form-group">
                <label class="control-label">登陆类型</label>
                <select class="form-control" name="type">
                    <option disabled selected>请选择登陆类型</option>
                    <option>学生</option>
                    <option>教师</option>
                    <option>管理员</option>
                </select>
            </div>
            <div class="form-group">
                <label class="control-label">用户名</label>
                <input class="form-control" type="text" name="ID" placeholder="请输入用户名" autofocus required>
            </div>
            <div class="form-group">
                <label class="control-label">密码</label>
                <input class="form-control" type="password" name="password" placeholder="请输入密码" required>
            </div>
            <div class="form-group">
                <div class="text-center">${message}</div>
            </div>

            <div class="form-group btn-container">
                <button class="btn btn-primary btn-block" type="submit"><i class="fa fa-sign-in fa-lg fa-fw"></i>登陆</button>
            </div>
        </form>
    </div>
</section>
<!-- Essential javascripts for application to work-->
<script src="<%=basePath%>resources/js/jquery-3.2.1.min.js"></script>
<script src="<%=basePath%>resources/js/popper.min.js"></script>
<script src="<%=basePath%>resources/js/bootstrap.min.js"></script>
<script src="<%=basePath%>resources/js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="<%=basePath%>resources/js/plugins/pace.min.js"></script>
</body>
</html>