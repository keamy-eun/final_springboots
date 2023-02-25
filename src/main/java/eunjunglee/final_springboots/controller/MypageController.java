package eunjunglee.final_springboots.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import eunjunglee.final_springboots.service.MypageService;

@Controller
@RequestMapping(value = "/mypage")
public class MypageController {

    @Autowired
    MypageService mypageService;

    // 내 강좌보기
    @RequestMapping(value = { "/Lecture", "", "/" }, method = RequestMethod.GET)
    public ModelAndView getMypageLecture(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        // 로그인에서 가져오는 아이디 저장(하드코딩)
        params.put("MEMBER_ID", "circle01");
        // result에 MEMBER_ID와 LECTURE_NUMBER만 필터링해서 가져옴
        Object resultMap = mypageService.getlistToMylectureMain(params);

        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypages/mypage_Lecture");
        return modelAndView;
    }

    // 수강강좌 확인 ㅇ
    @RequestMapping(value = "/LectureSignUpList", method = RequestMethod.GET)
    public ModelAndView getMypageSignupLecturelist(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        // 로그인에서 가져오는 아이디 저장(하드코딩)
        params.put("MEMBER_ID", "circle01");
        // result에 MEMBER_ID와 LECTURE_NUMBER만 필터링해서 가져옴
        Object resultMap = mypageService.getlistToMylectureMain(params);

        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypages/mypage_signup_lecturelist");
        return modelAndView;
    }

    // 내 정보수정
    @RequestMapping(value = "/Edit/{uniqueId}", method = RequestMethod.GET)
    public ModelAndView mypageEdit(@RequestParam Map<String, Object> params, @PathVariable String uniqueId,
            ModelAndView modelAndView) {
        params.put("MEMBER_ID", uniqueId);
        Object resultMap = mypageService.getOne(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypages/mypage_member_edit");
        return modelAndView;
    }

    // 자기실력 테스트 ㅇ
    @RequestMapping(value = "/selfTest", method = RequestMethod.GET)
    public ModelAndView getSelfTest(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = mypageService.getQuestionList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypages/mypage_selfTest");
        return modelAndView;
    }

    // 자기실력 테스트 결과 ㅇ
    @RequestMapping(value = "/selfTestResult", method = RequestMethod.GET)
    public ModelAndView getSelfTestResult(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = mypageService.calculateTestScore(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypages/mypage_selfTestResult");
        return modelAndView;
    }

}
