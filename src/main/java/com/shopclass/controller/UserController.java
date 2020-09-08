package com.shopclass.controller;

import com.mysql.cj.Session;
import com.shopclass.entity.User;
import com.shopclass.service.Impl.UserServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserServiceImpl userService;

    @GetMapping("/index")
    public String index(){
        return "index";
    }

    @GetMapping("/findAll")
    public ModelAndView findAll(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("main");
        modelAndView.addObject("list",userService.findAll());
        return modelAndView;
    }

    @PostMapping("/login")
    public String login(@RequestParam String name, @RequestParam String password, Model model){
        User user = userService.login(name, password);
        if (user==null){
            return "redirect:/";
        }
        model.addAttribute("name",user.getName());
        return "index";
    }


    @GetMapping("/insert")
    public String insert(){
        return "UserInsert";
    }

    @PostMapping("/insertUser")
    public String insertBook(User user) {
        User user1=new User();
        BeanUtils.copyProperties(user,user1);
        user1.setDeleted(0);
        userService.insertUser(user1);
        return "redirect:/user/findAll";
    }

    @GetMapping("/update")
    public String update(@RequestParam Integer id, Model model){
        User user = userService.findById(id);
        model.addAttribute("user",user);
        return "userUpdate";
    }

    @PostMapping("/updateUser")
    public String updateBook(User user) {
        userService.updateUser(user);
        return "redirect:/user/findAll";
    }

    @RequestMapping("/deleteUser")
    public String deleteUser(@RequestParam Integer id) {
        userService.deleteUser(id);
        return "redirect:/user/findAll";
    }

    @GetMapping("toResiter")
    public String toResiter(){
        return "resiter";
    }

    @PostMapping("/resiter")
    public String resiter(@RequestParam String name, @RequestParam String password) {
        userService.resiter(name, password);
        return "redirect:/";
    }
}
