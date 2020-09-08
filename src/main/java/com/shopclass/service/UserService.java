package com.shopclass.service;

import com.shopclass.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {
    List<User> findAll();

    User login(String name,String password);

    void insertUser(User user);

    void updateUser(User user);

    User findById(Integer id);

    void deleteUser(Integer id);

    void resiter(String name,String password);
}
