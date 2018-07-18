package com.zjut.service;

import com.zjut.bean.Class;
import com.zjut.dao.AdminDao;

import java.util.List;

public class ClassService {
    public List<Class> queryClass() {
        AdminDao adminDao = new AdminDao();
        List<Class> classList = adminDao.queryClass();
        return classList;
    }
}
