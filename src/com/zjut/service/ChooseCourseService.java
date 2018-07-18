package com.zjut.service;

import com.zjut.bean.Course;
import com.zjut.dao.StudentDao;

import java.util.List;

public class ChooseCourseService {

    public void insertStuCourse(String ID, String courseId) {
        StudentDao studentDao = new StudentDao();
        studentDao.insertStuCourse(ID, courseId);
    }

}
