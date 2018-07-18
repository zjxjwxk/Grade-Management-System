package com.zjut.servlet;

import com.zjut.service.InsertClassCourseService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class InsertClassCourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        String classNo = req.getParameter("insertClass");
        String ID = req.getParameter("insertCourse");
        InsertClassCourseService insertClassCourseService = new InsertClassCourseService();
        insertClassCourseService.insertCourse(classNo, ID);
        req.getRequestDispatcher("/admin/classCourse").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
