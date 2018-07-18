package com.zjut.service;

import com.zjut.bean.Score;
import com.zjut.dao.AdminDao;

import java.util.List;

public class ScoreService {
    public List<Score> queryScore(String term, String classNo, String ID, String stuName, String courseName
            ,String teacherName) {
        AdminDao adminDao = new AdminDao();
        List<Score> scoreList = adminDao.queryScore(term, classNo, ID, stuName, courseName
                , teacherName);
        return scoreList;
    }
}
