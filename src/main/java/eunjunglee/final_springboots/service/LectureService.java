package eunjunglee.final_springboots.service;


import java.util.ArrayList;
import java.time.LocalDate;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eunjunglee.final_springboots.dao.SharedDaos;
import eunjunglee.final_springboots.utils.Paginations;

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
    
    public Object getMemberName(Object dataMap){
        String sqlMapId = "Lecture.selectMemberName";
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

    public Object getLectureReview(Object dataMap){
        String sqlMapId = "Lecture.selectLectureReview";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getMyLectureList(Object dataMap){
        String sqlMapId = "Lecture.selectMyLectureList";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }

    public Object insertMyLectureAndGetList(Object dataMap){
        Object result = this.insertMyLecture(dataMap);
        result = this.getMyLectureList(dataMap);
        return result; 
    }

    public Object insertQnAAndMyLecture(Object dataMap){
        Object result = this.insertMyLecture(dataMap);
        result = this.insertQnA(dataMap);
        return result;
    }

    public Object getTotal(Object dataMap){
        String sqlMapId = "Lecture.selectTotal";
        Object result = sharedDaos.getOne(sqlMapId, dataMap);
        return result;
    }
    
    public Object listAndPagination(Object dataMap){
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getTotal(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        Paginations paginations = new Paginations(totalCount, currentPage);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.getLectureReview(dataMap));
        return result;
    }

}
