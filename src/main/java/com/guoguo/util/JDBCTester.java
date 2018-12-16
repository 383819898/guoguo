package com.guoguo.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class JDBCTester {
    public static void main(String []args) {
        jav jav =new jav();
        jav.setName("name");
        jav.setSize("");
        jav.setPopularity("31231");
        jav.setMagnetic_chain("21312");
        jav.setMagnetic_chain_type("21312");
        jav.setName_one("one");
        jav.setName_two("two");
        jav.setPage("two");
        jav.setPage("tr_text");
        jav.setTr_text("tr_text");


        jav.setL_name("tr_text");
        jav.setL_pianshang("tr_text");
        jav.setL_biaoqian("tr_text");
        jav.setL_fanhao("tr_text");
        jav.setL_faxingriqi("tr_text");
        jav.setL_bofangshichang("tr_text");
        jav.setL_zang("tr_text");
        jav.setL_xilie("tr_text");

        insert(jav);
    }



    private static Connection getConn() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            // The newInstance() call is a work around for some
            // broken Java implementations

            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("加载成功");
        } catch (Exception ex) {
            System.out.println("加载失败");
            // handle the error
        }

        try {
            conn =
                    DriverManager.getConnection("jdbc:mysql://localhost/jav?serverTimezone=UTC","root","lp113211");

            System.out.println("连接成功");
    /*        ps = conn.prepareStatement("select name from jav;");
            rs = ps.executeQuery();
            while(rs.next()) {
                int num = rs.getInt("num");
                String name = rs.getString("name");
                System.out.print(num+"\t"+name);
                System.out.println("");
            }*/



        } catch (SQLException ex) {
            // handle any errors
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: " + ex.getErrorCode());
            System.out.println("连接失败");
        }

        return  conn;
    }

    public static int insert(jav jav) {
        Connection conn = getConn();
        int i = 0;
        String sql = "insert into jav_all (name,size,popularity,magnetic_chain,magnetic_chain_type,name_one,name_two,page,tr_text," +
                "l_name,l_pianshang,l_biaoqian,l_fanhao,l_faxingriqi,l_bofangshichang,l_zang,l_xilie) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            pstmt.setString(1, jav.getName());
            pstmt.setString(2, jav.getSize());
            pstmt.setString(3, jav.getPopularity());
            pstmt.setString(4, jav.getMagnetic_chain());
            pstmt.setString(5, jav.getMagnetic_chain_type());
            pstmt.setString(6, jav.getName_one());
            pstmt.setString(7, jav.getName_two());
            pstmt.setString(8, jav.getPage());
            pstmt.setString(9, jav.getTr_text());

            pstmt.setString(10, jav.getL_name());
            pstmt.setString(11, jav.getL_pianshang());
            pstmt.setString(12, jav.getL_biaoqian());
            pstmt.setString(13, jav.getL_fanhao());
            pstmt.setString(14, jav.getL_faxingriqi());
            pstmt.setString(15, jav.getL_bofangshichang());
            pstmt.setString(16, jav.getL_zang());
            pstmt.setString(17, jav.getL_xilie());
            i = pstmt.executeUpdate();
            pstmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }




}
