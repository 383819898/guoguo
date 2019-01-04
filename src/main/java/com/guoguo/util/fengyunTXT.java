package com.guoguo.util;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class fengyunTXT {

    private  static String url ="http://www.baoliny.com";
    //获取分类
    public static List<String> getClassification(){

        List<String> list = new ArrayList<String>();



        Document document = null;
        try {

            document = Jsoup.connect("http://www.baoliny.com/").ignoreContentType(true).get();

        } catch (IOException e) {
            e.printStackTrace();
        }
        if (document != null){
            Elements select = document.select("div.nav ul li");

            System.out.println(select);
            System.out.println(select.getClass());
            System.out.println();
        }
    //    System.out.println(document);
        Elements select = document.select("div.nav ul li");


        return list;
    }


    public static void main(String[] args) {


        List<String> classification = getClassification();

        System.out.println(classification);

    }

}
