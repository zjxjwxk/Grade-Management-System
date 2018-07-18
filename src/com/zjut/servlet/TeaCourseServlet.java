package com.zjut.servlet;

import com.zjut.bean.Student;
import com.zjut.bean.Teacher;
import com.zjut.service.StuCourseService;
import com.zjut.service.TeaCourseService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class TeaCourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession(false);
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        String ID = teacher.getID();
        TeaCourseService teaCourseService = new TeaCourseService();
        req.setAttribute("teaCourseList", teaCourseService.queryTeaCourse(ID));
        req.getRequestDispatcher("/WEB-INF/jsp/teacher/courses.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
