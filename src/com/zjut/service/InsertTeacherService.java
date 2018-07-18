package com.zjut.service;

import com.zjut.dao.AdminDao;

public class InsertTeacherService {

    public void insertTeacher(String ID, String name,String sex, String age
            , String title, String phone) {
        AdminDao adminDao = new AdminDao();
        adminDao.insertTeacher(ID, name, sex, age, title, phone);
    }
}
