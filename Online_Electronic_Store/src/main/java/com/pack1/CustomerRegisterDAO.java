package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CustomerRegisterDAO {
	public int insertData(CustomerBean cb) 
	{
		int rowCount =0;
		try {
		Connection con = DBConnect.getCon();
		PreparedStatement pstmt = con.prepareStatement("insert into customer values(?,?,?,?,?,?,?)");
		
		pstmt.setString(1, cb.getcUname());
		pstmt.setString(2, cb.getcPword());
		pstmt.setString(3, cb.getcFname());
		pstmt.setString(4, cb.getcLname());
		pstmt.setString(5, cb.getcAddress());
		pstmt.setString(6, cb.getcMid());
		pstmt.setString(7, cb.getcMobile());
		
		rowCount = pstmt.executeUpdate();
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}
