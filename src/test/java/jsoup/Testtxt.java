package jsoup;

import com.guoguo.entity.GuoguoBookName;
import com.guoguo.entity.GuoguoChapter;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.util.Map;

public class Testtxt {
    String url ="http://www.baoliny.com";
    Logger logger = LoggerFactory.getLogger(Testtxt.class);
   // @Test
    public void getbaiduTXT(){

        try {
            Document document = Jsoup.connect("http://www.baoliny.com/").ignoreContentType(true).get();
            Elements select = document.select("div.nav ul li");
            System.out.println(select.size());


            System.out.println(select);
        } catch (IOException e) {
            e.printStackTrace();
        }catch (Exception e){

        }

    }

   @Test
    public void getPage(){

        try {

            for (int i=1260;i<=1260; i++){

                GuoguoBookName guoguoBookName  = new GuoguoBookName();
                Document document = Jsoup.connect("http://www.baoliny.com/sort_1_"+i+".html").ignoreContentType(true).get();

                Elements select = document.select("div.l ul li");

                System.out.println(select.get(0).select("span"));
                for (int j=0; j<select.size(); j++) {

                    guoguoBookName.setGuoguoName(select.get(j).select("span").get(0).text());

                    guoguoBookName.setGuoguoChapter(select.get(j).select("span").get(1).text());
                    guoguoBookName.setGuoguoAuthor(select.get(j).select("span").get(2).text());
        /*            System.out.println(guoguoBookName.toString());
                    System.out.println(document.select("div.l ul li").size());*/
                    String attr = select.get(j).select("span").get(0).select("a").attr("href");
                    getChapter(url+attr, guoguoBookName);
                }
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    //@Test
    public void getChapter(String url, GuoguoBookName guoguoBookName){

        try {
            Document document = Jsoup.connect(url).ignoreContentType(true).get();

            for (int i =1; i< document.select("table.acss").select("td").size(); i++){
                GuoguoChapter guoguoChapter = new GuoguoChapter();

                String text = document.select("table.acss").select("td").get(i).select("a").text();
                logger.info(text);
                String attr = document.select("table.acss").select("td").get(i).select("a").attr("href");
                String gettext = gettext(attr);
                guoguoChapter.setGuoguoName(guoguoBookName.getGuoguoName());
                guoguoChapter.setGuoguoChapter(guoguoBookName.getGuoguoChapter());
                guoguoChapter.setGuoguoAuthor(guoguoBookName.getGuoguoAuthor());
                guoguoChapter.setGuoguoChapter(text);
                guoguoChapter.setGuoguoContent(gettext);


            }





        } catch (IOException e) {
            e.printStackTrace();
        }

    }

  //  @Test
    public String gettext(String url){

        String content = null;

        try {
            Document document = Jsoup.connect("http://www.baoliny.com/133778/index.html").ignoreContentType(true).get();

            content = document.getElementById("content").toString();

        } catch (IOException e) {
            e.printStackTrace();
        }
        return content;
    }

    @Test
    public String gettext(){

        String content = null;

        try {
            Document document = Jsoup.connect("http://www.baoliny.com/133778/index.html").ignoreContentType(true).get();

            content = document.getElementById("content").toString();

        } catch (IOException e) {
            e.printStackTrace();
        }
        return content;
    }





}
