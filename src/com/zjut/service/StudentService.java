package com.zjut.service;

import com.zjut.bean.Student;
import com.zjut.dao.AdminDao;

import java.util.List;

public class StudentService {
    public List<Student> queryStudent(String ID, String name, String departmentName, String className, String address) {
        AdminDao adminDao = new AdminDao();
        List<Student> studentList = adminDao.queryStudent(ID, name, departmentName, className, address);
        return studentList;
    }
}
