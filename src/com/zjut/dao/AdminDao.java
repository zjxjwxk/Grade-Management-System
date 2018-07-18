package com.zjut.dao;

import com.zjut.bean.*;
import com.zjut.bean.Class;
import com.zjut.db.DBAccess;
import org.apache.ibatis.session.SqlSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zjxjwxk
 * Date: 2018/7/14
 * Time: 0:03
 * Description: 管理员Dao层
 */
public class AdminDao {

    public List<Admin> queryAdminPwd(String ID) {
        DBAccess dbAccess = new DBAccess();
        List<Admin> adminList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            adminList = sqlSession.selectList("Admin.queryAdminPwd", ID);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return adminList;
    }

    public List<Department> queryDepartment() {
        DBAccess dbAccess = new DBAccess();
        List<Department> departmentList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            departmentList = sqlSession.selectList("Department.queryDepartment");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return departmentList;
    }

    public void insertDepartment(String ID, String name) {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            Department department = new Department();
            department.setID(ID);
            department.setName(name);
            sqlSession.insert("InsertDepartment.InsertDepartment", department);
            sqlSession.commit();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public List<Class> queryClass() {
        DBAccess dbAccess = new DBAccess();
        List<Class> classList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            classList = sqlSession.selectList("Class.queryClass");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return classList;
    }

    public void insertClass(String ID, String departmentName) {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            Class aClass = new Class();
            aClass.setID(ID);
            aClass.setDepartmentName(departmentName);
            sqlSession.insert("InsertClass.InsertClass", aClass);
            sqlSession.commit();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public List<Student> queryStudent(String ID, String name, String departmentName, String className, String address) {
        DBAccess dbAccess = new DBAccess();
        List<Student> studentList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            Student student = new Student();
            student.setID(ID);
            student.setName(name);
            student.setDepartmentName(departmentName);
            student.setClassName(className);
            student.setAddress(address);
            studentList = sqlSession.selectList("QueryStudent.QueryStudent", student);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return studentList;
    }

    public void insertStudent(String ID, String name,String departmentName, String className
            , String sex, int age, String address) {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            Student student = new Student();
            student.setID(ID);
            student.setName(name);
            student.setDepartmentName(departmentName);
            student.setClassName(className);
            student.setSex(sex);
            student.setAge(age);
            student.setAddress(address);
            sqlSession.insert("InsertStudent.InsertStudent", student);
            sqlSession.commit();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public List<Teacher> queryTeacher() {
        DBAccess dbAccess = new DBAccess();
        List<Teacher> teacherList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            teacherList = sqlSession.selectList("Teacher.queryTeaInfo");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return teacherList;
    }

    public void insertTeacher(String ID, String name,String sex, String age
            , String title, String phone) {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            Teacher teacher = new Teacher();
            teacher.setID(ID);
            teacher.setName(name);
            teacher.setSex(sex);
            teacher.setAge(age);
            teacher.setTitle(title);
            teacher.setPhone(phone);
            sqlSession.insert("InsertTeacher.InsertTeacher", teacher);
            sqlSession.commit();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public List<Score> queryScore(String term, String classNo, String ID, String stuName, String courseName
            ,String teacherName) {
        DBAccess dbAccess = new DBAccess();
        List<Score> scoreList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            Score scoreObj = new Score();
            scoreObj.setTerm(term);
            scoreObj.setClassNo(classNo);
            scoreObj.setID(ID);
            scoreObj.setStuName(stuName);
            scoreObj.setName(courseName);
            scoreObj.setTeacher(teacherName);
            scoreList = sqlSession.selectList("Score.queryStuScore", scoreObj);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return scoreList;
    }

    public List<Course> queryCourse(String ID, String name, String teacher, String term) {
        DBAccess dbAccess = new DBAccess();
        List<Course> courseList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            Course course = new Course();
            course.setID(ID);
            course.setName(name);
            course.setTeacher(teacher);
            course.setTerm(term);
            courseList = sqlSession.selectList("QueryCourse.queryCourse", course);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return courseList;
    }

    public void insertCourse(String ID, String name,String teacher, String term
            , int hours, String type, int credit) {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            Course course = new Course();
            course.setID(ID);
            course.setName(name);
            course.setTeacher(teacher);
            course.setTerm(term);
            course.setHours(hours);
            course.setCredit(credit);
            course.setType(type);
            sqlSession.insert("InsertCourse.InsertCourse", course);
            sqlSession.commit();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public List<Course> queryClassCourse(String ID, String classNo
            , String name, String teacher, String term) {
        DBAccess dbAccess = new DBAccess();
        List<Course> courseList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            Course course = new Course();
            course.setID(ID);
            course.setClassNo(classNo);
            course.setName(name);
            course.setTeacher(teacher);
            course.setTerm(term);
            courseList = sqlSession.selectList("ClassCourse.queryClassCourses", course);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return courseList;
    }

    public void insertClassCourse(String classNo, String ID) {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            Course course = new Course();
            course.setClassNo(classNo);
            course.setID(ID);
            sqlSession.insert("InsertClassCourse.InsertClassCourse", course);
            sqlSession.commit();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
