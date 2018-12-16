
import com.guoguo.dao.GuoguoBookNameDAO;
import com.guoguo.dao.IUserDao;
import com.guoguo.entity.GuoguoBookName;
import com.guoguo.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

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

/*  @Autowired
  private IUserDao dao;*/


    @Autowired
    private GuoguoBookNameDAO guoguoBookNameDAO;

    @Test
    public void testSelectUser() throws Exception {
        GuoguoBookName guoguoBookName = new GuoguoBookName();

        guoguoBookName.setGuoguoAuthor("3123");

        guoguoBookNameDAO.insert(guoguoBookName);


  }

//  @Test
    public void testlogic(){
      logger.info("logback 成功了1");
      logger.error("logback 成功了2");
      logger.debug("logback 成功了3");

     }
}
