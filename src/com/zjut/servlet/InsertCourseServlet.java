package com.zjut.servlet;

import com.zjut.service.InsertCourseService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class InsertCourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        String term = req.getParameter("insertTerm");
        String ID = req.getParameter("insertID");
        String name = req.getParameter("insertName");
        String teacher = req.getParameter("insertTeacher");
        int hours = Integer.parseInt(req.getParameter("insertHours"));
        int credit = Integer.parseInt(req.getParameter("insertCredit"));
        String type = req.getParameter("insertType");
        InsertCourseService insertCourseService = new InsertCourseService();
        insertCourseService.insertCourse(ID, name, teacher, term, hours, type, credit);
        req.getRequestDispatcher("/admin/course").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
