package com.zjut.servlet;

import com.zjut.bean.Admin;
import com.zjut.bean.Teacher;
import com.zjut.service.InsertDepartmentService;
import com.zjut.service.InsertScoreService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class InsertDepartmentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        String ID = req.getParameter("ID");
        String name = req.getParameter("name");
        InsertDepartmentService insertDepartmentService = new InsertDepartmentService();
        insertDepartmentService.insertDepartment(ID, name);
        req.getRequestDispatcher("/admin/department").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
