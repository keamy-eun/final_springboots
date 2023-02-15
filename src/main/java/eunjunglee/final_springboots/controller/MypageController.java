package eunjunglee.final_springboots.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MypageController {

    
    // 내 강좌보기
    @RequestMapping(value="/mypage_Lecture", method = RequestMethod.GET)
    public ModelAndView getMypageLecture(ModelAndView modelAndView ){
        // Object resultMap = 서비스.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypages/mypage_Lecture");
        return modelAndView;
    }

    // 내 정보수정
    @RequestMapping(value="/mypage_member_edit", method = RequestMethod.GET)
    public ModelAndView getMemberEdit(ModelAndView modelAndView ){
        // Object resultMap = 서비스.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypages/mypage_member_edit");
        return modelAndView;
    }

    // 자기실력 테스트
    @RequestMapping(value="/mypage_selfTest", method = RequestMethod.GET)
    public ModelAndView getSelfTest(ModelAndView modelAndView ){
        // Object resultMap = 서비스.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypages/mypage_selfTest");
        return modelAndView;
    }

   // 자기실력 테스트 결과
    @RequestMapping(value="/mypage_selfTestResult", method = RequestMethod.GET)
    public ModelAndView getSelfTestResult(ModelAndView modelAndView ){
        // Object resultMap = 서비스.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypages/mypage_selfTestResult");
        return modelAndView;
    }

    // 수강강좌 확인
    @RequestMapping(value="/mypage_signup_lecturelist", method = RequestMethod.GET)
    public ModelAndView getLectureList(ModelAndView modelAndView ){
        // Object resultMap = 서비스.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypages/mypage_signup_lecturelist");
        return modelAndView;
    }
}
