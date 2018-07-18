package com.zjut.service;

import com.zjut.bean.Score;
import com.zjut.dao.StudentDao;

import java.util.List;

public class StuScoreService {
    public List<Score> queryStuCourse(String ID, String term) {
        StudentDao studentDao = new StudentDao();
        List<Score> scoreList = studentDao.queryStuScore(ID, term);
        return scoreList;
    }
}
