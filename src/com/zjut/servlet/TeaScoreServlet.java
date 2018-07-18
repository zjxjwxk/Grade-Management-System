package com.zjut.servlet;

import com.zjut.bean.Score;
import com.zjut.bean.Teacher;
import com.zjut.service.MyStuAvgScoreService;
import com.zjut.service.TeaScoreService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class TeaScoreServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession(false);
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        String ID = teacher.getID();
        String term = req.getParameter("term");
        String classNo = req.getParameter("classNo");
        String courseName = req.getParameter("courseName");
        TeaScoreService teaScoreService = new TeaScoreService();
        MyStuAvgScoreService myStuAvgScoreService = new MyStuAvgScoreService();
        Score avgScore = myStuAvgScoreService.queryMyStuAvgScore(ID, term, classNo, courseName);
        if (avgScore != null) {
            req.setAttribute("avgScore", avgScore.getScore());
        }
        req.setAttribute("teaScoreList", teaScoreService.queryMyStuScore(ID, term, classNo, courseName));
        req.getRequestDispatcher("/WEB-INF/jsp/teacher/score.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
