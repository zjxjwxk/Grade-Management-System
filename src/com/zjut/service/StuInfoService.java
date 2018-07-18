package com.zjut.service;

import com.zjut.bean.Student;
import com.zjut.dao.StudentDao;

import java.util.List;

public class StuInfoService {

    public Student queryStuInfo(String ID) {
        StudentDao studentDao = new StudentDao();
        List<Student> studentList = studentDao.queryStudentInfo(ID);
        Student student = studentList.get(0);
        return student;
    }
}
