package com.shopclass.mapper;

import com.shopclass.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    List<User> findAll();

    User login(@Param("name") String name, @Param("password") String password);

    void insertUser(User user);

    void updateUser(User user);

    User findById(Integer id);

    void deleteUser(Integer id);

    void resiter(@Param("name") String name, @Param("password")String password);
}
