<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>高校成绩管理系统</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="<%= basePath%>resources/css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body class="app sidebar-mini rtl">
    <!-- Navbar-->
    <header class="app-header"><a class="app-header__logo" href="/admin/index">成绩管理系统</a>
      <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
      <!-- Navbar Right Menu-->
      <ul class="app-nav">
        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
          <ul class="dropdown-menu settings-menu dropdown-menu-right">
            <li><a class="dropdown-item" href="<%=basePath%>index.jsp"><i class="fa fa-sign-out fa-lg"></i> 退出</a></li>
          </ul>
        </li>
      </ul>
    </header>
    <!-- Sidebar menu-->
    <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg" alt="User Image">
        <div>
          <p class="app-sidebar__user-name">${adminID}</p>
          <p class="app-sidebar__user-designation">管理员</p>
        </div>
      </div>
      <ul class="app-menu">
        <li><a class="app-menu__item active" href="/admin/index"><i class="app-menu__icon fa fa-user"></i><span class="app-menu__label">个人信息</span></a></li>
        <li><a class="app-menu__item" href="/admin/department"><i class="app-menu__icon fa fa-building"></i><span class="app-menu__label">专业管理</span></a></li>
        <li><a class="app-menu__item" href="/admin/class"><i class="app-menu__icon fa fa-users"></i><span class="app-menu__label">班级管理</span></a></li>
        <li><a class="app-menu__item" href="/admin/student"><i class="app-menu__icon fa fa-user"></i><span class="app-menu__label">学生管理</span></a></li>
        <li><a class="app-menu__item" href="/admin/teacher"><i class="app-menu__icon fa fa-user"></i><span class="app-menu__label">教师管理</span></a></li>
        <li><a class="app-menu__item" href="/admin/course"><i class="app-menu__icon fa fa-book"></i><span class="app-menu__label">课程管理</span></a></li>
        <li><a class="app-menu__item" href="/admin/classCourse"><i class="app-menu__icon fa fa-book"></i><span class="app-menu__label">班级开课</span></a></li>
        <li><a class="app-menu__item" href="/admin/score"><i class="app-menu__icon fa fa fa-align-left"></i><span class="app-menu__label">成绩管理</span></a></li>
      </ul>
    </aside>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-user"></i> 个人信息</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="/admin/index">个人信息</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-6 col-lg-3">
          <div class="widget-small primary coloured-icon"><i class="icon fa fa-id-card fa-3x"></i>
            <div class="info">
              <h4>管理员号</h4>
              <p><b>${adminID}</b></p>
            </div>
          </div>
        </div>
      </div>
    </main>
    <!-- Essential javascripts for application to work-->
    <script src="<%= basePath%>resources/js/jquery-3.2.1.min.js"></script>
    <script src="<%= basePath%>resources/js/popper.min.js"></script>
    <script src="<%= basePath%>resources/js/bootstrap.min.js"></script>
    <script src="<%= basePath%>resources/js/main.js"></script>
  </body>
</html>