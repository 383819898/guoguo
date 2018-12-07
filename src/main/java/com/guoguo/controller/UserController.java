package com.guoguo.controller;

import com.guoguo.entity.User;
import com.guoguo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * com.chen.ssm.web
 * 作者      : 陈晓
 * 描述      :
 * 创建日期  : 2017/12/4
 * 修改日期  :
 */
@Controller
@RequestMapping("/user")
public class UserController {

  @Autowired
  private UserService userService;


  @RequestMapping("/test")
  public String test() {
    return "list";
  }

  @RequestMapping("/index")
  public String index() {
    return "login";
  }

  @RequestMapping("/login")
  public String login(User user, HttpServletRequest request) {
    User loginUser = userService.login(user);
    if (loginUser != null) {
      request.getSession().setAttribute("currentUser",loginUser);
      return "loginSuccess";
    }
    request.getSession().setAttribute("message","用户名或密码有误！！！");
    System.out.println(loginUser.getUsername());
    return "login";
  }

  @RequestMapping("/search")
  public String search() {
    return "login";
  }
}
