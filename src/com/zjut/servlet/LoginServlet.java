package com.zjut.servlet;

import com.zjut.service.LoginService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession(false);
        String type = req.getParameter("type");
        String ID = req.getParameter("ID");
        String password = req.getParameter("password");
        LoginService loginService = new LoginService();
        String message = loginService.checkPassword(type, ID, password);
        session.setAttribute("message", message);
        if (message.equals("用户名不存在") || message.equals("用户名或密码错误")) {
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        } else if (message.equals("登陆成功")) {
            if (type.equals("学生")) {
                req.getRequestDispatcher("/student/index").forward(req, resp);
            } else if (type.equals("教师")) {
                req.getRequestDispatcher("/teacher/index").forward(req, resp);
            } else if (type.equals("管理员")){
                req.getRequestDispatcher("/admin/index").forward(req, resp);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
