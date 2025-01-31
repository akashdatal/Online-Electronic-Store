package com.pack1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.print.DocFlavor.STRING;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/buyproduct")
public class UpdateProductCustomerServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int mprize=0;
		HttpSession session = req.getSession(false);
		if(session==null) {
			req.setAttribute("msg", "Session Expired");
			RequestDispatcher rd =req.getRequestDispatcher("CustomerLogin.html");
			rd.forward(req, res);
		}
		else
		{
			String pcode= req.getParameter("pCode");
			ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("ProductsList");
			ProductBean pb= null;
			Iterator<ProductBean> i= al.iterator();
			while(i.hasNext()) {
				pb=i.next();
				if(pcode.equals(pb.getpCode()))
				{
					break;
				}
			}
			
				pb.setpCode(req.getParameter("pCode"));
				pb.setpName(req.getParameter("pName"));
				pb.setpCompany(req.getParameter("pCompany"));
				int iprize = Integer.parseInt(req.getParameter("pPrice"));
				pb.setpQuantity(req.getParameter("ReqQty"));
				
				
				int b=Integer.parseInt(req.getParameter("ReqQty"));			
				int a=Integer.parseInt(req.getParameter("pQty"));
				
				if(a>=b) {
				int c=iprize/a;
				 mprize=c*b;
				int currentPrice = iprize-mprize;
				
				int qun=a-b;
				String Qun=String.valueOf(qun);
				String cPrice=String.valueOf(currentPrice);
				pb.setpPrice(cPrice);
				pb.setpQuantity(Qun);
				}
				else {
					pb.setpQuantity(req.getParameter("pQty"));
					pb.setpPrice(req.getParameter("pPrice"));
					req.setAttribute("msg", "only "+pb.getpQuantity()+" Products are Available");
					RequestDispatcher rd=req.getRequestDispatcher("ViewProduct.jsp");
					rd.forward(req, res);
				}
				int rowCount = new UpdateCustomerProductServletDAO().updateCustomerProduct(pb);
				
				if(rowCount >0) {
					req.setAttribute("msg2", "You Have charged "+mprize+"/rs");
					req.setAttribute("msg", "Product Details Updated!!!");
					RequestDispatcher rd=req.getRequestDispatcher("OrderConfirmed.jsp");
					rd.forward(req, res);
					//req.getRequestDispatcher("UpdateProduct.jsp").forward(req, res);;
				}
			
			
		}
	}
}
