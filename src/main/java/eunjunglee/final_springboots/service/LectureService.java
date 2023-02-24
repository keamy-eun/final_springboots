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

    public Object getLectureID(Object dataMap){
        String sqlMapId = "Lecture.selectLectureID";
        Object result = sharedDaos.getOne(sqlMapId, dataMap);
        return result;
    }
    
    public Object getMemberName_TEMP(Object dataMap){
        String sqlMapId = "Lecture.selectMemberName_TEMP";
        Object result = sharedDaos.getOne(sqlMapId, dataMap);
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

    public Object insertQnA(Object dataMap){
        String sqlMapId = "Lecture.insertQnA";
        Object result = sharedDaos.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertMyLecture(Object dataMap){
        String sqlMapId = "Lecture.insertMyLecture";
        Object result = sharedDaos.insert(sqlMapId, dataMap);
        return result;
    }
}
