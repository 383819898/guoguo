package com.guoguo.util;

import com.guoguo.dao.BookDAO;
import com.guoguo.dao.GuoguoChapterDAO;
import com.guoguo.entity.Book;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class qidianTXT {

  /*  @Autowired
    private BookDAO bookDAO;*/


    Logger logger = LoggerFactory.getLogger(qidianTXT.class);
    private  static String url ="https://www.qidian.com/all?orderId=&style=2&pageSize=50&siteid=1&pubflag=0&hiddenField=0&page=1";

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


    public static void main(String[] args) {
       // getClassification();

        getTXTALL();
    }

}
