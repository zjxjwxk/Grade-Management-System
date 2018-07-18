package com.zjut.service;

import com.zjut.dao.AdminDao;

public class InsertClassService {

    public void insertClass(String ID, String departmentId) {
        AdminDao adminDao = new AdminDao();
        adminDao.insertClass(ID, departmentId);
    }
}
