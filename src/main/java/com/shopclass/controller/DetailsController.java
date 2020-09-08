package com.shopclass.controller;

import com.shopclass.VO.DetailsVO;
import com.shopclass.entity.Details;
import com.shopclass.service.Impl.DetailsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/details")
public class DetailsController {
    @Autowired
    private DetailsServiceImpl detailsService;

    @GetMapping("/findDescription")
    public String findDescription(@RequestParam Integer id, Model model){
        DetailsVO description = detailsService.findDescription(id);
        model.addAttribute("des",description);
        return "description";
    }

    @GetMapping("/return")
    public String ret(){
        return "redirect:/course/findCourse";
    }
}
