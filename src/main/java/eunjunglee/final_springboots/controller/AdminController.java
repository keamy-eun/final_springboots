package eunjunglee.final_springboots.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import eunjunglee.final_springboots.service.AdminService;

import com.google.gson.Gson;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
    
    @Autowired
    AdminService adminService;

    @Autowired
    private Gson gson;

    // 회원수정form
    @RequestMapping(value="/edit_form/{member_id}", method = RequestMethod.GET)
    public ModelAndView getEditForm(@RequestParam Map<String, Object> params, @PathVariable String member_id, ModelAndView modelAndView ){
        params.put("MEMBER_ID",member_id);
        Object resultMap = adminService.getOne(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/admin/admin_edit");
        return modelAndView;
    }

     // 회원수정
     @RequestMapping(value="/edit", method = RequestMethod.POST)
     public ModelAndView getEdit(@RequestParam Map<String, Object> params, ModelAndView modelAndView ){
         Object resultMap = adminService.updateAndList(params);
         modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/admin/admin_member");
         return modelAndView;
     }
 
     // 회원조회      
    @RequestMapping(value={"/member","/",""}, method = RequestMethod.GET)
    public ModelAndView getMember(@RequestParam Map<String, Object> params, ModelAndView modelAndView ){
        params.put("currentPage", 1);
        params.put("pageScale", 10);
        Object resultMap = adminService.listAndPagination(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/admin/admin_member");
        return modelAndView;
    }

     // 페이지네이션
     @RequestMapping(value = { "/member_pagination/{currentPage}"}, method = RequestMethod.GET)
     public ModelAndView listPagination(@RequestParam Map<String, Object> params
             , @PathVariable String currentPage, ModelAndView modelAndView) {
         params.put("currentPage", Integer.parseInt(currentPage));
         params.put("pageScale", 10);
         Object resultMap = adminService.listAndPagination(params);
         modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/admin/admin_member_pagination");
         return modelAndView;
     }

     // 회원삭제
     @RequestMapping(value="/member/{member_id}", method = RequestMethod.POST)
     public ModelAndView getDelete(@RequestParam Map<String, Object> params, @PathVariable String member_id, ModelAndView modelAndView ){
        params.put("MEMBER_ID",member_id);
        Object resultMap = adminService.deleteAndList2(params);
         modelAndView.addObject("resultMap", resultMap);
         modelAndView.setViewName("/admin/admin_member");
         return modelAndView;
     }

     // 다중삭제
    @RequestMapping(value = {"/deleteMulti"}, method = RequestMethod.POST)
    public ModelAndView deleteMulti(HttpServletRequest httpServletRequest, @RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        String[] deleteMultis = httpServletRequest.getParameterMap().get("MEMBER_ID");
        params.put("deleteMultis", deleteMultis);
        Object resultMap = adminService.deleteMultiAndList2(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/admin/admin_member");
        return modelAndView;
    }

    @RequestMapping(value = "/chart", method = RequestMethod.GET)  
    public ModelAndView edit(ModelAndView modelAndView) {
        ArrayList datas = new ArrayList();
        // ['Age', 'Weight'],[8, 12],[4, 5.5],[11, 14],[4, 5],[3, 3.5],[6.5, 7];
        datas.add(Arrays.asList("Age", "Weight"));
        datas.add(Arrays.asList(8, 12));
        datas.add(Arrays.asList(4, 5.5));
        datas.add(Arrays.asList(11, 14));
        datas.add(Arrays.asList(4, 5));
        datas.add(Arrays.asList(3, 3.5));
        datas.add(Arrays.asList(6.5, 7));
        ArrayList dataArray = new ArrayList<>();
        dataArray.add(datas);

        modelAndView.addObject("dataArray", gson.toJson(datas));
        
        modelAndView.setViewName("/admin/admin_chart");
        return modelAndView;
    }
}
