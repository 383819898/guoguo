package com.guoguo.service.impl;


import com.guoguo.dao.IUserDao;
import com.guoguo.entity.User;
import com.guoguo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * com.chen.ssm.service.impl
 * 作者      : 陈晓
 * 描述      :
 * 创建日期  : 2017/12/4
 * 修改日期  :
 */

@Service("")
public class IUserService implements UserService {

  @Autowired
  private IUserDao userDao;


  public User login(User user) {
    return userDao.login(user);
  }

  public User getUserById(String id) {
    return userDao.selectByPrimaryKey(Integer.parseInt(id));
  }

  public void add(User user) {

  }

  public void update(User user) {

  }
}
