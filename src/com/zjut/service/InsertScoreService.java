package com.zjut.service;

import com.zjut.bean.Score;
import com.zjut.dao.TeacherDao;

public class InsertScoreService {

    public void insertScore(String[] stuIdArr, String[] termArr, String[] courseIdArr, String[] scoreArr, String teaId) {
        TeacherDao teacherDao = new TeacherDao();
        for (int i = 0; i < stuIdArr.length; i++) {
            if (scoreArr[i] != null && !"".equals(scoreArr[i])) {
                Score score = new Score();
                score.setID(stuIdArr[i]);
                score.setTerm(termArr[i]);
                score.setCourseId(courseIdArr[i]);
                score.setScore(Integer.parseInt(scoreArr[i]));
                score.setTeaId(teaId);
                teacherDao.InsertScore(score);
            }
        }
    }
}
