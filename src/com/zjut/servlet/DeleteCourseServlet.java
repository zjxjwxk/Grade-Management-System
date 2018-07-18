package com.zjut.servlet;

import com.zjut.bean.Student;
import com.zjut.service.ChooseCourseService;
import com.zjut.service.DeleteCourseService;
import com.zjut.service.StuInfoService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class DeleteCourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession(false);
        StuInfoService stuInfoService = new StuInfoService();
        req.setAttribute("student", stuInfoService.queryStuInfo((String) session.getAttribute("ID")));
        Student student = (Student) req.getAttribute("student");
        String ID = student.getID();
        String courseId = req.getParameter("courseId");
        DeleteCourseService deleteCourseService = new DeleteCourseService();
        deleteCourseService.deleteStuCourse(ID, courseId);
        req.getRequestDispatcher("/student/classCourse").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
