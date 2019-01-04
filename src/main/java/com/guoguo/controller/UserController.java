package com.guoguo.controller;

import com.guoguo.dao.GuoguoBookNameDAO;
import com.guoguo.dao.GuoguoChapterDAO;
import com.guoguo.entity.GuoguoBookName;
import com.guoguo.entity.GuoguoChapter;
import com.guoguo.entity.User;
import com.guoguo.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

/**
 * com.chen.ssm.web
 * 作者      : 陈晓
 * 描述      :
 * 创建日期  : 2017/12/4
 * 修改日期  :
 */
@Controller
@RequestMapping("/login")
public class UserController {

  @Autowired
  private UserService userService;

  Logger logger = LoggerFactory.getLogger(UserController.class);
  String urlAll ="http://www.baoliny.com";


  @Autowired
  private GuoguoBookNameDAO guoguoBookNameDAO;

  @Autowired
  private GuoguoChapterDAO guoguoChapterDAO;

  @RequestMapping("/test")
  public String test() {

      for (int i=1;i<=1260; i++){



        GuoguoBookName guoguoBookName  = new GuoguoBookName();
        Elements select = null;
        try {
          Document document = Jsoup.connect("http://www.baoliny.com/sort_1_"+i+".html").ignoreContentType(true).get();

          select = document.select("div.l ul li");

          System.out.println(select.get(0).select("span"));
        } catch (IOException e) {

          StringWriter stringWriter = new StringWriter();
          e.printStackTrace(new PrintWriter(stringWriter,true));
          logger.error("错误信息："+stringWriter.toString());
        }
        for (int j=0; j<select.size(); j++) {

          try {
            guoguoBookName.setGuoguoName(select.get(j).select("span").get(0).text());

            guoguoBookName.setGuoguoChapter(select.get(j).select("span").get(1).text());
            guoguoBookName.setGuoguoAuthor(select.get(j).select("span").get(2).text());
          } catch (Exception e) {
            StringWriter stringWriter = new StringWriter();
            e.printStackTrace(new PrintWriter(stringWriter,true));
            logger.error("错误信息："+stringWriter.toString());
          }
          guoguoBookNameDAO.insert(guoguoBookName);
          try {
            String attr = select.get(j).select("span").get(0).select("a").attr("href");
            getChapter(urlAll+attr, guoguoBookName);
          } catch (Exception e) {
            StringWriter stringWriter = new StringWriter();
            e.printStackTrace(new PrintWriter(stringWriter,true));
            logger.error("错误信息："+stringWriter.toString());
          }
        }
      }




    return "list";
  }

  @RequestMapping("/index")
  public String index() {

    logger.info("111111111");
    return "login";
  }

  @RequestMapping("/login")
  public String login(User user, HttpServletRequest request) {
    User loginUser = userService.login(user);
    if (loginUser != null) {
      request.getSession().setAttribute("currentUser",loginUser);
      UsernamePasswordToken token = new UsernamePasswordToken(loginUser.getUsername(), loginUser.getPassword());

      Subject subject = SecurityUtils.getSubject(); // 获取Subject单例对象
      subject.login(token); // 登陆




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

  @RequestMapping("/doLogin")
  public String doLogin() {
    Subject subject = SecurityUtils.getSubject();
    subject.logout();
    return "login";
  }




  public void getChapter(String url, GuoguoBookName guoguoBookName){

    try {
      Document document = Jsoup.connect(url).ignoreContentType(true).get();

      for (int i =1; i< document.select("table.acss").select("td").size(); i++){
        GuoguoChapter guoguoChapter = new GuoguoChapter();

        String text = document.select("table.acss").select("td").get(i).select("a").text();

        logger.info(text);
        String attr = document.select("table.acss").select("td").get(i).select("a").attr("href");
        String gettext = gettext(urlAll+attr);
        guoguoChapter.setGuoguoName(guoguoBookName.getGuoguoName());
        guoguoChapter.setGuoguoChapter(guoguoBookName.getGuoguoChapter());
        guoguoChapter.setGuoguoAuthor(guoguoBookName.getGuoguoAuthor());
        guoguoChapter.setGuoguoChapter(text);
        guoguoChapter.setGuoguoContent(gettext);
        guoguoChapterDAO.insert(guoguoChapter);

      /*  Thread.sleep(1000);*/
      }





    } catch (IOException e) {
      StringWriter stringWriter = new StringWriter();
      e.printStackTrace(new PrintWriter(stringWriter,true));
      logger.error("错误信息："+stringWriter.toString());
      e.printStackTrace();
    }catch (Exception e){

      StringWriter stringWriter = new StringWriter();
      e.printStackTrace(new PrintWriter(stringWriter,true));
      logger.error("错误信息："+stringWriter.toString());
    }

  }


  public String gettext(String url){

    String content = null;

    try {
      System.out.println("url:::::::"+url);
      Document document = Jsoup.connect(url).ignoreContentType(true).get();

      content = document.getElementById("content").toString();

    } catch (IOException e) {
      StringWriter stringWriter = new StringWriter();
      e.printStackTrace(new PrintWriter(stringWriter,true));
      logger.error("错误信息："+stringWriter.toString());
    }catch (Exception e){
      StringWriter stringWriter = new StringWriter();
      e.printStackTrace(new PrintWriter(stringWriter,true));
      logger.error("错误信息："+stringWriter.toString());
    }
    return content;
  }
}
