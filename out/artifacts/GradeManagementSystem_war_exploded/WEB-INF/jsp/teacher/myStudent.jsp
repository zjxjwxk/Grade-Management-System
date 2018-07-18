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
    <header class="app-header"><a class="app-header__logo" href="/teacher/index">成绩管理系统</a>
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
          <p class="app-sidebar__user-name">${sessionScope.teacher.name}</p>
          <p class="app-sidebar__user-designation">教师</p>
        </div>
      </div>
      <ul class="app-menu">
        <li><a class="app-menu__item" href="/teacher/index"><i class="app-menu__icon fa fa-user"></i><span class="app-menu__label">个人信息</span></a></li>
        <li><a class="app-menu__item" href="/teacher/courses"><i class="app-menu__icon fa fa-book"></i><span class="app-menu__label">我的任课</span></a></li>
        <li><a class="app-menu__item active" href="/teacher/myStudent"><i class="app-menu__icon fa fa-users"></i><span class="app-menu__label">我的学生</span></a></li>
        <li><a class="app-menu__item" href="/teacher/score"><i class="app-menu__icon fa fa-align-left"></i><span class="app-menu__label">学生成绩</span></a></li>
        <li><a class="app-menu__item" href="/teacher/scoreInsert"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">成绩录入</span></a></li>
      </ul>
    </aside>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-users"></i> 我的学生</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="/teacher/myStudent">我的学生</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <form class="tile">
            <div class="form-group col-md-12">
                <div class="row">
                    <div class="col-lg-2">
                        <label>学期</label>
                        <select class="form-control" name="term">
                            <option disabled selected>请选择学期</option>
                            <option>2016-2017(1)</option>
                            <option>2016-2017(2)</option>
                            <option>2017-2018(1)</option>
                            <option>2017-2018(2)</option>
                        </select>
                    </div>
                    <div class="col-lg-2">
                        <label>班级</label>
                        <select class="form-control" name="classNo">
                            <option disabled selected>请选择班级</option>
                            <option>软件工程1601</option>
                            <option>软件工程1602</option>
                            <option>软件工程1603</option>
                            <option>软件工程1604</option>
                        </select>
                    </div>
                    <div class="col-lg-2">
                        <label>课程</label>
                        <select class="form-control" name="courseName">
                            <option disabled selected>请选择课程</option>
                            <option>数据库技术</option>
                        </select>
                    </div>
                </div>
                <div class="tile-footer"><button class="btn btn-primary" type="submit" href="/student/myStudent">查询</button></div>
            </div>
          </form>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <form class="tile">
            <div class="tile-body">
              <table class="table table-hover table-bordered" id="scoreTable">
                <thead>
                  <tr>
                    <th>学期</th>
                    <th>班级</th>
                    <th>学号</th>
                    <th>学生姓名</th>
                    <th>课程</th>
                  </tr>
                </thead>
                <tbody>
                    <c:forEach items="${myStudentList}" var="student" varStatus="status">
                        <tr>
                            <td>${student.term}</td>
                            <td>${student.classNo}</td>
                            <td>${student.ID}</td>
                            <td>${student.name}</td>
                            <td>${student.courseName}</td>
                        </tr>
                    </c:forEach>
                </tbody>
              </table>
            </div>
          </form>
        </div>
      </div>
    </main>
    <!-- Essential javascripts for application to work-->
    <script src="<%= basePath%>resources/js/jquery-3.2.1.min.js"></script>
    <script src="<%= basePath%>resources/js/popper.min.js"></script>
    <script src="<%= basePath%>resources/js/bootstrap.min.js"></script>
    <script src="<%= basePath%>resources/js/main.js"></script>
    <!-- Data table plugin-->
    <script type="text/javascript" src="<%= basePath%>resources/js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="<%= basePath%>resources/js/plugins/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">$('#scoreTable').DataTable();</script>
  </body>
</html>