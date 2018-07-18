package com.zjut.service;

import com.zjut.bean.Course;
import com.zjut.dao.StudentDao;

import java.util.List;

public class StuCourseService {

    public List<Course> queryStuCourse(String ID) {
        StudentDao studentDao = new StudentDao();
        List<Course> courseList = studentDao.queryStuCourse(ID);
        return courseList;
    }
}
