package com.shopclass.controller;

import com.shopclass.entity.Course;
import com.shopclass.service.Impl.CourseServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/course")
public class CourseController {
    @Autowired
    private CourseServiceImpl courseService;

    @GetMapping("/findCourse")
    public String findCourse(Model model){
        List<Course> course = courseService.findCourse();
        model.addAttribute("list",course);
        return "courseList";
    }

    @GetMapping("/findLikeName")
    public String findLikeName(@RequestParam String courseName, Model model) {
        List<Course> list = courseService.findLikeName(courseName);
        model.addAttribute("list",list);
        return "courseList";
    }
}
