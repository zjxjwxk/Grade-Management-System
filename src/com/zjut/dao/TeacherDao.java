package com.zjut.dao;

import com.zjut.bean.MyStudent;
import com.zjut.bean.Score;
import com.zjut.bean.TeaCourse;
import com.zjut.bean.Teacher;
import com.zjut.db.DBAccess;
import org.apache.ibatis.session.SqlSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class TeacherDao {

    public List<Teacher> queryTeaPwd(String ID) {
        DBAccess dbAccess = new DBAccess();
        List<Teacher> teacherList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            teacherList = sqlSession.selectList("QueryTeaPwd.queryTeaPwd", ID);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return teacherList;
    }

    public List<Teacher> queryTeacherInfo(String ID) {
        DBAccess dbAccess = new DBAccess();
        List<Teacher> teacherList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            teacherList = sqlSession.selectList("Teacher.queryTeaInfo", ID);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return teacherList;
    }

    public List<TeaCourse> queryTeaCourse(String ID) {
        DBAccess dbAccess = new DBAccess();
        List<TeaCourse> teaCourseList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            teaCourseList = sqlSession.selectList("TeaCourse.queryTeaCourse", ID);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return teaCourseList;
    }

    public List<Score> queryMyStuScore(String teaId, String term, String classNo, String courseName) {
        DBAccess dbAccess = new DBAccess();
        List<Score> scoreList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            Score score = new Score();
            score.setTeaId(teaId);
            score.setTerm(term);
            score.setClassNo(classNo);
            score.setName(courseName);
            scoreList = sqlSession.selectList("Score.queryMyStuScore", score);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return scoreList;
    }

    public List<MyStudent> queryMyStudent(String teaId, String term, String classNo, String courseName) {
        DBAccess dbAccess = new DBAccess();
        List<MyStudent> myStudentList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            MyStudent myStudent = new MyStudent();
            myStudent.setTeaId(teaId);
            myStudent.setTerm(term);
            myStudent.setClassNo(classNo);
            myStudent.setCourseName(courseName);
            myStudentList = sqlSession.selectList("MyStudent.queryMyStudent", myStudent);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return myStudentList;
    }

    public void InsertScore(Score score) {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            sqlSession.insert("InsertScore.InsertScore", score);
            sqlSession.commit();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public List<Score> queryAvgScore(String teaId, String term, String classNo, String courseName) {
        DBAccess dbAccess = new DBAccess();
        List<Score> scoreList = new ArrayList<>();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlSession();
            Score score = new Score();
            score.setTeaId(teaId);
            score.setTerm(term);
            score.setClassNo(classNo);
            score.setName(courseName);
            scoreList = sqlSession.selectList("Score.queryAvgScore", score);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return scoreList;
    }
}
