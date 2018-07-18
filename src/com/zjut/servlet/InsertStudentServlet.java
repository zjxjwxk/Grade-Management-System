package com.zjut.servlet;

import com.zjut.service.InsertStudentService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class InsertStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        String ID = req.getParameter("insertID");
        String name = req.getParameter("insertName");
        String departmentName = req.getParameter("insertDepartmentName");
        String className = req.getParameter("insertClassName");
        String sex = req.getParameter("insertSex");
        int age = Integer.parseInt(req.getParameter("insertAge"));
        String address = req.getParameter("insertAddress");
        InsertStudentService insertStudentService = new InsertStudentService();
        insertStudentService.insertStudent(ID, name, departmentName, className, sex, age, address);
        req.getRequestDispatcher("/admin/student").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
