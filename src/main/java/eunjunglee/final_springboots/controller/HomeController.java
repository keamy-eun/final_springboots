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
    @RequestMapping(value="/main_login", method = RequestMethod.GET)
    public ModelAndView getLogin(ModelAndView modelAndView ){
        // Object resultMap = 서비스.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/main/main_login");
        return modelAndView;
    }

    // 회원가입
    @RequestMapping(value="/main_signUp_form", method = RequestMethod.GET)
    public ModelAndView getSighUpForm(@RequestParam Map<String, Object> params, ModelAndView modelAndView ){
        // Object resultMap = homeService.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/main/main_signUp");
        return modelAndView;
    }

    // 회원가입 완료
    @RequestMapping(value="/main_signUp", method = RequestMethod.POST)
    public ModelAndView getSighUp(ModelAndView modelAndView ){
        // Object resultMap = 서비스.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/main/main_signUp");
        return modelAndView;
    }

    // 메인페이지
    @RequestMapping(value={"/main","/", ""}, method = RequestMethod.GET)
    public ModelAndView getMain(ModelAndView modelAndView ){
        // Object resultMap = 서비스.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/main/main");

        return modelAndView;
    }

    
}
