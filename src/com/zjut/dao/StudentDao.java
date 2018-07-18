package com.zjut.dao;

import com.zjut.bean.Course;
import com.zjut.bean.Score;
import com.zjut.bean.StuCourse;
import com.zjut.bean.Student;
import com.zjut.db.DBAccess;
import org.apache.ibatis.session.SqlSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class StudentDao {

    public List<Student> queryStuPwd(String ID) {
        DBAccess dbAccess = new DBAccess();
        List<Student> studentList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            studentList = sqlSession.selectList("QueryStuPwd.queryStuPwd", ID);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return studentList;
    }

    public List<Student> queryStudentInfo(String ID) {
        DBAccess dbAccess = new DBAccess();
        List<Student> studentList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            studentList = sqlSession.selectList("Student.queryStuInfo", ID);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return studentList;
    }

    public List<Course> queryStuCourse(String ID) {
        DBAccess dbAccess = new DBAccess();
        List<Course> courseList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            courseList = sqlSession.selectList("Course.queryStuCourse", ID);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return courseList;
    }

    public List<Score> queryStuScore(String ID, String term) {
        DBAccess dbAccess = new DBAccess();
        List<Score> scoreList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            Score score = new Score();
            score.setID(ID);
            score.setTerm(term);
            scoreList = sqlSession.selectList("Score.queryStuScore", score);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return scoreList;
    }

    public List<Course> queryClassCourse(String className) {
        DBAccess dbAccess = new DBAccess();
        List<Course> courseList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            courseList = sqlSession.selectList("ClassCourse.queryCourses", className);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return courseList;
    }

    public void insertStuCourse(String ID, String courseId) {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            StuCourse stuCourse = new StuCourse();
            stuCourse.setID(ID);
            stuCourse.setCourseId(courseId);
            sqlSession.insert("ChooseCourse.InsertStuCourse", stuCourse);
            sqlSession.commit();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void deleteStuCourse(String ID, String courseId) {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            StuCourse stuCourse = new StuCourse();
            stuCourse.setID(ID);
            stuCourse.setCourseId(courseId);
            sqlSession.insert("ChooseCourse.DeleteStuCourse", stuCourse);
            sqlSession.commit();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
