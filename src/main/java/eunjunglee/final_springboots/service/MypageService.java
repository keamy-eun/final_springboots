package eunjunglee.final_springboots.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import eunjunglee.final_springboots.dao.SharedDaos;

@Service
public class MypageService {

    @Autowired
    SharedDaos sharedDaos;

    public Object getlistToMylectureMain(Object dataMap) {
        String sqlMapId = "mypage.selectByLectureNumber";
        Object result = sharedDaos.getList(sqlMapId, dataMap);

        ArrayList tempAL = (ArrayList) result;
        ((HashMap<Object, Object>) tempAL.get(0)).put("MEMBER_NAME", "ANN");
        return (Object) tempAL;
    }

    public Object getOne(Object dataMap) {
        String sqlMapId = "mypage.selectByMemberID";
        Object result = sharedDaos.getOne(sqlMapId, dataMap);
        return result;
    }

    public Object getQuestionList(Object dataMap) {
        String sqlMapId = "mypage.getQuestions";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }

    public Object calculateTestScore(Object params) {

        int score = 0;
        String CategoryStr = "";
        HashMap result = new HashMap<>();
        HashMap<String, String> resultScore = new HashMap<>();

        HashMap<String, String> modelAnswer = new HashMap<>();
        modelAnswer.put("TQ01", "TQ01a1");
        modelAnswer.put("TQ02", "TQ02a2");
        modelAnswer.put("TQ03", "TQ03a3");
        modelAnswer.put("TQ04", "TQ04a4");
        modelAnswer.put("TQ05", "TQ05a1");
        modelAnswer.put("TQ06", "TQ06a4");
        modelAnswer.put("TQ07", "TQ07a3");
        HashMap<String, String> modelAnswerCategory = new HashMap<>();
        modelAnswerCategory.put("TQ01", "1번문제유형");
        modelAnswerCategory.put("TQ02", "2번문제유형");
        modelAnswerCategory.put("TQ03", "3번문제유형");
        modelAnswerCategory.put("TQ04", "4번문제유형");
        modelAnswerCategory.put("TQ05", "5번문제유형");
        modelAnswerCategory.put("TQ06", "6번문제유형");
        modelAnswerCategory.put("TQ07", "7번문제유형");

        for (String key : ((HashMap<String, String>) params).keySet()) {
            if (modelAnswer.get(key).equals(((HashMap<String, String>) params).get(key))) {
                score += 140;
            } else {
                CategoryStr += modelAnswerCategory.get(key) + ",";
            }
        }
        CategoryStr = CategoryStr.substring(0, CategoryStr.length() - 1);
        result.put("resultCategory", CategoryStr);
        result.put("resultScore", score);
        // result : 앞에는 틀린문제유형, 마지막에 int로 점수
        return result;
    }

}
