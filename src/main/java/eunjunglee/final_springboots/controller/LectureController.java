package eunjunglee.final_springboots.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.ArrayList;

import eunjunglee.final_springboots.service.LectureService;

@Controller
public class LectureController {
    
    @Autowired
    LectureService lectureService;

     // 강좌 리뷰 조회 ㅇ
     @RequestMapping(value="/lecture_review", method = RequestMethod.GET)
     public ModelAndView getReview(ModelAndView modelAndView ){
         // Object resultMap = lectureService.get서비스메소드(params);
         // modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/lecture/lecture_review");
         return modelAndView;
     }
 
     // 강좌신청목록
     @RequestMapping(value="/lecture_signup_list", method = RequestMethod.GET)
     public ModelAndView getLectureList(@RequestParam Map<String, Object> params, ModelAndView modelAndView ){
         Object resultMap = lectureService.getLectureList(params);
         modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/lecture/lecture_signup_list");
         return modelAndView;
     }
 
     // 강좌신청
     @RequestMapping(value="/lecture_signup/{lecture_number}", method = RequestMethod.POST)
     public ModelAndView getPoll(@RequestParam Map<String, Object> params, @PathVariable String lecture_number, ModelAndView modelAndView ){
        params.put("LECTURE_NUMBER",lecture_number);
         Object resultMap = lectureService.getLectureList(params);
         modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/lecture/lecture_signup_list");
         return modelAndView;
     }

     // 설문조사
     @RequestMapping(value="/lecture_poll/{lecture_number}", method = RequestMethod.GET)
     public ModelAndView getLecture(@RequestParam Map<String, Object> params, @PathVariable String lecture_number, ModelAndView modelAndView ){
        params.put("LECTURE_NUMBER",lecture_number);
         Object resultMap1 = lectureService.getQuestionList(params);
         Object resultMap2 = lectureService.getAnswerList(params);
         ArrayList<Object> resultList = new ArrayList<>();
         resultList.add(resultMap1);
         resultList.add(resultMap2);
         modelAndView.addObject("resultList", resultList);
         modelAndView.setViewName("/lecture/lecture_signup");
         return modelAndView;
     }
}
