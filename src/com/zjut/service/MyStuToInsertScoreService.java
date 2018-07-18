package com.zjut.service;

import com.zjut.bean.MyStudent;
import com.zjut.bean.Score;
import com.zjut.dao.TeacherDao;

import java.util.Iterator;
import java.util.List;

/*
从我的学生中筛选出还未录入成绩的学生
 */
public class MyStuToInsertScoreService {
    public List<MyStudent> queryMyStuToInsertScore(String teaId, String term, String classNo, String courseName) {
        TeacherDao teacherDao = new TeacherDao();
        List<MyStudent> myStudentList = teacherDao.queryMyStudent(teaId, term, classNo, courseName);
        List<Score> scoreList = teacherDao.queryMyStuScore(teaId, term, classNo, courseName);
        Iterator<MyStudent> iterator = myStudentList.iterator();
        while (iterator.hasNext()) {
            MyStudent myStudent = iterator.next();
            for (Score score:
                    scoreList) {
                if (myStudent.getID().equals(score.getID()) && myStudent.getCourseName().equals(score.getName())) {
                    iterator.remove();
                }
            }
        }
        return myStudentList;
    }
}
