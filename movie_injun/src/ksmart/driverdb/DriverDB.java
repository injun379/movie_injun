package ksmart.driverdb;

import java.io.*;
import java.sql.*;
import java.util.Properties;


public class DriverDB {
	
	private String url;
	private String user;
	private String password;
	private String driver;
	
	// db���� ������ �ִ� properties ���� ���� ��������
	
	public void dbPropertiesInit() throws IOException{
		FileInputStream fis = new FileInputStream("d:\\db.properties");
		Properties pro = new Properties();
		pro.load(fis);
        this.url = pro.getProperty("url");
        this.user = pro.getProperty("user");
        this.password = pro.getProperty("password");
        this.driver = pro.getProperty("driver");
        System.out.println("url = "+url);
        System.out.println("user = "+user);
        System.out.println("password = "+password);
        System.out.println("driver = "+driver);
	}

	public Connection getConnection() throws SQLException, ClassNotFoundException, IOException{
		Connection conn = null;
		this.dbPropertiesInit();
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, password);
		
		return conn;
	}
}
