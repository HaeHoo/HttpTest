<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="s" uri="/struts-tags" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	request获取传递过来的数据,用户名：<%=(String)request.getAttribute("data") %>
	<br>
	EL表达式获取传递过来的数据,用户名：${data}
	<br>
	<%
		List<String> list = new ArrayList<String>();
		list.add("list1");
        list.add("list2");
        list.add("list3");
        list.add("list4");
        list.add("list5");
        list.add("list6");
        request.setAttribute("list", list);
	%>
	<c:forEach items="${list}" begin="0" step="2" var="ite">
		${ite }
	</c:forEach>
</body>
</html>