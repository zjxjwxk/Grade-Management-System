package com.zjut.servlet;

import com.zjut.service.InsertTeacherService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class InsertTeacherServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        String ID = req.getParameter("ID");
        String name = req.getParameter("name");
        String sex = req.getParameter("sex");
        String age = req.getParameter("age");
        String title = req.getParameter("title");
        String phone = req.getParameter("phone");
        InsertTeacherService insertStudentService = new InsertTeacherService();
        insertStudentService.insertTeacher(ID, name, sex, age, title, phone);
        req.getRequestDispatcher("/admin/teacher").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
