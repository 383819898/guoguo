
import com.guoguo.dao.BookDAO;
import com.guoguo.dao.GuoguoBookNameDAO;
import com.guoguo.dao.GuoguoChapterDAO;
import com.guoguo.dao.IUserDao;
import com.guoguo.entity.Book;
import com.guoguo.entity.GuoguoBookName;
import com.guoguo.entity.GuoguoChapter;
import com.guoguo.entity.User;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * PACKAGE_NAME
 * 作者      : 陈晓
 * 描述      :
 * 创建日期  : 2017/12/5
 * 修改日期  :
 */

@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath*:spring-mvc.xml","classpath*:spring-mybatis.xml"})
@WebAppConfiguration("src/main/resources")
public class TestMybatis {

 /* private static Logger logger = LoggerFactory.getLogger(TestMybatis.class);*/

    Logger logger = LoggerFactory.getLogger(TestMybatis.class);
    String urlAll ="http://www.baoliny.com";
/*  @Autowired
  private IUserDao dao;*/


    @Autowired
    private GuoguoBookNameDAO guoguoBookNameDAO;

    @Autowired
    private GuoguoChapterDAO guoguoChapterDAO;



    @Autowired
    private BookDAO bookDAO;

/*    @Test
    public void testSelectUser() throws Exception {
        GuoguoBookName guoguoBookName = new GuoguoBookName();

        guoguoBookName.setGuoguoAuthor("3123");

        guoguoBookNameDAO.insert(guoguoBookName);


  }*/

 //   @Test
    public void getPage(){

        try {

            for (int i=1;i<=1260; i++){

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

                    guoguoBookNameDAO.insert(guoguoBookName);
                    String attr = select.get(j).select("span").get(0).select("a").attr("href");
                    getChapter(urlAll+attr, guoguoBookName);
                }
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

    }



    public void getChapter(String url, GuoguoBookName guoguoBookName){

        try {
            Document document = Jsoup.connect(url).ignoreContentType(true).get();

            for (int i =1; i< document.select("table.acss").select("td").size(); i++){
                GuoguoChapter guoguoChapter = new GuoguoChapter();

                String text = document.select("table.acss").select("td").get(i).select("a").text();

                String attr = document.select("table.acss").select("td").get(i).select("a").attr("href");
                String gettext = gettext(urlAll+attr);
                guoguoChapter.setGuoguoName(guoguoBookName.getGuoguoName());
                guoguoChapter.setGuoguoChapter(guoguoBookName.getGuoguoChapter());
                guoguoChapter.setGuoguoAuthor(guoguoBookName.getGuoguoAuthor());
                guoguoChapter.setGuoguoChapter(text);
                guoguoChapter.setGuoguoContent(gettext);
                guoguoChapterDAO.insert(guoguoChapter);

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




    @Test
    public  void getTXTALL(){
        //21756


        for (int i= 1; i<= 1696 ;i++){
            List<String> list = new ArrayList<String>();
            Document document = null;
            String url = null;
            try {


                url = "https://www.qidian.com/all?chanId=1&orderId=&style=2&pageSize=50&siteid=1&pubflag=0&hiddenField=0&page="+i;
                document = Jsoup.connect(url).ignoreContentType(true).get();


            } catch (IOException e) {
                e.printStackTrace();
                logger.error(url);
            }catch (Exception e1){
                e1.printStackTrace();
                logger.error(url);
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
                    book.setPage(i);
                    book.setType("奇幻");
                    book.setType1("东方玄幻");
                    book.setDatatime(new Date());
                    try{
                        bookDAO.insert(book);
                    }catch (Exception e){
                        e.getStackTrace();

                    }

                }


            }
            //    System.out.println(document)
        }

    }
}
