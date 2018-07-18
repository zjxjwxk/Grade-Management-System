package com.zjut.servlet;

import com.zjut.service.ClassService;
import com.zjut.service.DepartmentService;
import com.zjut.service.ScoreService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class
ScoreServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        String term = req.getParameter("term");
        String classNo = req.getParameter("classNo");
        String ID = req.getParameter("ID");
        String stuName = req.getParameter("stuName");
        String courseName = req.getParameter("courseName");
        String teacherName = req.getParameter("teacherName");
        ClassService classService = new ClassService();
        ScoreService scoreService = new ScoreService();
        req.setAttribute("classList", classService.queryClass());
        req.setAttribute("scoreList", scoreService.queryScore(term, classNo, ID, stuName, courseName
                , teacherName));
        req.getRequestDispatcher("/WEB-INF/jsp/admin/score.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
