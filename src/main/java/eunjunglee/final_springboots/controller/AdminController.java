package eunjunglee.final_springboots.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.Map.Entry;

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
    public ModelAndView chart(ModelAndView modelAndView) {

        Object resultMap = adminService.getPollResponse();
        ArrayList<Object> resultList = (ArrayList)resultMap;
        ArrayList datas1 = new ArrayList();
        ArrayList datas2 = new ArrayList();
        ArrayList datas3 = new ArrayList();
        ArrayList datas4 = new ArrayList();
        ArrayList datas5 = new ArrayList();

        int PA01_1=0;
        int PA01_2=0;
        int PA01_3=0;
        int PA01_4=0;
        int PA01_5=0;
        int PA02_1=0;
        int PA02_2=0;
        int PA02_3=0;
        int PA02_4=0;
        int PA03_1=0;
        int PA03_2=0;
        int PA03_3=0;
        int PA03_4=0; 
        String PA01_1_1= ""; 
        String PA04= ""; 

        for(int i=0; i<resultList.size(); i++){
            for (Entry<String, Object> entry : ((Map<String, Object>) resultList.get(i)).entrySet()) {
                if("PQ01".equals((String)entry.getKey())){
                    switch((String)entry.getValue()){
                        case "지인의 추천으로":  PA01_1++;
                                    break;
                        case "인터넷 광고를 보고": PA01_2++;
                                    break;
                        case "SMS 광고를 보고": PA01_3++;
                                    break;
                        case "수업이 마음에 들어서 재신청": PA01_4++;
                                    break;
                        case "기타": PA01_5++;
                                    break;
                    }
                } else if("PQ02".equals((String)entry.getKey())){
                    switch((String)entry.getValue()){
                        case "30분 이하":  PA02_1++;
                                    break;
                        case "1시간 내외":  PA02_2++;
                                    break;
                        case "2시간 내외":  PA02_3++;
                                    break;
                        case "3시간 이상":  PA02_4++;
                                    break;
                    }
                } else if("PQ03".equals((String)entry.getKey())){
                    switch((String)entry.getValue()){
                        case "스마트폰":  PA03_1++;
                                    break;
                        case "컴퓨터":    PA03_2++;
                                    break;
                        case "테블릿":    PA03_3++;
                                    break;
                        case "기타":      PA03_4++;
                                    break;
                    }
                } else if("PQ04".equals((String)entry.getKey())){
                    System.out.println("YES");
                } else if("PQ01_1".equals((String)entry.getKey())){
                    System.err.println("NO");
                }
            }
        }
        
        datas1.add(Arrays.asList("질문1", "선택수"));
        datas2.add(Arrays.asList("질문2", "선택수"));
        datas3.add(Arrays.asList("질문3", "선택수"));
        datas4.add(Arrays.asList("질문1-1", "선택수"));
        datas5.add(Arrays.asList("질문4", "선택수"));

        datas1.add(Arrays.asList("1-1", PA01_1));
        datas1.add(Arrays.asList("1-2", PA01_2));
        datas1.add(Arrays.asList("1-3", PA01_3));
        datas1.add(Arrays.asList("1-4", PA01_4));
        datas1.add(Arrays.asList("1-5", PA01_5));
        datas2.add(Arrays.asList("2-1", PA01_1));
        datas2.add(Arrays.asList("2-2", PA01_2));
        datas2.add(Arrays.asList("2-3", PA01_3));
        datas2.add(Arrays.asList("2-4", PA01_4));
        datas3.add(Arrays.asList("3-1", PA01_1));
        datas3.add(Arrays.asList("3-2", PA01_2));
        datas3.add(Arrays.asList("3-3", PA01_3));
        datas3.add(Arrays.asList("3-4", PA01_4));
        ArrayList dataArray = new ArrayList<>();
        dataArray.add(datas1);
        dataArray.add(datas2);
        dataArray.add(datas3);
        dataArray.add(datas4);
        dataArray.add(datas5);

        ArrayList<Object> gsonList = new ArrayList<>();
        gsonList.add(gson.toJson(datas1));
        gsonList.add(gson.toJson(datas2));
        gsonList.add(gson.toJson(datas3));
        gsonList.add(gson.toJson(datas4));
        gsonList.add(gson.toJson(datas5));

        modelAndView.addObject("dataArray", gsonList);
        
        modelAndView.setViewName("/admin/admin_chart");
        return modelAndView;
    }
}
    
