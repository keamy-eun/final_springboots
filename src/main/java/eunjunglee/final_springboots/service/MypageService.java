package eunjunglee.final_springboots.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import eunjunglee.final_springboots.dao.SharedDaos;

@Service
public class MypageService {

    @Autowired
    SharedDaos sharedDaos;

    @Autowired
    BCryptPasswordEncoder bcryptPasswordEncoder;

    public Object getlistToMylectureMainWithDate(Object dataMap) {
        String sqlMapId = "mypage.selectByLectureNumberWithDate"; // SELECT * FROM ENROLLMENT where MEMBER_ID =
                                                                  // 'circle01'
        Object enrollmentresult = sharedDaos.getList(sqlMapId, dataMap);
        // HashMap<String,Object> temphash = new HashMap<>();
        int enrollmentresult_length = ((ArrayList) enrollmentresult).size();
        // id에 맞는 수업번호와 이름을 가져옴
        for (int i = enrollmentresult_length - 1; i >= 0; i--) {
            if (!((HashMap<String, Object>) (((ArrayList) enrollmentresult).get(i))).get("MEMBER_ID")
                    .equals(((HashMap<String, Object>) dataMap).get("MEMBER_ID"))) {
                ((ArrayList) enrollmentresult).remove(i);
            }
        }
        ArrayList result = new ArrayList<>();
        HashMap<String, Object> tempresult = new HashMap<>();
        // 가져온 memberID와 lecture번호에서 수업이름과 사용자이름을 가져옴

        Iterator it = ((ArrayList) enrollmentresult).iterator();
        while (it.hasNext()) {
            HashMap<String, Object> tempHash = new HashMap<>();
            tempHash = (HashMap<String, Object>) it.next();
            // 강의번호로 강의 이름알기
            sqlMapId = "mypage.selectLectureNameByLectureNumber";
            Object iterResultLectureName = sharedDaos.getList(sqlMapId, tempHash);
            // 강의번호로 강사 이름알기
            sqlMapId = "mypage.selectLecturerNameByMember";
            Object iterResultLecturerName = sharedDaos.getList(sqlMapId, tempHash);

            tempresult.put("LECTURE_TITLE",
                    ((HashMap<String, Object>) (((ArrayList) iterResultLectureName).get(0))).get("LECTURE_TITLE"));
            tempresult.put("MEMBER_NAME",
                    ((HashMap<String, Object>) (((ArrayList) iterResultLecturerName).get(0))).get("MEMBER_NAME"));

            // 수강종료일 설정
            LocalDate now = LocalDate.now();
            String ExpireLectureTime = ((String) ((HashMap<String, Object>) (((ArrayList) enrollmentresult).get(0)))
                    .get("ENROLL_EXPIRED_DATE")).split(" ")[0];
            String[] ExpireLectureTimeArrStr = ExpireLectureTime.split("-");
            int[] ExpireLectureTimeArr = Arrays.stream(ExpireLectureTimeArrStr).mapToInt(Integer::parseInt).toArray();
            // 수강종료일과 현재 시간 비교
            if (now.getYear() * 30 * 12 + now.getMonthValue() * 30
                    + now.getDayOfMonth() <= ExpireLectureTimeArr[0] * 30 * 12 + ExpireLectureTimeArr[1] * 30
                            + ExpireLectureTimeArr[2]) {
                tempresult.put("ENROLL_EXPIRED_DATE",
                        ((HashMap<String, Object>) (((ArrayList) enrollmentresult).get(0))).get("ENROLL_EXPIRED_DATE"));
            } else {
                tempresult.put("ENROLL_EXPIRED_DATE",
                        "수강기간만료");
            }

            tempresult.put("LECTURE_NUMBER",
                    ((HashMap<String, Object>) (((ArrayList) iterResultLecturerName).get(0))).get("LECTURE_NUMBER"));

            result.add(tempresult.clone());
        }
        return result;
    }

    public Object getlistToMylectureMain(Object dataMap) {
        String sqlMapId = "mypage.selectByLectureNumber"; // SELECT * FROM ENROLLMENT where MEMBER_ID = 'circle01'
        Object enrollmentresult = sharedDaos.getList(sqlMapId, dataMap);
        // HashMap<String,Object> temphash = new HashMap<>();
        int enrollmentresult_length = ((ArrayList) enrollmentresult).size();
        // id에 맞는 수업번호와 이름을 가져옴
        for (int i = enrollmentresult_length - 1; i >= 0; i--) {
            if (!((HashMap<String, Object>) (((ArrayList) enrollmentresult).get(i))).get("MEMBER_ID")
                    .equals(((HashMap<String, Object>) dataMap).get("MEMBER_ID"))) {
                ((ArrayList) enrollmentresult).remove(i);
            }
        }
        ArrayList result = new ArrayList<>();
        HashMap<String, Object> tempresult = new HashMap<>();
        // 가져온 memberID와 lecture번호에서 수업이름과 사용자이름을 가져옴

        Iterator it = ((ArrayList) enrollmentresult).iterator();
        while (it.hasNext()) {
            HashMap<String, Object> tempHash = new HashMap<>();
            tempHash = (HashMap<String, Object>) it.next();
            // 강의번호로 강의 이름알기
            sqlMapId = "mypage.selectLectureNameByLectureNumber";
            Object iterResultLectureName = sharedDaos.getList(sqlMapId, tempHash);
            // 강의번호로 강사 이름알기
            sqlMapId = "mypage.selectLecturerNameByMember";
            Object iterResultLecturerName = sharedDaos.getList(sqlMapId, tempHash);

            tempresult.put("LECTURE_TITLE",
                    ((HashMap<String, Object>) (((ArrayList) iterResultLectureName).get(0))).get("LECTURE_TITLE"));
            tempresult.put("MEMBER_NAME",
                    ((HashMap<String, Object>) (((ArrayList) iterResultLecturerName).get(0))).get("MEMBER_NAME"));

            // 수강종료일 설정
            LocalDate now = LocalDate.now();
            String ExpireLectureTime = ((String) ((HashMap<String, Object>) (((ArrayList) enrollmentresult).get(0)))
                    .get("ENROLL_EXPIRED_DATE")).split(" ")[0];
            String[] ExpireLectureTimeArrStr = ExpireLectureTime.split("-");
            int[] ExpireLectureTimeArr = Arrays.stream(ExpireLectureTimeArrStr).mapToInt(Integer::parseInt).toArray();
            // 수강종료일과 현재 시간 비교
            if (now.getYear() * 30 * 12 + now.getMonthValue() * 30
                    + now.getDayOfMonth() <= ExpireLectureTimeArr[0] * 30 * 12 + ExpireLectureTimeArr[1] * 30
                            + ExpireLectureTimeArr[2]) {
                tempresult.put("ENROLL_EXPIRED_DATE",
                        ((HashMap<String, Object>) (((ArrayList) enrollmentresult).get(0))).get("ENROLL_EXPIRED_DATE"));
            } else {
                tempresult.put("ENROLL_EXPIRED_DATE",
                        "수강기간만료");
            }

            tempresult.put("LECTURE_NUMBER",
                    ((HashMap<String, Object>) (((ArrayList) iterResultLecturerName).get(0))).get("LECTURE_NUMBER"));

            result.add(tempresult.clone());
        }
        return result;
    }

