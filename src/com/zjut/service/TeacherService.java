package com.zjut.service;

import com.zjut.bean.Teacher;
import com.zjut.dao.AdminDao;

import java.util.List;

public class TeacherService {
    public List<Teacher> queryTeacher() {
        AdminDao adminDao = new AdminDao();
        List<Teacher> teacherList = adminDao.queryTeacher();
        return teacherList;
    }
}
