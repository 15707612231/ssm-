package com.shopclass.service;

import com.shopclass.entity.Course;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CourseService {

    List<Course> findCourse();

    List<Course> findLikeName(String courseName);
}
