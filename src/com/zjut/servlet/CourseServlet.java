package com.zjut.servlet;

import com.zjut.service.CourseService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        String ID = req.getParameter("ID");
        String name = req.getParameter("name");
        String teacher = req.getParameter("teacher");
        String term = req.getParameter("term");
        CourseService courseService = new CourseService();
        req.setAttribute("courseList", courseService.queryCourse(ID, name, teacher, term));
        req.getRequestDispatcher("/WEB-INF/jsp/admin/course.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
