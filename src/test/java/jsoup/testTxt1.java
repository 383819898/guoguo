package jsoup;

import com.guoguo.entity.GuoguoBookName;
import com.guoguo.entity.GuoguoChapter;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;

public class testTxt1 {

    Logger logger = LoggerFactory.getLogger(testTxt1.class);
    String urlAll ="http://www.baoliny.com";


    @Test
    public void getChapter(){

        String url ="http://www.baoliny.com/133778/index.html";
        try {
            Document document = Jsoup.connect(url).ignoreContentType(true).get();

            for (int i =1; i< document.select("table.acss").select("td").size(); i++){
                GuoguoChapter guoguoChapter = new GuoguoChapter();

                String text = document.select("table.acss").select("td").get(i).select("a").text();
                logger.info(text);
                String attr = document.select("table.acss").select("td").get(i).select("a").attr("href");
                String gettext = gettext(urlAll+attr);
   /*             guoguoChapter.setGuoguoName(guoguoBookName.getGuoguoName());
                guoguoChapter.setGuoguoChapter(guoguoBookName.getGuoguoChapter());
                guoguoChapter.setGuoguoAuthor(guoguoBookName.getGuoguoAuthor());*/
                guoguoChapter.setGuoguoChapter(text);
                guoguoChapter.setGuoguoContent(gettext);
         //       guoguoChapterDAO.insert(guoguoChapter);

            }





        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    public String gettext(String url){

        String content = null;

        try {
            System.out.println("url:::::::"+url);
            Document document = Jsoup.connect(url).ignoreContentType(true).get();

            content = document.getElementById("content").toString();

        } catch (IOException e) {
            e.printStackTrace();
        }
        return content;
    }




}
