package com.zjut.service;

import com.zjut.dao.AdminDao;

public class InsertClassCourseService {

    public void insertCourse(String classNo, String ID) {
        AdminDao adminDao = new AdminDao();
        adminDao.insertClassCourse(classNo, ID);
    }
}
