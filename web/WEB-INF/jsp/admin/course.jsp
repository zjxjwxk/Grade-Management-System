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
        <li><a class="app-menu__item" href="/admin/index"><i class="app-menu__icon fa fa-user"></i><span class="app-menu__label">个人信息</span></a></li>
        <li><a class="app-menu__item" href="/admin/department"><i class="app-menu__icon fa fa-building"></i><span class="app-menu__label">专业管理</span></a></li>
        <li><a class="app-menu__item" href="/admin/class"><i class="app-menu__icon fa fa-users"></i><span class="app-menu__label">班级管理</span></a></li>
        <li><a class="app-menu__item" href="/admin/student"><i class="app-menu__icon fa fa-user"></i><span class="app-menu__label">学生管理</span></a></li>
        <li><a class="app-menu__item" href="/admin/teacher"><i class="app-menu__icon fa fa-user"></i><span class="app-menu__label">教师管理</span></a></li>
        <li><a class="app-menu__item active" href="/admin/course"><i class="app-menu__icon fa fa-book"></i><span class="app-menu__label">课程管理</span></a></li>
        <li><a class="app-menu__item" href="/admin/classCourse"><i class="app-menu__icon fa fa-book"></i><span class="app-menu__label">班级开课</span></a></li>
        <li><a class="app-menu__item" href="/admin/score"><i class="app-menu__icon fa fa fa-align-left"></i><span class="app-menu__label">成绩管理</span></a></li>
      </ul>
    </aside>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-book"></i> 课程管理</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="/admin/course">课程管理</a></li>
        </ul>
      </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tile">
                    <form class="form-group col-md-12" action="/admin/insertCourse">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-3">
                                    <label>学期</label>
                                    <select class="form-control" name="insertTerm" required>
                                        <option disabled selected>请选择学期</option>
                                        <option>2016-2017(1)</option>
                                        <option>2016-2017(2)</option>
                                        <option>2017-2018(1)</option>
                                        <option>2017-2018(2)</option>
                                    </select>
                                </div>
                                <div class="col-lg-3">
                                    <label>课程编号</label>
                                    <input class="form-control" type="text" name="insertID" placeholder="请输入课程编号" required>
                                </div>
                                <div class="col-lg-3">
                                    <label>课程名称</label>
                                    <input class="form-control" type="text" name="insertName" placeholder="请输入课程名称" required>
                                </div>
                                <div class="col-lg-3">
                                    <label>教师姓名</label>
                                    <input class="form-control" type="text" name="insertTeacher" placeholder="请输入教师姓名" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-3">
                                    <label>学时</label>
                                    <input class="form-control" type="text" name="insertHours" placeholder="请输入学时" required>
                                </div>
                                <div class="col-lg-3">
                                    <label>学分</label>
                                    <input class="form-control" type="text" name="insertCredit" placeholder="请输入学分" required>
                                </div>
                                <div class="col-lg-3">
                                    <label>考查类型</label>
                                    <select class="form-control" name="insertType" required>
                                        <option disabled selected>请选择考查类型</option>
                                        <option>考试</option>
                                        <option>考查</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="tile-footer"><button class="btn btn-primary" type="submit" >添加</button></div>
                    </form>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tile">
                    <form class="form-group col-md-12" action="/admin/course">
                        <div class="row">
                            <div class="col-lg-3">
                                <label>学期</label>
                                <select class="form-control" name="term">
                                    <option disabled selected>请选择学期</option>
                                    <option>2016-2017(1)</option>
                                    <option>2016-2017(2)</option>
                                    <option>2017-2018(1)</option>
                                    <option>2017-2018(2)</option>
                                </select>
                            </div>
                            <div class="col-lg-3">
                                <label>课程编号</label>
                                <input class="form-control" type="text" name="ID" placeholder="请输入课程编号">
                            </div>
                            <div class="col-lg-3">
                                <label>课程名称</label>
                                <input class="form-control" type="text" name="name" placeholder="请输入课程名称">
                            </div>
                            <div class="col-lg-3">
                                <label>教师姓名</label>
                                <input class="form-control" type="text" name="teacher" placeholder="请输入教师姓名">
                            </div>
                        </div>
                        <div class="tile-footer"><button class="btn btn-primary" type="submit" >查询</button></div>
                    </form>
                </div>
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
                                <th>课程编号</th>
                                <th>课程名称</th>
                                <th>任课教师</th>
                                <th>学时</th>
                                <th>学分</th>
                                <th>考查类型</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${courseList}" var="course" varStatus="status">
                                <tr>
                                    <td>${course.term}</td>
                                    <td>${course.ID}</td>
                                    <td>${course.name}</td>
                                    <td>${course.teacher}</td>
                                    <td>${course.hours}</td>
                                    <td>${course.credit}</td>
                                    <td>${course.type}</td>
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