package com.zjut.service;

import com.zjut.dao.AdminDao;

public class InsertStudentService {

    public void insertStudent(String ID, String name,String departmentName, String className
            , String sex, int age, String address) {
        AdminDao adminDao = new AdminDao();
        adminDao.insertStudent(ID, name, departmentName, className, sex, age, address);
    }
}
