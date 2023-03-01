package eunjunglee.final_springboots.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import eunjunglee.final_springboots.service.CommunityService;

@Controller
public class CommunityController {

    @Autowired
    CommunityService communityService;
 
    
    // 강좌게시판
    @RequestMapping(value="/community_lecture", method = RequestMethod.GET)
    public ModelAndView getLecture(ModelAndView modelAndView, @RequestParam Map<String, Object> params ){
        Object resultMap = communityService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_lecture");
        return modelAndView;
    }
    // 강좌게시판
    @RequestMapping(value="/community_lecture", method = RequestMethod.POST)
    public ModelAndView getLecturePost(ModelAndView modelAndView, @RequestParam Map<String, Object> params ){
        Object resultMap = communityService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_lecture");
        return modelAndView;
    }

    // 강사게시판
    @RequestMapping(value="/community_lecturer", method = RequestMethod.GET)
    public ModelAndView getLecturer(ModelAndView modelAndView, @RequestParam Map<String, Object> params ){
        Object resultMap = communityService.getListLecturer(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_lecturer");
        return modelAndView;
    }
    // 강사게시판  

    @RequestMapping(value="/community_lecturer", method = RequestMethod.POST)
    public ModelAndView getLecturerPost(ModelAndView modelAndView, @RequestParam Map<String, Object> params ){
        Object resultMap = communityService.insertPostAndGetLecturerList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_lecturer");
        return modelAndView;
    }

    //공지사항 게시판
    @RequestMapping(value="/community_notice", method = RequestMethod.GET)
    public ModelAndView getNotice(ModelAndView modelAndView, @RequestParam Map<String, Object> params ){
        Object resultMap = communityService.getListNotice(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_notice");
        return modelAndView;
    }
    //공지사항 게시판
    @RequestMapping(value="/community_notice", method = RequestMethod.POST)
    public ModelAndView getNoticePost(ModelAndView modelAndView, @RequestParam Map<String, Object> params ){
        Object resultMap = communityService.insertPostAndGetNoticeList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_notice");
        return modelAndView;
    }

    // 게시글 페이지
    @RequestMapping(value="/community_post/{uniqueId}", method = RequestMethod.GET)
    public ModelAndView getPost( ModelAndView modelAndView, @PathVariable String uniqueId, @RequestParam Map<String, Object> params ){
        //여기에 게시글 가져오기전에 uniqueId로 조회수 1 올리는 업데이트 해주면 됨 그러면 게시글 들어가면서 조회수 1올라있음
        // updatePostView는 viewCount불러서 + 1 해주는 mapper  uniqueId를 받아가서 postNumber과 비교하고 해당 컬럼만 update함

        Object result = communityService.updatePostView(uniqueId);
        Object resultMap = communityService.getPost(uniqueId); // 여긴 params가 아닌uniqueId
        // 겟포스트로 매퍼에서 원하는 컬럼 골라서 가져오고 resultMap에 담아둠
        modelAndView.addObject("resultMap", resultMap);  
        modelAndView.setViewName("/communitys/community_post");
        return modelAndView;
    }
//  --------------------------------------------------------
    // 게시글 작성 페이지
    @RequestMapping(value="/community_posting", method = RequestMethod.GET)
    public ModelAndView getPosting( ModelAndView modelAndView, @RequestParam Map<String, Object> params){
        Object resultMap = communityService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_posting");
        return modelAndView;
    }
    // 게시글 작성 페이지
    @RequestMapping(value="/community_posting", method = RequestMethod.POST)
    public ModelAndView getPosting_POST( ModelAndView modelAndView, @RequestParam Map<String, Object> params ){
        Object resultMap = communityService.insertPostAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_posting");
        return modelAndView;
    }
    @RequestMapping(value="/community_postingLecturer", method = RequestMethod.GET)
    public ModelAndView getPosting_lecturer( ModelAndView modelAndView, @RequestParam Map<String, Object> params){
        Object resultMap = communityService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_postingLecturer");
        return modelAndView;

    // 게시글 작성 페이지
    @RequestMapping(value="/community_postingLecturer", method = RequestMethod.POST)
    public ModelAndView getPosting_lecturerPost( ModelAndView modelAndView, @RequestParam Map<String, Object> params ){
        Object resultMap = communityService.insertPostAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_postingLecturer");
        return modelAndView;
    }

    @RequestMapping(value="/community_postingNotice", method = RequestMethod.GET)
    public ModelAndView getPosting_notice(ModelAndView modelAndView, @RequestParam Map<String, Object> params){
        Object resultMap = communityService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_postingNotice");
        return modelAndView;
    }
    // 게시글 작성 페이지
    @RequestMapping(value="/community_postingNotice", method = RequestMethod.POST)
    public ModelAndView getPosting_noticePost( ModelAndView modelAndView, @RequestParam Map<String, Object> params ){
        Object resultMap = communityService.insertPostAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/communitys/community_postingNotice");
        return modelAndView;
    }

    // 학생게시판
    @RequestMapping(value="/community_student", method = RequestMethod.GET)
    public ModelAndView getStudent( ModelAndView modelAndView, @RequestParam Map<String, Object> params ){
        Object resultMap = communityService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        // resultmap에 값이 다 들어있는 것 확인.
        modelAndView.setViewName("/communitys/community_student");
        return modelAndView;
    }

    // 게시글 작성 누르면 insert하고 이 링크로 옴
    @RequestMapping(value="/community_student", method = RequestMethod.POST)
    public ModelAndView getStudentPOST( ModelAndView modelAndView, @RequestParam Map<String, Object> params ){

        // 여기까지 params에 값이 들어온 것은 확인
        Object resultMap = communityService.insertPostAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        // params 에 게시글제목, 게시판 번호, 첨부파일, 게시글 내용까지 확인  
        modelAndView.setViewName("/communitys/community_student");
        return modelAndView;
    }
   
}