package com.zjut.service;

import com.zjut.bean.MyStudent;
import com.zjut.dao.TeacherDao;

import java.util.List;

public class MyStudentService {
    public List<MyStudent> queryMyStudent(String teaId, String term, String classNo, String courseName) {
        TeacherDao teacherDao = new TeacherDao();
        List<MyStudent> myStudentList = teacherDao.queryMyStudent(teaId, term, classNo, courseName);
        return myStudentList;
    }
}
