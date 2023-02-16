package eunjunglee.final_springboots.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
    
   

   

    // 로그인
    @RequestMapping(value="/main_login", method = RequestMethod.GET)
    public ModelAndView getLogin(ModelAndView modelAndView ){
        // Object resultMap = 서비스.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/main/main_login");
        return modelAndView;
    }

    // 회원가입
    @RequestMapping(value="/main_signUp", method = RequestMethod.GET)
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
