package com.zjut.servlet;

import com.zjut.service.DepartmentService;
import com.zjut.service.MyStudentService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DepartmentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        DepartmentService departmentService = new DepartmentService();
        req.setAttribute("departmentList", departmentService.queryDepartment());
        req.getRequestDispatcher("/WEB-INF/jsp/admin/department.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
