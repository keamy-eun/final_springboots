package eunjunglee.final_springboots.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eunjunglee.final_springboots.dao.SharedDaos;

@Service
public class LectureService {
    @Autowired
    SharedDaos sharedDaos;

    public Object getLectureList(Object dataMap){
        String sqlMapId = "Lecture.selectLectureList";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }
    
    public Object getQuestionList(Object dataMap){
        String sqlMapId = "Lecture.selectQuestionList";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }
    
    public Object getAnswerList(Object dataMap){
        String sqlMapId = "Lecture.selectAnswerList";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }
}
