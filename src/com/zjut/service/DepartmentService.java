package com.zjut.service;

import com.zjut.bean.Department;
import com.zjut.bean.MyStudent;
import com.zjut.dao.AdminDao;

import java.util.List;

public class DepartmentService {
    public List<Department> queryDepartment() {
        AdminDao adminDao = new AdminDao();
        List<Department> departmentList = adminDao.queryDepartment();
        return departmentList;
    }
}