    public Object getEditList(Object dataMap) {
        String sqlMapId = "mypage.selectByMemberID";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        String birthDay = (String) ((HashMap<String, Object>) (((ArrayList) result).get(0))).get("BIRTH");
        String[] birthArr = birthDay.split("-", 3);
        String birthDay_year = birthArr[0];
        String BIRTY_month = birthArr[0];
        String BIRTY_day = birthArr[0];
        ((HashMap<String, Object>) (((ArrayList) result).get(0))).put("BIRTY_year", birthDay_year);
        ((HashMap<String, Object>) (((ArrayList) result).get(0))).put("BIRTY_month", BIRTY_month);
        ((HashMap<String, Object>) (((ArrayList) result).get(0))).put("BIRTY_day", BIRTY_day);
        return (Object) (((ArrayList) result).get(0));
    }

    public Object getQAList(Object dataMap) {
        String sqlMapId = "mypage.selectByQAlist";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        ArrayList resultList = new ArrayList<>();
        HashMap<String, Object> tempHash = new HashMap<>();
        for (int i = 0; i < ((ArrayList) result).size(); i++) {
            tempHash.put("ANSWER" + Integer.toString((i % 4) + 1),
                    ((HashMap<String, Object>) (((ArrayList) result).get(i))).get("ANSWER"));
            if ((i % 4) == 3) {
                tempHash.put("QUESTION", ((HashMap<String, Object>) (((ArrayList) result).get(i))).get("QUESTION"));
                tempHash.put("QUESTION_UID",
                        ((HashMap<String, Object>) (((ArrayList) result).get(i))).get("QUESTION_UID"));
                resultList.add(tempHash.clone());
                tempHash = new HashMap<>();
            }
        }
        return (Object) resultList;
    }

    public Object getList(Object dataMap) {
        String sqlMapId = "mypage.selectByMemberID";
        Object result = sharedDaos.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getOne(Object dataMap) {
        String sqlMapId = "mypage.selectByMemberID";
        Object result = sharedDaos.getOne(sqlMapId, dataMap);
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
        modelAnswerCategory.put("TQ01", "인칭대명사");
        modelAnswerCategory.put("TQ02", "사물의 위치");
        modelAnswerCategory.put("TQ03", "긍정문과 부정문");
        modelAnswerCategory.put("TQ04", "시간 전치사");
        modelAnswerCategory.put("TQ05", "형용사의 표현");
        modelAnswerCategory.put("TQ06", "현재진행형");
        modelAnswerCategory.put("TQ07", "수동태 문법");

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

    public Object updateExpireDate(Object dataMap) {
        String sqlMapId = "mypage.updateOneByLECTURE_NUMBER";
        Object result = sharedDaos.updateOne(sqlMapId, dataMap);
        return result;
    }

    public Object deleteMemberLog(Object dataMap) {
        String sqlMapId = "mypage.deleteFromMemberlogByMEMBERID";
        Object result = sharedDaos.delete(sqlMapId, dataMap);
        return result;
    }

    public Object deleteMember(Object dataMap) {
        String sqlMapId = "mypage.deleteFromMemberByMEMBERID";
        Object result = sharedDaos.delete(sqlMapId, dataMap);
        return result;
    }

    public Object EditMember(Object dataMap) {
        String sqlMapId = "mypage.updateByMEMBERID";
        ((HashMap<String, Object>) dataMap).put("BIRTH",
                ((HashMap<String, Object>) dataMap).get("BIRTY_year") + "-"
                        + ((HashMap<String, Object>) dataMap).get("BIRTY_month") + "-"
                        + ((HashMap<String, Object>) dataMap).get("BIRTY_day"));
        String password = (String) ((HashMap<String, Object>) dataMap).get("password");
        ((HashMap<String, Object>) dataMap).put("PW", bcryptPasswordEncoder.encode(password));
        Object result = sharedDaos.updateOne(sqlMapId, dataMap);
        return result;
    }

}
