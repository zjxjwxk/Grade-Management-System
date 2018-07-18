package com.zjut.servlet;

import com.zjut.service.AdminClassCourseService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AdminClassCourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession(false);
        String ID = req.getParameter("ID");
        String name = req.getParameter("name");
        String term = req.getParameter("term");
        String classNo = req.getParameter("classNo");
        String teacher = req.getParameter("teacher");
        AdminClassCourseService adminClassCourseService = new AdminClassCourseService();
        req.setAttribute("classCourseList", adminClassCourseService.queryClassCourse(ID, classNo, name, teacher, term));
        req.getRequestDispatcher("/WEB-INF/jsp/admin/classCourse.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
