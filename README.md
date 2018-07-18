# GradeManagementSystem
Bootstrap/JSP/Servlet/Mybatis 高校成绩管理系统

<br>

## 开发平台
IntelliJ IDEA 2018、Microsoft SQL Server Management Studio 2018

<br>

## 开发环境
JDK 8、Tomcat 7.0.85、Mybatis 3.4.6、mssql-jdbc-6.4.0、jstl、log4j-1.2.17、jQuery-3.2.1、bootstrap、jQuery.dataTables、font-awesome

<br>

## 登陆系统

根据登陆类型（学生、教师、管理员），判断输入的用户名是否存在，输入的密码是否正确。
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/login.png)

---

<br>
<br>

## 学生系统

### 个人信息
可查看个人基本信息（包括学号、姓名、专业、班级、性别、年龄、生源所在地和已修学分等）
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/student-info.png)

### 我的课程
可查看我的所选课程及课程详情（查询结果包含学期、课程、任课教师、学时、学分、考查类型、在读或已修状态、以修学分）
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/student-course.png)

### 成绩查询
可根据学期查询个人成绩（查询结果包含学期、课程、任课教师、学时、学分、考查类型、成绩）
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/student-score.png)

### 选课
可根据个人所在班级所开设的课程进行选课和退课。
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/student-choose-course.png)

---

<br>
<br>

## 教师系统

### 个人信息
可查看个人基本信息（包括教师号、姓名、性别、年龄、职称、联系电话等）
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/teacher-info.png)

### 我的任课
可查询教师任课情况（查询结果包括学期、班级、课程、学时、学分、考查类型）
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/teacher-course.png)

### 我的学生
可检索查询我的学生（可根据学期、班级、课程进行查询，查询结果包括学期、班级、学号、姓名、课程）
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/teacher-students.png)

### 学生成绩
可检索查询学生成绩（可根据学期、班级、课程进行查询，查询结果包括名次、学期、班级、学号、姓名、课程、成绩，并能查看排名）
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/teacher-students-score.png)

### 成绩录入
可检索查询还未录入成绩的学生（可根据学期、班级、课程进行查询，查询结果包括学期、班级、学号、姓名、课程），可对其进行批量成绩录入
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/teacher-score-insert.png)

---

<br>
<br>

## 管理员系统

### 管理员信息
可查看管理员信息（管理员号）
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/admin-info.png)

### 专业管理
可根据专业编号、专业名称添加专业，并在下方显示已有的专业编号及名称
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/admin-department.png)

### 班级管理
可根据专业名称、班级编号添加班级，并在下方显示已有的班级及其所属的专业。
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/admin-class.png)

### 学生管理
可根据学号、姓名、专业、班级、性别、年龄、生源所在地添加学生，可检索查询学生信息（可根据学号、姓名、专业、班级、生源所在地）并显示在下方
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/admin-students.png)

### 教师管理
可根据教师编号、姓名、性别、年龄、职称、联系电话添加教师，并在下方显示已有的教师信息。
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/admin-teachers.png)

### 课程管理
可根据学期、课程编号、课程名称、教师姓名、学时、学分、考查类型添加课程，并可根据学期、课程编号、课程名称、教师姓名查询课程信息并显示在下方
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/admin-courses.png)

### 班级开课
可根据班级和课程编号为班级开设课程，并可根据学期、班级、课程编号、课程名称、教师检索查询班级的开课情况
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/admin-class-courses.png)

### 成绩管理
可根据学期、班级、学号、学生姓名、课程名称、教师名称查询成绩信息和排名情况。
<br>
<br>
![图片不存在](https://github.com/zjxjwxk/GradeManagementSystem/raw/master/Screenshots/admin-score.png)
