package com.pack1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/crs")
public class CustomerRegisterServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session =req.getSession();
		if(session==null) {
			req.setAttribute("msg", "Session Expired");
			RequestDispatcher rd = req.getRequestDispatcher("CustomerLogin.html");
			rd.forward(req, res);
		}
		else
		{			
			CustomerBean cbean =new CustomerBean();
			cbean.setcUname(req.getParameter("cname"));
			cbean.setcPword(req.getParameter("cpwd"));
			cbean.setcFname(req.getParameter("cfname"));
			cbean.setcLname(req.getParameter("clname"));
			cbean.setcAddress(req.getParameter("caddr"));
			cbean.setcMid(req.getParameter("cmid"));
			cbean.setcMobile(req.getParameter("cmbn"));
			
			int rowCount = new CustomerRegisterDAO().insertData(cbean);
			
			if(rowCount >0 )
			{
				req.setAttribute("msg", "Product Details Added Succesfully");
				RequestDispatcher rd = req.getRequestDispatcher("CustomerLogin.html");
				rd.forward(req, res);
		
			}
			
		}
	}
}
