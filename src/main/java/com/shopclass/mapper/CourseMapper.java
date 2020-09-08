package com.shopclass.mapper;

import com.shopclass.entity.Course;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CourseMapper {
    List<Course> findCourse();

    List<Course> findLikeName(@Param("courseName") String courseName);

}
