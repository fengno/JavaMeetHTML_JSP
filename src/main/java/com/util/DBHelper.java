package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBHelper {
	// 数据库驱动
	private static final String driver = "com.mysql.jdbc.Driver";
	// 连接数据库的URL地址
	private static final String url = "jdbc:mysql://localhost:3306/imooc?useUnicode=true&characterEncoding=UTF8";
	private static final String username = "root";
	private static final String password = "root";
	
	private static Connection conn = null;
	
	// 静态代码块负责加载驱动
	static {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 单例模式返回数据库连接对象
	public static Connection getConnection() throws SQLException {
		if (conn == null) {
			conn = DriverManager.getConnection(url, username, password);
		}
		return conn;
	}
	
	public static void main(String[] args) {
		try {
			Connection conn = getConnection();
			if (conn != null) {
				System.out.println("数据库连接正常");
			} else {
				System.out.println("数据库连接异常");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
