package com.shopclass.service.Impl;

import com.shopclass.entity.Course;
import com.shopclass.mapper.CourseMapper;
import com.shopclass.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Service
public class CourseServiceImpl implements CourseService {
    @Autowired
    private CourseMapper courseMapper;

    @Override
    public List<Course> findCourse() {
        return courseMapper.findCourse();
    }

    @Override
    public List<Course> findLikeName(String courseName) {
        return courseMapper.findLikeName(courseName);
    }

}
