package com.zjut.service;

import com.zjut.dao.AdminDao;

public class InsertDepartmentService {

    public void insertDepartment(String ID, String name) {
        AdminDao adminDao = new AdminDao();
        adminDao.insertDepartment(ID, name);
    }
}
