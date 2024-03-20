package com.controller;

import com.bean.SungJukDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SungJukController {

    @GetMapping(value = "input.do")
    public String input(){
        return "sungJuk/input";
    }

    @PostMapping(value = "result.do")
    public String result(@ModelAttribute SungJukDTO sungJukDTO, Model model){
        int tot = sungJukDTO.getKor() + sungJukDTO.getEng() + sungJukDTO.getMath();
        double avg = tot / 3.0;
        model.addAttribute("name", sungJukDTO.getName());
        model.addAttribute("tot", tot);
        model.addAttribute("avg", avg);
        return "sungJuk/result";
    }

}
