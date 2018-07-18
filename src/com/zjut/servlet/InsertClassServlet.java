package com.zjut.servlet;

import com.zjut.service.InsertClassService;
import com.zjut.service.InsertDepartmentService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class InsertClassServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        String ID = req.getParameter("ID");
        String departmentName = req.getParameter("departmentName");
        InsertClassService insertClassService = new InsertClassService();
        insertClassService.insertClass(ID, departmentName);
        req.getRequestDispatcher("/admin/class").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
