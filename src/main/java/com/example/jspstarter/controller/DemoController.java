package com.example.jspstarter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DemoController {

    // 최초 실행시 index 로 이동하게 만들어줌
    @GetMapping("/")
    public String index() {
        return "index";
    }

    // form.jsp 호출 시
    @PostMapping("/form")
    public String form(@RequestParam String name, Model model) {
        model.addAttribute("name", name);

        return "index";
    }

    @GetMapping("/boxList")
    public String boxList() {
        return "boxList";
    }

    @GetMapping("/seoulBox")
    public String seoulBox() {
        return "seoulBox";
    }

    @GetMapping("/form")
    public String form() {
        return "form";
    }

    @GetMapping("/addProduct")
    public String addProduct() {
        return "/addProduct.jsp";
    }
}
