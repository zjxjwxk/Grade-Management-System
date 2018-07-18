package com.zjut.service;

import com.zjut.bean.Admin;
import com.zjut.bean.Student;
import com.zjut.bean.Teacher;
import com.zjut.dao.AdminDao;
import com.zjut.dao.StudentDao;
import com.zjut.dao.TeacherDao;

import java.util.List;

public class LoginService {

    public String checkPassword(String type, String ID, String password) {

        String message = null;
        if (type.equals("学生")) {
            StudentDao studentDao = new StudentDao();
            List<Student> studentList = studentDao.queryStuPwd(ID);
            if (studentList.size() == 0) {
                message = "用户名不存在";
            } else {
                Student student = studentList.get(0);
                String realPassword = student.getPassword();
                if (!realPassword.equals(password)) {
                    message = "用户名或密码错误";
                } else {
                    message = "登陆成功";
                }
            }
        } else if (type.equals("教师")) {
            TeacherDao teacherDao = new TeacherDao();
            List<Teacher> teacherList = teacherDao.queryTeaPwd(ID);
            if (teacherList.size() == 0) {
                message = "用户名不存在";
            } else {
                Teacher teacher = teacherList.get(0);
                String realPassword = teacher.getPassword();
                if (!realPassword.equals(password)) {
                    message = "用户名或密码错误";
                } else {
                    message = "登陆成功";
                }
            }
        } else if (type.equals("管理员")) {
            AdminDao adminDao = new AdminDao();
            List<Admin> adminList = adminDao.queryAdminPwd(ID);
            if (adminList.size() == 0) {
                message = "用户名不存在";
            } else {
                Admin admin = adminList.get(0);
                String realPassword = admin.getPassword();
                if (!realPassword.equals(password)) {
                    message = "用户名或密码错误";
                } else {
                    message = "登陆成功";
                }
            }
        }
        return message;
    }
}
