package com.guoguo.controller;

import com.guoguo.dao.TUserDAO;
import com.guoguo.entity.TUser;
import com.guoguo.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
@RequestMapping("/demo")
public class DemoController {


    @Autowired
    private TUserDAO tUserDAO;


    @RequestMapping("/login")
    public String login(TUser user, HttpServletRequest request) {
        TUser loginUser = tUserDAO.login(user);
        if (loginUser != null) {
            request.getSession().setAttribute("currentUser",loginUser);
            UsernamePasswordToken token = new UsernamePasswordToken(loginUser.getUsername(), loginUser.getPassword());

            Subject subject = SecurityUtils.getSubject(); // 获取Subject单例对象
            subject.login(token); // 登陆

            List<TUser> tUsers = tUserDAO.selectAll(user);
            System.out.println(tUsers);
            request.getSession().setAttribute("tUser",tUsers);

            return "list";
        }
        request.getSession().setAttribute("message","用户名或密码有误！！！");
        return "index";
    }


}
