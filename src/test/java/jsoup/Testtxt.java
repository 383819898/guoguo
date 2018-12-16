package jsoup;

import com.guoguo.entity.GuoguoBookName;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.junit.Test;

import java.io.IOException;
import java.util.Map;

public class Testtxt {

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


    /*        <li><a href="http://www.baoliny.com/">首页</a></li>
<li><a href="/modules/article/bookcase.php">我的书架</a></li>
<li><a href="http://www.baoliny.com/sort_1_1.html">玄幻小说</a></li>
<li><a href="http://www.baoliny.com/sort_2_1.html">武侠小说</a></li>
<li><a href="http://www.baoliny.com/sort_3_1.html">都市小说</a></li>
<li><a href="http://www.baoliny.com/sort_4_1.html">穿越小说</a></li>
<li><a href="http://www.baoliny.com/sort_5_1.html">网游小说</a></li>
<li><a href="http://www.baoliny.com/sort_6_1.html">科幻小说</a></li>
<li><a href="http://www.baoliny.com/sort_7_1.html">其他小说</a></li>
<li><a href="http://www.baoliny.com/lastupdate_1.html">更新列表</a></li>*/
   // @Test
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
                    System.out.println(guoguoBookName.toString());
                    System.out.println(document.select("div.l ul li").size());
                }
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

    }

//    @Test
    public void getChapter(){

        try {
            Document document = Jsoup.connect("http://www.baoliny.com/489/index.html").ignoreContentType(true).get();


            System.out.println(document.select("table.acss").select("td"));

        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @Test
    public void gettext(){


        try {
            Document document = Jsoup.connect("http://www.baoliny.com/489/322922.html").ignoreContentType(true).get();

            System.out.println(document);

        } catch (IOException e) {
            e.printStackTrace();
        }

    }

 //   @Test
    public void testhttp(){


            try {
                Connection conn = Jsoup.connect("http://www.baoliny.com/489/322922.html");
                conn.header("Host","xueqiu.com");
                conn.header("Connection","keep-alive");
                conn.header("Cache-Control","max-age=0");
                conn.header("Upgrade-Insecure-Requests","1");
                conn.header("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36");
                conn.header("Accept","text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8");
//          conn.header("Accept-Encoding","gzip, deflate, sdch, br");
                conn.header("Accept-Language","zh-CN,zh;q=0.8");
                conn.header("Cookie",returnCookies());
                conn.method(Connection.Method.GET);
                conn.followRedirects(false);
                conn.ignoreContentType(true);
                Connection.Response response = conn.execute();
                String body = response.body();
                System.out.println(body);
            } catch (IOException e) {
                e.printStackTrace();
            }


    }
    public static  final String returnCookies() {

        try {
            Connection conn = Jsoup.connect("http://www.baoliny.com");
            conn.method(Connection.Method.GET);
            conn.followRedirects(false);
            Connection.Response response;
            response = conn.execute();
            Map<String, String> getCookies = response.cookies();
            String Cookie = getCookies.toString();
            Cookie = Cookie.substring(Cookie.indexOf("{")+1, Cookie.lastIndexOf("}"));
            Cookie = Cookie.replaceAll(",", ";");
            return Cookie;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;

    }


}
