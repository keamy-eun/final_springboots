package eunjunglee.final_springboots.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LectureController {
    
     // 강좌 리뷰 조회 ㅇ
     @RequestMapping(value="/lecture_review", method = RequestMethod.GET)
     public ModelAndView getReview(ModelAndView modelAndView ){
         // Object resultMap = 서비스.get서비스메소드(params);
         // modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/main/lecture_review");
         return modelAndView;
     }
 
     // 강좌신청목록 ㅇ
     @RequestMapping(value="/lecture_signup_list", method = RequestMethod.GET)
     public ModelAndView getLectureList(ModelAndView modelAndView ){
         // Object resultMap = 서비스.get서비스메소드(params);
         // modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/main/lecture_signup_list");
         return modelAndView;
     }
 
     // 강좌신청 ㅇ
     @RequestMapping(value="/lecture_signup", method = RequestMethod.GET)
     public ModelAndView getLecture(ModelAndView modelAndView ){
         // Object resultMap = 서비스.get서비스메소드(params);
         // modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/main/lecture_signup");
         return modelAndView;
     }
}
