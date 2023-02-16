package eunjunglee.final_springboots.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
    
     // 회원수정
     @RequestMapping(value="/admin_edit", method = RequestMethod.GET)
     public ModelAndView getEdit(ModelAndView modelAndView ){
         // Object resultMap = 서비스.get서비스메소드(params);
         // modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/main/admin_edit");
         return modelAndView;
     }
 
     // 회원조회
     @RequestMapping(value="/admin_member", method = RequestMethod.GET)
     public ModelAndView getMember(ModelAndView modelAndView ){
         // Object resultMap = 서비스.get서비스메소드(params);
         // modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/main/admin_member");
         return modelAndView;
     }
}
