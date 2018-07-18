package com.zjut.servlet;

import com.zjut.bean.Teacher;
import com.zjut.service.MyStudentService;
import com.zjut.service.TeaScoreService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class MyStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        String ID = teacher.getID();
        String term = req.getParameter("term");
        String classNo = req.getParameter("classNo");
        String courseName = req.getParameter("courseName");
        MyStudentService myStudentService = new MyStudentService();
        req.setAttribute("myStudentList", myStudentService.queryMyStudent(ID, term, classNo, courseName));
        req.getRequestDispatcher("/WEB-INF/jsp/teacher/myStudent.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
