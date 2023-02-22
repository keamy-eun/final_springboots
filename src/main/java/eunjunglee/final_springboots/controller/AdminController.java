package eunjunglee.final_springboots.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import eunjunglee.final_springboots.service.AdminService;

@Controller
public class AdminController {
    
    @Autowired
    AdminService adminService;
    // 회원수정페이지
    @RequestMapping(value="/admin_edit_form/{member_id}", method = RequestMethod.GET)
    public ModelAndView getEditForm(@RequestParam Map<String, Object> params, @PathVariable String member_id, ModelAndView modelAndView ){
        params.put("MEMBER_ID",member_id);
        Object resultMap = adminService.getOne(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/main/admin_edit");
        return modelAndView;
    }

     // 회원수정
     @RequestMapping(value="/admin_edit", method = RequestMethod.POST)
     public ModelAndView getEdit(@RequestParam Map<String, Object> params, ModelAndView modelAndView ){
         Object resultMap = adminService.updateAndList(params);
         modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/main/admin_member");
         return modelAndView;
     }
 
     // 회원조회
     @RequestMapping(value="/admin_member", method = RequestMethod.GET)
     public ModelAndView getMember(@RequestParam Map<String, Object> params, ModelAndView modelAndView ){
         Object resultMap = adminService.getList(params);
         modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/main/admin_member");
         return modelAndView;
     }
      
     // 회원삭제
     @RequestMapping(value="/admin_member/{member_id}", method = RequestMethod.POST)
     public ModelAndView getDelete(@RequestParam Map<String, Object> params, @PathVariable String member_id, ModelAndView modelAndView ){
        params.put("MEMBER_ID",member_id);
        Object resultMap = adminService.deleteAndList(params);
         modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/main/admin_member");
         return modelAndView;
     }

     // 페이지네이션
     @RequestMapping(value = { "/listPagination/{currentPage}"}, method = RequestMethod.GET)
     public ModelAndView listPagination(@RequestParam Map<String, Object> params
             , @PathVariable String currentPage, ModelAndView modelAndView) {
         params.put("currentPage", Integer.parseInt(currentPage));
         params.put("pageScale", 10);
         Object resultMap = adminService.listAndPagination(params);
         modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/poll/list_pagination");
         return modelAndView;
     }
}
