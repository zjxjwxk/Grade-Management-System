package com.zjut.bean;

/**
 * Created with IntelliJ IDEA.
 * User: zjxjwxk
 * Date: 2018/7/12
 * Time: 10:23
 * Description: 学生课程实体类
 */
public class StuCourse {
    private String ID;
    private String courseId;
    private String courseStatus;

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    public String getCourseStatus() {
        return courseStatus;
    }

    public void setCourseStatus(String courseStatus) {
        this.courseStatus = courseStatus;
    }
}
