package eunjunglee.final_springboots.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import eunjunglee.final_springboots.service.MemberWithAuthorityService;

@Controller
public class SecurityController {

    // MemberWithAuthorityController
    @Autowired
    MemberWithAuthorityService memberWithAuthorityService;

    @RequestMapping(value = "/joinForm", method = RequestMethod.GET)
    public ModelAndView joinForm(ModelAndView modelAndView) {
        String viewName = "/WEB-INF/views/member/joinForm.jsp";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }

    @RequestMapping(value = "/joinProc", method = RequestMethod.GET)
    public String joinProc(@RequestParam Map params, ModelAndView modelAndView) {
        Object result = memberWithAuthorityService.insert(params);
        return "redirect:/";
    }

    // security controller
    @GetMapping({ "/loginForm" }) // 로그인 폼 작성
    public ModelAndView loginForm(ModelAndView modelAndView) {
        String viewName = "/main/main_login";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }

    @GetMapping({ "/logoutForm" }) // 로그아웃 폼 작성
    public ModelAndView logoutForm(ModelAndView modelAndView) {
        modelAndView.setViewName("/main");
        return modelAndView;
    }
}