package eunjunglee.final_springboots.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import eunjunglee.final_springboots.service.MypageService;

@Controller
@RequestMapping(value = "/mypage")
public class MypageController {

    @Autowired
    MypageService mypageService;

    // 내 강좌보기
    @RequestMapping(value = { "/Lecture", "", "/" }, method = RequestMethod.GET)
    public ModelAndView getMypageLecture(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        // 로그인에서 가져오는 아이디 저장(하드코딩)
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = null;
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername(); // 로그인 상태 확인
        } else {
            username = principal.toString(); // 로그 아웃 상태 확인
        }
        params.put("MEMBER_ID", username);
        // result에 MEMBER_ID와 LECTURE_NUMBER만 필터링해서 가져옴

        Object resultMap = mypageService.getlistToMylectureMainWithDate(params);

        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypages/mypage_Lecture");
        return modelAndView;
    }

    // 수강강좌 확인 ㅇ
    @RequestMapping(value = "/LectureSignUpList", method = RequestMethod.GET)
    public ModelAndView getMypageSignupLecturelist(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        // 로그인에서 가져오는 아이디 저장(하드코딩)
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = null;
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername(); // 로그인 상태 확인
        } else {
            username = principal.toString(); // 로그 아웃 상태 확인
        }
        params.put("MEMBER_ID", username);
        // result에 MEMBER_ID와 LECTURE_NUMBER만 필터링해서 가져옴
        Object resultMap = mypageService.getlistToMylectureMain(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypages/mypage_signup_lecturelist");
        return modelAndView;
    }

    // 내 정보수정
    @RequestMapping(value = "/EditForm", method = RequestMethod.GET)
    public ModelAndView mypageEdit(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        // 로그인에서 가져오는 아이디 저장(하드코딩)
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = null;
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername(); // 로그인 상태 확인
        } else {
            username = principal.toString(); // 로그 아웃 상태 확인
        }
        params.put("MEMBER_ID", username);
        Object resultMap = mypageService.getEditList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypages/mypage_member_edit");
        return modelAndView;
    }

    @RequestMapping(value = "/EditFormComplete", method = RequestMethod.GET)
    public String mypageEditComplete(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        // 로그인에서 가져오는 아이디 저장
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = null;
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername(); // 로그인 상태 확인
        } else {
            username = principal.toString(); // 로그 아웃 상태 확인
        }
        params.put("MEMBER_ID", username);

        Object resultMap = mypageService.EditMember(params);
        return "redirect:/";
    }

    @RequestMapping(value = "/deleteMember", method = RequestMethod.GET)
    public String deleteMember(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        // 로그인에서 가져오는 아이디 저장
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = null;
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername(); // 로그인 상태 확인
        } else {
            username = principal.toString(); // 로그 아웃 상태 확인
        }
        params.put("MEMBER_ID", username);

        mypageService.deleteMemberLog(params);
        mypageService.deleteMember(params);
        return "redirect:/logout";
    }

    // 자기실력 테스트 ㅇ
    @RequestMapping(value = "/selfTestForm", method = RequestMethod.GET)
    public ModelAndView getSelfTest(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = mypageService.getQAList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypages/mypage_selfTest");
        return modelAndView;
    }

    // 자기실력 테스트 결과 ㅇ
    @RequestMapping(value = "/selfTestResult", method = RequestMethod.GET)
    public ModelAndView getSelfTestResult(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = mypageService.calculateTestScore(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypages/mypage_selfTestResult");
        return modelAndView;
    }

    @RequestMapping(value = { "/delete/{uniqueId}" }, method = RequestMethod.GET)
    public String delete(@RequestParam Map<String, Object> params, @PathVariable String uniqueId,
            ModelAndView modelAndView) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String username = null;
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername(); // 로그인 상태 확인
        } else {
            username = principal.toString(); // 로그 아웃 상태 확인
        }
        params.put("MEMBER_ID", username);
        params.put("LECTURE_NUMBER", uniqueId);
        Object resultMap = mypageService.updateExpireDate(params);
        resultMap = mypageService.getlistToMylectureMain(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/mypages/mypage_Lecture");
        // return modelAndView;
        return "redirect:/mypage";
    }
}
