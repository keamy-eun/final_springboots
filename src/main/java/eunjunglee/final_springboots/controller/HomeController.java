package eunjunglee.final_springboots.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import eunjunglee.final_springboots.service.HomeService;

@Controller
public class HomeController {

    @Autowired
    HomeService homeService;

    // 로그인
    @RequestMapping(value = "/main_login", method = RequestMethod.GET)
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
    @RequestMapping(value = "/home/SignupComplete", method = RequestMethod.GET)
    public ModelAndView getSighUpData(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        String birth = (String) params.get("BIRTY_year") + "-" + (String) params.get("BIRTY_month") + "-"
                + (String) params.get("BIRTY_day");
        params.put("BIRTH", birth);
        homeService.insertOne(params);
        modelAndView.setViewName("/main/main");
        return modelAndView;
    }

    // 메인페이지
    @RequestMapping(value = { "/main", "/", "" }, method = RequestMethod.GET)
    public ModelAndView getMain(ModelAndView modelAndView) {
        // Object resultMap = 서비스.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/main/main");

        return modelAndView;
    }

}
