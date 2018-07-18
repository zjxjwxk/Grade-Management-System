<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <header class="app-header"><a class="app-header__logo" href="/student/index">成绩管理系统</a>
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
          <p class="app-sidebar__user-name">${student.name}</p>
          <p class="app-sidebar__user-designation">学生</p>
        </div>
      </div>
      <ul class="app-menu">
        <li><a class="app-menu__item" href="/student/index"><i class="app-menu__icon fa fa-user"></i><span class="app-menu__label">个人信息</span></a></li>
        <li><a class="app-menu__item active" href="/student/courses"><i class="app-menu__icon fa fa-book"></i><span class="app-menu__label">我的课程</span></a></li>
        <li><a class="app-menu__item" href="/student/score"><i class="app-menu__icon fa fa-align-left"></i><span class="app-menu__label">成绩查询</span></a></li>
        <li><a class="app-menu__item" href="/student/classCourse"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">选课</span></a></li>
      </ul>
    </aside>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-book"></i> 我的课程</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb side">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item active"><a href="/student/courses">我的课程</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <p class="lead"><strong>已修学分：</strong>${student.credit}</p>
            <div class="tile-body">
              <table class="table table-hover table-bordered" id="coursesTable">
                <thead>
                  <tr>
                    <th>学期</th>
                    <th>课程名称</th>
                    <th>任课教师</th>
                    <th>学时</th>
                    <th>学分</th>
                    <th>考查类型</th>
                    <th>状态</th>
                  </tr>
                </thead>
                <tbody>
                    <c:forEach items="${stuCourseList}" var="course" varStatus="">
                        <tr>
                            <td>${course.term}</td>
                            <td>${course.name}</td>
                            <td>${course.teacher}</td>
                            <td>${course.hours}</td>
                            <td>${course.credit}</td>
                            <td>${course.type}</td>
                            <td>${course.status}</td>
                        </tr>
                    </c:forEach>
                </tbody>
              </table>
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
    <!-- The javascript plugin to display page loading on top-->
    <script src="<%= basePath%>resources/js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <!-- Data table plugin-->
    <script type="text/javascript" src="<%= basePath%>resources/js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="<%= basePath%>resources/js/plugins/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">$('#coursesTable').DataTable();</script>
  </body>
</html>