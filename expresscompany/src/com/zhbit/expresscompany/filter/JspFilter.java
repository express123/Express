package com.zhbit.expresscompany.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class JspFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest httpServletRequest = (HttpServletRequest) arg0;  
		HttpServletResponse httpServletResponse = (HttpServletResponse) arg1;
		RequestDispatcher dispatcher = arg0.getRequestDispatcher("/page/foreground/login.jsp");
		HttpSession session =httpServletRequest.getSession(true);
		 
		//从session 里面获取用户名的信息
	
		String user =(String)session.getAttribute("user");
		 
		//判断如果没有取到用户信息，就跳转到登陆页面，提示用户进行登陆
		 
		if(user == null || "".equals(user)){
		 
		//跳转到登陆的页面，进行用户登录
		 
		dispatcher.forward(arg0,arg1);
		 
		System.out.println("用户没有登录，请登陆！");
		 
		}else{
		 
		System.out.println("用户已经登陆成功，允许继续操作！");
		 
		}
		 
		arg2.doFilter(arg0,arg1);
		 
	}
	

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
