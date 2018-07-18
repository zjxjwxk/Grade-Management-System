package com.zjut.service;

import com.zjut.bean.Score;
import com.zjut.dao.TeacherDao;

import java.util.List;

public class TeaScoreService {
    public List<Score> queryMyStuScore(String teaId, String term, String classNo, String courseName) {
        TeacherDao teacherDao = new TeacherDao();
        List<Score> scoreList = teacherDao.queryMyStuScore(teaId, term, classNo, courseName);
        return scoreList;
    }
}
