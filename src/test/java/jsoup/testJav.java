package jsoup;

import com.guoguo.util.JDBCTester;
import com.guoguo.util.jav;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;

public class testJav {

    private static String url="https://www.jav321.com";
    Logger logger = LoggerFactory.getLogger(testJav.class);
    @Test
    public void get() throws IOException {

            for (int j=64 ;j<70;j++){
                logger.info(url+"/genre/4008/"+j);
                logger.info("===================================第"+j+"页开始========================================");
                Document document = Jsoup.connect(url+"/genre/4008/"+j).ignoreContentType(true).get();
                Elements select = document.select("div.col-xs-6");
                //Elements select = document.select("img.img-responsive");

                for (int i=0;i<select.size();i++){
                    //   select.get(i).select("img.img-responsive");
                    System.out.println(url+""+select.get(i).select("a").attr("href"));
                      getbt(url+""+select.get(i).select("a").attr("href"),j+"");
                    //   System.out.println(select.attr("src"));
                }

            }

        }



   // @Test
    public void getbt(String url,String page) throws IOException {


        Document document = Jsoup.connect(url).ignoreContentType(true).get();
        System.out.println("===============================================");
        Elements select = document.select("table.table-striped");




        for (int i=0; i < select.size();i++){

            Elements tr = select.get(i).select("tr");

            for (int j=1; j<tr.size();j++){
                String attr = tr.get(j).select("a").attr("href");
                String a = tr.get(j).select("a").toString();
              //  String Popularity = tr.get(j).select("td");
                Elements td1 = tr.get(j).select("td");
                logger.info(attr);
                jav jav =new jav();
                jav.setName(td1.get(0).text());
                jav.setSize(td1.get(1).text());
                jav.setPopularity(td1.get(2).text());
                jav.setMagnetic_chain(attr);
                jav.setMagnetic_chain_type(tr.get(0).select("th").get(0).text());
                jav.setName_one(url);
                jav.setName_two("恋腿");
                jav.setPage(page);
                jav.setTr_text(a);

                logger.info(jav.toString());

                JDBCTester.insert(jav);
            }
       //     System.out.println(tr);

        }


    }


}
