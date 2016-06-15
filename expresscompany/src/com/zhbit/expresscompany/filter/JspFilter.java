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
		 
		//��session �����ȡ�û�������Ϣ
	
		String user =(String)session.getAttribute("user");
		 
		//�ж����û��ȡ���û���Ϣ������ת����½ҳ�棬��ʾ�û����е�½
		 
		if(user == null || "".equals(user)){
		 
		//��ת����½��ҳ�棬�����û���¼
		 
		dispatcher.forward(arg0,arg1);
		 
		System.out.println("�û�û�е�¼�����½��");
		 
		}else{
		 
		System.out.println("�û��Ѿ���½�ɹ����������������");
		 
		}
		 
		arg2.doFilter(arg0,arg1);
		 
	}
	

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
