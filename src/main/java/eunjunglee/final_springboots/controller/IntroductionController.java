package eunjunglee.final_springboots.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IntroductionController {

    //  intriduction은 단순 출력이니 컨트롤러만 있으면 될 것 같다.

    // 학원소개
    @RequestMapping(value="/introduction_academy", method = RequestMethod.GET)
    public ModelAndView getAcademy(ModelAndView modelAndView ){
        // Object resultMap = 서비스.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/introductions/introduction_academy");
        return modelAndView;
    }

    // 등록안내
    @RequestMapping(value="/introduction_enroll", method = RequestMethod.GET)
    public ModelAndView getEnroll(ModelAndView modelAndView ){
        // Object resultMap = 서비스.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/introductions/introduction_enroll");
        return modelAndView;
    }

    // 학습소개
    @RequestMapping(value="/introduction_learning", method = RequestMethod.GET)
    public ModelAndView getLearning(ModelAndView modelAndView ){
        // Object resultMap = 서비스.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/introductions/introduction_learning");
        return modelAndView;
    }

    // 위치 안내
    @RequestMapping(value="/introduction_location", method = RequestMethod.GET)
    public ModelAndView getLocation(ModelAndView modelAndView ){
        // Object resultMap = 서비스.get서비스메소드(params);
        // modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/introductions/introduction_location");
        return modelAndView;
    }
    
    
}
