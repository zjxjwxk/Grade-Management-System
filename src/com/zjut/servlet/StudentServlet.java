package com.zjut.servlet;

import com.zjut.service.ClassService;
import com.zjut.service.DepartmentService;
import com.zjut.service.StudentService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class StudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        String ID = req.getParameter("ID");
        String name = req.getParameter("name");
        String departmentName = req.getParameter("departmentName");
        String className = req.getParameter("className");
        String address = req.getParameter("address");
        StudentService studentService = new StudentService();
        DepartmentService departmentService = new DepartmentService();
        ClassService classService = new ClassService();
        req.setAttribute("departmentList", departmentService.queryDepartment());
        req.setAttribute("classList", classService.queryClass()
        );
        req.setAttribute("studentList", studentService.queryStudent(ID, name, departmentName, className, address));
        req.getRequestDispatcher("/WEB-INF/jsp/admin/student.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
