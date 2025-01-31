package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerLoginDAO {
	public CustomerBean checkCustomerLogin(String cUsername,String cPassword) {
		CustomerBean cbean=null;
		try 
		{
			Connection con = DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("Select * from customer where uname=? and pword=?");
			pstmt.setString(1, cUsername);
			pstmt.setString(2, cPassword);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				cbean = new CustomerBean();
				cbean.setcUname(rs.getString(1));
				cbean.setcPword(rs.getString(2));
				cbean.setcFname(rs.getString(3));
				cbean.setcLname(rs.getString(4));
				cbean.setcAddress(rs.getString(5));
				cbean.setcMid(rs.getString(6));
				cbean.setcMobile(rs.getString(7));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return cbean;
		
	}
	
}
