package com.zjut.service;

import com.zjut.bean.Course;
import com.zjut.dao.AdminDao;

import java.util.List;

public class CourseService {
    public List<Course> queryCourse(String ID, String name, String teacher, String term) {
        AdminDao adminDao = new AdminDao();
        List<Course> courseList= adminDao.queryCourse(ID, name, teacher, term);
        return courseList;
    }
}
