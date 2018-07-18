package com.zjut.service;

import com.zjut.bean.TeaCourse;
import com.zjut.dao.TeacherDao;

import java.util.List;

public class TeaCourseService {

    public List<TeaCourse> queryTeaCourse(String ID) {
        TeacherDao teacherDao = new TeacherDao();
        List<TeaCourse> teaCourseList = teacherDao.queryTeaCourse(ID);
        return teaCourseList;
    }
}
