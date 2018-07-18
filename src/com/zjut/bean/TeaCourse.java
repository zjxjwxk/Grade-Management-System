package com.zjut.bean;

/**
 * Created with IntelliJ IDEA.
 * User: zjxjwxk
 * Date: 2018/7/12
 * Time: 15:06
 * Description: 教师课程实体类
 */
public class TeaCourse {
    private String ID;
    private String className;
    private String term;
    private String name;
    private int hours;
    private int credit;
    private String type;

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getHours() {
        return hours;
    }

    public void setHours(int hours) {
        this.hours = hours;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
