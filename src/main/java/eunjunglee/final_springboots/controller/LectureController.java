package eunjunglee.final_springboots.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Map;

import eunjunglee.final_springboots.service.AdminService;
import eunjunglee.final_springboots.service.LectureService;

@Controller
@RequestMapping(value = "/lecture")
public class LectureController {

    @Autowired
    LectureService lectureService;

    @Autowired
    AdminService adminService;
    

     // 강좌 리뷰 조회
     @RequestMapping(value="/lecture_review", method = RequestMethod.GET)
     public ModelAndView getReview(@RequestParam Map<String, Object> params, ModelAndView modelAndView ){
        params.put("currentPage", 1);
        params.put("pageScale", 10);
        Object resultMap = lectureService.listAndPagination(params);
         modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/lecture/lecture_review");
         return modelAndView;
     }
 
    // 페이지네이션
    @RequestMapping(value = { "/lecture_review_pagination/{currentPage}"}, method = RequestMethod.GET)
    public ModelAndView listPagination(@RequestParam Map<String, Object> params
            , @PathVariable String currentPage, ModelAndView modelAndView) {
        params.put("currentPage", Integer.parseInt(currentPage));
        params.put("pageScale", 10);
        Object resultMap = lectureService.listAndPagination(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/lecture/lecture_review_pagination");
        return modelAndView;
    }
    
     // 강좌신청목록
     @RequestMapping(value={"/lecture_signup_list","/",""}, method = RequestMethod.GET)
     public ModelAndView getLectureList(@RequestParam Map<String, Object> params, ModelAndView modelAndView ){
         Object resultMap = lectureService.getLectureList(params);
         modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/lecture/lecture_signup_list");
         return modelAndView;
     }
 
     // 강좌신청
    @RequestMapping(value="/lecture_signup", method = RequestMethod.POST)
    public String getPoll(@RequestParam Map<String, Object> params, ModelAndView modelAndView ){
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        String username = null;
        if (principal instanceof UserDetails) {
            username = ((UserDetails)principal).getUsername();   // 로그인 상태 확인
        } else {
            username = principal.toString();     // 로그 아웃 상태 확인
        }
        params.put("MEMBER_ID", username);
    //    params.put("MEMBER_ID", "circle01");
    //    params.put("LECTURER_TITLE", "세로미");
        lectureService.insertQnAAndMyLecture(params);
        return "redirect:/mypage/Lecture";
    }

     // 설문조사
     @RequestMapping(value="/lecture_poll/{lecture_number}", method = RequestMethod.GET)
     public ModelAndView getLecture(@RequestParam Map<String, Object> params, @PathVariable String lecture_number, ModelAndView modelAndView ){
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        String username = null;
        if (principal instanceof UserDetails) {
            username = ((UserDetails)principal).getUsername();   // 로그인 상태 확인
        } else {
            username = principal.toString();     // 로그 아웃 상태 확인
        }
        params.put("MEMBER_ID", username);
        params.put("LECTURE_NUMBER",lecture_number);
         Object resultMap1 = lectureService.getQuestionList(params);
         Object resultMap2 = lectureService.getAnswerList(params);
         Object resultMap3 = lectureService.getMemberName(params);
         Object resultMap4 = lectureService.getLectureID(params);
         ArrayList<Object> resultList = new ArrayList<>();
         resultList.add(resultMap1);
         resultList.add(resultMap2);
         resultList.add(resultMap3);
         resultList.add(resultMap4);
         modelAndView.addObject("resultList", resultList);
         modelAndView.setViewName("/lecture/lecture_signupWithPoll");
         return modelAndView;
     }

}
