package com.guoguo.service;


import com.guoguo.entity.User;

public interface UserService {

  User login(User user);

  User getUserById(String id);

  void add(User user);

  void update(User user);
}
