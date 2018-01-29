package com.jnmd.liuwan.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class Test {

	public static void main(String[] args) throws Exception {
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/liuwan";
		String name = "root";
		String pwd = "root";
		
		Class.forName(driver);
		
		Connection conn = DriverManager.getConnection(url, name, pwd);
		PreparedStatement pstat = conn.prepareStatement("select * from busmessage");
		ResultSet rs = pstat.executeQuery();
		while(rs.next()){
			System.out.println(rs.getInt("bus_id"));
		}
		
		
		 /*Calendar calendar = Calendar.getInstance();
		 calendar.set(Calendar.HOUR_OF_DAY, calendar.get(Calendar.HOUR_OF_DAY) + 1);
		 String times=new SimpleDateFormat("yyyy-MM-ddHH").format(calendar.getTime());
		 System.out.println(times);
		 String times1=times.substring(0,times.length()-2);
		 String times2=times.substring(times.length()-2);
		 System.out.println(times1);
		 System.out.println(times2);*/
		 
		 Date date=new Date();//取时间
	      Calendar calendar = new GregorianCalendar();
	      calendar.setTime(date);
	      calendar.add(calendar.DATE,1);//把日期往前减少一天，若想把日期向后推一天则将负数改为正数
	      date=calendar.getTime(); 
	     SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	     String dateString = formatter.format(date);
	     System.out.println(dateString);
	}

}
