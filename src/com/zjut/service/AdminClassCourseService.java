package com.zjut.service;

import com.zjut.bean.Course;
import com.zjut.dao.AdminDao;

import java.util.List;

/*

 */
public class AdminClassCourseService {

    public List<Course> queryClassCourse(String ID, String classNo, String name
            , String teacher, String term) {
        AdminDao adminDao= new AdminDao();
        List<Course> courseList = adminDao.queryClassCourse(ID, classNo, name, teacher, term);
        return courseList;
    }
}
