package com.zjut.service;

import com.zjut.dao.StudentDao;

public class DeleteCourseService {

    public void deleteStuCourse(String ID, String courseId) {
        StudentDao studentDao = new StudentDao();
        studentDao.deleteStuCourse(ID, courseId);
    }
}
