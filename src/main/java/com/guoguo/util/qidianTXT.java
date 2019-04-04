package com.guoguo.util;

import com.guoguo.entity.Book;
import com.guoguo.entity.Books;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

public class qidianTXT {

  /*  @Autowired
    private BookDAO bookDAO;*/


    Logger logger = LoggerFactory.getLogger(qidianTXT.class);
    private  static String url ="https://book.qidian.com/info/1013687425";

    //获取分类
    public static List<String> getClassification(){

        List<String> list = new ArrayList<String>();
        Document document = null;
        try {

            document = Jsoup.connect(url).ignoreContentType(true).get();

        } catch (IOException e) {
            e.printStackTrace();
        }
        if (document != null){
            System.out.println(document.select("dl.cf"));
        }
        //    System.out.println(document)


        return list;
    }


    public static List<String> getTXTALL(){

        List<String> list = new ArrayList<String>();
        Document document = null;
        try {

            document = Jsoup.connect(url).ignoreContentType(true).get();



        } catch (IOException e) {
            e.printStackTrace();
        }
        if (document != null){
         //   System.out.println(document.select("tbody tr"));
            Elements tbody_tr = document.select("tbody tr");

            for (Element element:tbody_tr ) {
                Book book = new Book();
           /*     System.out.println(element.select("td").get(1).select("a").attr("data-bid"));
                System.out.println(element.select("td").get(1).text());
                System.out.println(element.select("td").get(4).text());*/
                String bookId = element.select("td").get(1).select("a").attr("data-bid");
                String name = element.select("td").get(1).text();
                String author = element.select("td").get(4).text();
                book.setBookId(Long.valueOf(bookId));
                book.setName(name);
                book.setAuthor(author);
        //        bookDAO.insert(book);


            }


        }
        //    System.out.println(document)


        return list;
    }



    public static Books getTXTContent(Long bookId){
        Books books = new Books();
        HashMap<String ,String> map = new HashMap<String ,String>();

        String url ="https://m.qidian.com/book/";
        url +=bookId;
        Document document = null;

        try {     document = Jsoup.connect(url).ignoreContentType(true).get();

            //評分

    //        System.out.println(document.select("div.book-score output span"));

            String score = document.select("div.book-score output span").text();

            //map.put("score",score);
            books.setScore(score);
            String img = document.select("img.book-cover").attr("src");

           // System.out.println("img:::::::::::"+document.select("img.book-cover").attr("src"));

//            map.put("img",img);
            books.setImg(img);
            //連載  字数
    //        System.out.println(document.select("div.book-detail-info div.book-cell p.book-meta").get(1).text());
            String text = document.select("div.book-detail-info div.book-cell p.book-meta").get(1).text();
            String[] split = text.split("\\|");
//            System.out.println(split.length);
//            System.out.println(split[0]);  //字数
//            System.out.println("连载".equals(split[1])?"0":"1"); //连载 0,为连载状态 1：完本
//            map.put("writtenWordsNums",split[0]);
//            map.put("updateType","连载".equals(split[1])?"0":"1");

            books.setWrittenwordsnums(split[0]);
            books.setUpdatetype("连载".equals(split[1])?"0":"1");
           // System.out.println(document.select("div.book-detail-info div.book-cell p.book-meta").get(1).text().split("|"));

            //更新情況  内容
            Elements select = document.select("div.module-merge");
            String[] ariaMuLus = select.get(1).getElementById("ariaMuLu").text().split("·");
            String textarea = select.get(1).select("textarea").text();//内容简介
//            System.out.println(ariaMuLus[0]);//更新时间
//            System.out.println(ariaMuLus[1]);//更新章数
//            System.out.println(textarea);//更新章数

         /*   map.put("content",textarea);
            map.put("updateTime",ariaMuLus[0]);
            map.put("updateChapter",ariaMuLus[1]);*/

            books.setContent(textarea);

            SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");

            if (ariaMuLus[0].indexOf("小时") !=-1 || ariaMuLus[0].indexOf("分钟") !=-1){

                books.setUpdatetime(new Date());
            }else if (ariaMuLus[0].indexOf("昨天") !=-1){
                Date date1 = new Date();
                Calendar cal1 = Calendar.getInstance();
                cal1.setTime(date1);
                String beforeDay = DateUtil.getBeforeDay(cal1);
//                System.out.println(beforeDay);

                books.setUpdatetime(DateUtil.strToDate(beforeDay));

            }else {

                books.setUpdatetime(DateUtil.strToDate(ariaMuLus[0]));
            }


            books.setUpdatechapter(ariaMuLus[1]);


            //月票    

            Element payTicketsX = document.getElementById("payTicketsX");

            String monthlyTicket = payTicketsX.select("span.month-ticket-cnt").text(); //月票
            String monthlyTicketRanking = payTicketsX.select("span.month-ticket-rank").text(); //月票排行
            String recommendedTicket = payTicketsX.select("span.recomm-ticket-cnt").text();//推荐票
            String recommendedTicketRanking = payTicketsX.select("span.recomm-ticket-rank").text();//推荐票排行
            String reward = payTicketsX.select("span.reward-week-cnt").text();//打赏
/*
            map.put("monthlyTicket",monthlyTicket);
            map.put("monthlyTicketRanking",monthlyTicketRanking);
            map.put("recommendedTicket",recommendedTicket);
            map.put("recommendedTicketRanking",recommendedTicketRanking);
            map.put("Reward",Reward);*/

            books.setMonthlyticket(monthlyTicket);
            books.setMonthlyticketranking(monthlyTicketRanking);
            books.setRecommendedticket(recommendedTicket);
            books.setRecommendedticketranking(recommendedTicketRanking);
            books.setReward(reward);


  /*          System.out.println(monthlyTicket);
            System.out.println(monthlyTicketRanking);
            System.out.println(recommendedTicket);
            System.out.println(recommendedTicketRanking);
            System.out.println(Reward);*/


        } catch (IOException e) {
            e.printStackTrace();
        }


        return books;
    }

    public static void main(String[] args) {
       // getClassification();
        Books txtContent = getTXTContent(new Long(1004179514));
        System.out.println(txtContent);
    }

}
