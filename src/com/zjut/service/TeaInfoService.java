package com.zjut.service;

import com.zjut.bean.Teacher;
import com.zjut.dao.TeacherDao;

import java.util.List;

public class TeaInfoService {

    public Teacher queryTeaInfo(String ID) {
        TeacherDao teacherDao = new TeacherDao();
        List<Teacher> teacherList = teacherDao.queryTeacherInfo(ID);
        Teacher teacher = teacherList.get(0);
        return teacher;
    }
}
