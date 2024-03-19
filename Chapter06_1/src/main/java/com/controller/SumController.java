package com.controller;

import com.bean.SumDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("sum/")
public class SumController {

    @RequestMapping(value = "input.do", method = RequestMethod.GET)
    public String input(){
        return "sum/input";
    }

/*    @GetMapping(value = "/result.do")
    public String result(){
        return "sum/result";
    }*/
/*    @GetMapping(value = "result.do")
    public ModelAndView result(@RequestParam(required = false, defaultValue = "0") int x
                            , @RequestParam(required = false, defaultValue = "0") int y){
        // 가장 기본
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("x", x);
        modelAndView.addObject("y", y);

        modelAndView.setViewName("sum/result");
        return modelAndView;
    }*/

/*    @GetMapping(value = "result.do")
    public String result(@RequestParam Map<String, String> map, ModelMap modelMap){
        // ModelMap으로 정보를 전달해도 된다
        modelMap.put("x", map.get("x"));
        modelMap.put("y", map.get("y"));

        return "sum/result";
    }*/
     @GetMapping(value = "result.do")
     public String result(@ModelAttribute SumDTO sumDTO, Model model) {
         // 가장 많이 쓰이는 방식
         model.addAttribute("x", sumDTO.getX());
         model.addAttribute("y", sumDTO.getY());
         return "sum/result";
     }
}
