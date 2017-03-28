package com.httpservlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.MessageFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/**
		 * 获取客户端提交的信息
		 */
		System.out.println(request.getMethod() + "======");
		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username");
		System.out.println(username);

		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type", "text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.write("用户名：");
		out.write(username);
		out.write("<br>");
		String[] ints = request.getParameterValues("ints");
		out.write("爱好：");
		for (String ins : ints) {
			out.write(ins + ",");
		}

		out.write("<br>");
		Enumeration<String> enumeration = request.getParameterNames();
		while (enumeration.hasMoreElements()) {// 多种同类型参数会获取不全
			String element = enumeration.nextElement();
			out.write(request.getParameter(element) + "<br>");
		}

		out.write("<br>");
		Map<String, String[]> map = request.getParameterMap();
		for (Entry<String, String[]> entry : map.entrySet()) {
			String key = entry.getKey();
			out.write(key + ":");
			String[] values = entry.getValue();
			for (String value : values) {
				if (values.length > 1) {
					out.write(value + ",");
				} else {
					out.write(value + "<br>");
				}
			}
			System.out.println(MessageFormat.format("{0}={1}", key, values));
		}
		
		request.setAttribute("data", username);
//		response.sendRedirect("http://www.baidu.com");//跳转外面跳转
//		getServletContext().getRequestDispatcher("/hello.jsp").forward(request, response);//内部跳转
		request.getRequestDispatcher("/hello.jsp").forward(request, response);//内部跳转
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	public void test() throws IOException {
		System.out.println("fdkfdklf");
	}

	public static void main(String[] args) {
		Object[] arguments = { new Integer(6), new Date(System.currentTimeMillis()), "a disturbance in the Force" };
		String result = MessageFormat.format("At {1,time} on {1,date}, there was {2} on planet {0,number,integer}.",
				arguments);
		System.out.println(result);
		System.out.println (MessageFormat.format("My age is {0},I was borm at {1,number,integer}.", 26, 1979));
	}
}
