package eunjunglee.final_springboots.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import eunjunglee.final_springboots.service.HomeService;
import eunjunglee.final_springboots.service.CommunityService;
import eunjunglee.final_springboots.service.MemberWithAuthorityService;
import eunjunglee.final_springboots.service.LectureService;

@Controller
public class HomeController {

    @Autowired
    HomeService homeService;

    @Autowired
    MemberWithAuthorityService memberWithAuthorityService;

    @Autowired
    CommunityService communityService;

    @Autowired
    LectureService lectureService;

    // 로그인
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView getLogin(ModelAndView modelAndView) {
        // Object resultMap = 서비스.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/main/main_login");
        return modelAndView;
    }

    // 회원가입
    @RequestMapping(value = "/home/Signupform", method = RequestMethod.GET)
    public ModelAndView getSighUpForm(ModelAndView modelAndView) {
        modelAndView.setViewName("/main/main_signUp");
        return modelAndView;
    }

    // 회원가입 완료
    @RequestMapping(value = "/home/SignupComplete", method = RequestMethod.POST)
    public String getSighUpData(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        String birth = (String) params.get("BIRTY_year") + "-" + (String) params.get("BIRTY_month") + "-"
                + (String) params.get("BIRTY_day");
        params.put("BIRTH", birth);

        // member에 데이터 집어넣음
        homeService.insertOne(params);
        // member_log로 데이터 집어넣음
        memberWithAuthorityService.insert(params);
        return "redirect:/";
    }

    // 메인페이지
    @RequestMapping(value = { "/main", "/", "" }, method = RequestMethod.GET)
    public ModelAndView getMain(ModelAndView modelAndView, @RequestParam Map<String, Object> params ){
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        Object getStudent = communityService.getList(params);// 학생게시판
        Object getLecturer = communityService.getListLecturer(params);// 강사게시판
        Object getNotice = communityService.getListNotice(params);// 강사게시판
        Object getLectureReview = lectureService.selectListLecturerReview(params);


        modelAndView.addObject("getStudent", getStudent);
        modelAndView.addObject("getLecturer", getLecturer);
        modelAndView.addObject("getNotice", getNotice);
        modelAndView.addObject("getLectureReview", getLectureReview);
        String username = null;
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername(); // 로그인 상태 확인
        } else {
            username = principal.toString(); // 로그 아웃 상태 확인
        }
        modelAndView.setViewName("/main/main");

        return modelAndView;
    }

}
