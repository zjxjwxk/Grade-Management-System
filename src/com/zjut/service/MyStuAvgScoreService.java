package com.zjut.service;

import com.zjut.bean.Score;
import com.zjut.dao.TeacherDao;

import java.util.List;

public class MyStuAvgScoreService {
    public Score queryMyStuAvgScore(String teaId, String term, String classNo, String courseName) {
        TeacherDao teacherDao = new TeacherDao();
        List<Score> scoreList = teacherDao.queryAvgScore(teaId, term, classNo, courseName);
        Score score = null;
        if (scoreList.size() != 0) {
            score = scoreList.get(0);
        }

        return score;
    }
}
