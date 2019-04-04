package com.guoguo.util;

import com.guoguo.entity.BookChapter;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.IOException;
import java.util.ArrayList;

import static com.guoguo.util.Utils.getProperties_2;

public class TxtUtil {


    public static ArrayList<BookChapter> analysis(String book){
     //   ArrayList<String> list = Utils.printAllPropertyList("/TXTURL.properties");

     /*   for (String url:list
             ) {

            Document document = null;
            try {
                url+=book;
                document = Jsoup.connect(url).ignoreContentType(true).get();

            } catch (IOException e) {

                e.printStackTrace();

            }
            String s = document.toString();
            int i = s.indexOf(book);
            System.out.println(i);



        }*/


        return null;
    }


    public static ArrayList<String> getChapter(String bookName){

        ArrayList<String> list  = new ArrayList<String>();

        String url ="https://www.baidu.com/s?tn=91614996_hao_pg&wd="+bookName;

        Document document = null;
        try {
            document = Jsoup.connect(url).ignoreContentType(true).get();

        } catch (IOException e) {

            e.printStackTrace();

        }


        return list;
    }

    public static void main(String[] args) {

        analysis("诸神黄昏");

   //     System.out.println(getProperties_2("/"));

     //   getChapter("小妖别跑");



    }

}
