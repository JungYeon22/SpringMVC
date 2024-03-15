package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {

    //URL에서 바로 JSP가 실행되지 않게 하기 위해서 /WEB-INF  에 작성한다.
    @RequestMapping(value = "/hello.do", method = RequestMethod.GET)
    public ModelAndView hello(){    // 관용적으로 value값을 메소드 명으로 작성
        ModelAndView mav = new ModelAndView();
        mav.addObject("result", "Hello Spring MVC!!");
        //jsp의 파일명 (prefix, suffix를 설정했으므로 /view/hello.jsp를 찾는다.)
        //mav.setViewName("hello"); // -> /view/hello.jsp
        mav.setViewName("view/hello");
        return mav;
    }

    /*
    *  스프링에서 리턴 타입이 String이면 단순 문자열이 아니라 JSP 파일명으로 인식한다. => /WEB-INF/welcome.jsp
    * 만약에 단순 문자열로 처리하고 싶을 때는 @ResponseBody를 쓰면 된다.(스프링 부트는 자동으로 처리해준다)
    */
//    @RequestMapping(value = "/hello2.do", method = RequestMethod.GET)
    @GetMapping(value = "/hello2.do", produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String hello2(){
        return "안녕하세요!";
    }
}
