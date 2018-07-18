package com.zjut.service;

import com.zjut.dao.AdminDao;

public class InsertCourseService {

    public void insertCourse(String ID, String name,String teacher, String term
            , int hours, String type, int credit) {
        AdminDao adminDao = new AdminDao();
        adminDao.insertCourse(ID, name, teacher, term, hours, type, credit);
    }
}
