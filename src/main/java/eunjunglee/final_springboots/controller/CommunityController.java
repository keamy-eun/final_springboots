package eunjunglee.final_springboots.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import eunjunglee.final_springboots.service.CommunityService;

@Controller
public class CommunityController {

    @Autowired
    CommunityService communityService;
 
    
    // 강좌게시판 ㅇ
    @RequestMapping(value="/community_lecture", method = RequestMethod.GET)
    public ModelAndView getLecture(ModelAndView modelAndView ){
        // Object resultMap = communityService.getList(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_lecture");
        return modelAndView;
    }

    // 강사게시판 ㅇ
    @RequestMapping(value="/community_lecturer", method = RequestMethod.GET)
    public ModelAndView getLecturer(ModelAndView modelAndView, @RequestParam Map<String, Object> params ){
        Object resultMap = communityService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_lecturer");
        return modelAndView;
    }

    //공지사항 게시판 ㅇ
    @RequestMapping(value="/community_notice", method = RequestMethod.GET)
    public ModelAndView getNotice(ModelAndView modelAndView, @RequestParam Map<String, Object> params ){
        Object resultMap = communityService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_notice");
        return modelAndView;
    }

    // 게시글 페이지 ㅇ
    @RequestMapping(value="/community_post", method = RequestMethod.GET)
    public ModelAndView getPost( ModelAndView modelAndView ){
        // Object resultMap = 서비스.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_post");
        return modelAndView;
    }

    // 게시글 작성 페이지 ㅇ
    @RequestMapping(value="/community_posting", method = RequestMethod.GET)
    public ModelAndView getPosting( ModelAndView modelAndView, @RequestParam Map<String, Object> params ){
        Object resultMap = communityService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_posting");
        return modelAndView;
    }

    // 학생게시판 ㅇ
    @RequestMapping(value="/community_student", method = RequestMethod.GET)
    public ModelAndView getStudent( ModelAndView modelAndView, @RequestParam Map<String, Object> params ){
        Object resultMap = communityService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        // resultmap에 값이 다 들어있는 것 확인.
        modelAndView.setViewName("/communitys/community_student");
        return modelAndView;
    }

}