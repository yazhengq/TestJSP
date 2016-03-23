package com.gdut.bean;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletToJSP extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=gb2312");
		req.setAttribute("servletName", "ServletToJSP");
		getServletConfig().getServletContext().getRequestDispatcher("/ServletUseJSP.jsp").forward(req, resp);
	}
	
}
