package com.zjut.service;

import com.zjut.bean.Course;
import com.zjut.dao.StudentDao;

import java.util.List;

/*

 */
public class ClassCourseService {

    public List<Course> queryClassCourse(String ID, String className) {
        StudentDao studentDao = new StudentDao();
        List<Course> classCourseList = studentDao.queryClassCourse(className);
        List<Course> stuCourseList = studentDao.queryStuCourse(ID);
        for (Course classCourse :
                classCourseList) {
            for (Course stuCourse :
                    stuCourseList) {
                if (classCourse.getName().equals(stuCourse.getName())) {
                    classCourse.setStatus("已选");
                }
            }
        }
        return classCourseList;
    }
}
