package com.guoguo.util;

import java.io.*;
import java.util.*;

public class Utils {

    /**
     *
     * @Title: printAllProperty
     * @Description: 输出所有配置信息
     * @param props
     * @return void
     * @throws
     */
    private static void printAllProperty(Properties props)
    {
        @SuppressWarnings("rawtypes")
        Enumeration en = props.propertyNames();
        while (en.hasMoreElements())
        {
           String key = (String) en.nextElement();
    String value = props.getProperty(key);
            System.out.println(key + " : " + value);
}
    }


    /**
     *
     * @Title: printAllProperty
     * @Description: list 返回 Key所有配置信息
     * @param prop
     * @return void
     * @throws
     */
    public static HashMap<String ,String> printAllPropertyList(String filePath)
    {
        Properties prop = new Properties();
        try {
            // 通过输入缓冲流进行读取配置文件
            InputStream inputStream = Utils.class.getResourceAsStream(filePath);
            // 加载输入流
            prop.load(inputStream);
        } catch (Exception e) {
            e.printStackTrace();
        }


        @SuppressWarnings("rawtypes")
        Enumeration en = prop.propertyNames();
        HashMap<String, String> map = new HashMap<String, String>();



        while (en.hasMoreElements())
        {

            String key = (String) en.nextElement();
            String value = prop.getProperty(key);
            map.put(key,value);

        }




        return map;
    }

    /**
     * 读取配置文件所有信息
     *
     * @Title: getProperties_2
     * @Description: 第二种方式：使用缓冲输入流读取配置文件，然后将其加载，再按需操作
     *                    绝对路径或相对路径， 如果是相对路径，则从当前项目下的目录开始计算，
     *                  如：当前项目路径/config/config.properties,
     *                  相对路径就是config/config.properties
     *
     * @param filePath
     * @return void
     * @throws
     */
    public static void getProperties_2(String filePath){
        Properties prop = new Properties();
        try {
            // 通过输入缓冲流进行读取配置文件
            InputStream inputStream = Utils.class.getResourceAsStream(filePath);
            // 加载输入流
            prop.load(inputStream);
            printAllProperty(prop);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {

        HashMap<String, String> map = printAllPropertyList("/TXTURL.properties");

        System.out.println(map);
 /*       Properties properties = new Properties();
        InputStream inputStream = Utils.class.getResourceAsStream("/TXTURL.properties");
        try {
            properties.load(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(inputStream);

        String url = properties.getProperty("url");
        System.out.println(url);
        String username = properties.getProperty("test.db.username");
        String password = properties.getProperty("test.db.password");*/

    }
}
