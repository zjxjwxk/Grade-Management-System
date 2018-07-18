package com.zjut.servlet;

import com.zjut.service.TeaInfoService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class TeaInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession(false);
        String ID = req.getParameter("ID");
        if (ID != null) {
            TeaInfoService teaInfoService = new TeaInfoService();
            session.setAttribute("teacher", teaInfoService.queryTeaInfo(ID));
        }
        req.getRequestDispatcher("/WEB-INF/jsp/teacher/index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
