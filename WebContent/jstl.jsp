<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	Hello JSTL标签：
	<br>
	<h2>表达式标签</h2>
	<c:out value="1+1" />
	<br>
	<c:out value="${1+1}" />
	<br>
	<c:out value="${user}" default="显示默认值" />
	<br>
	<c:out value="${user}">显示默认值</c:out>
	<br>
	<c:set var="name" value="设置变量"></c:set>
	<c:out value="${name}"></c:out>
	<br>
	<c:set var="age" value="22"></c:set>
	<c:remove var="age" />
	<c:out value="${age}" default="被移除了"></c:out>
	<br>
	<c:catch var="exception">
		<%
			int s = 8 / 0;
		%>
	</c:catch>
	<c:out value="异常是：${exception}"></c:out>
	<h2>条件标签</h2>
	<c:if test="${empty user}">
         user是空对象<br>
	</c:if>
	<c:if test="${1+1==2}" var="v">
       1+1=2
    </c:if>
	<br>
	<c:out value="条件是：${v}"></c:out>
	<br>
	<c:set var="i" value="9"></c:set>
	<c:choose>
		
		<c:when test="${i<5}">
          i小于5
      	</c:when>
		<c:when test="${i>5}">
          i大于5         
      	</c:when>
		<c:otherwise>
          i等于5
      	</c:otherwise>
	</c:choose>


	<h2>循环标签</h2>
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
	<c:if test="${!empty list}" var="tt"></c:if>
	<c:out value="${tt}"></c:out>
	<br>
	<c:out value="${list}"></c:out>
	<br>
	<c:forEach items="${list}" var="ite">
       ${ite} >>
    </c:forEach>
	<br>
	<c:forEach items="${list}" begin="3" end="5" var="ite">
       ${ite }>>
    </c:forEach>
	<br>
	<c:forEach items="${list}" begin="0" step="2" var="ite">
       ${ite }>>
    </c:forEach>
	<br>
	<c:forEach items="${list}" var="ite" varStatus="status">
       值：${ite }|索引：${status.index }|当前循环计数：${status.count }|是否为第一次循环：${status.first }
       |是否为最后一次循环:${status.last }<br>
	</c:forEach>
	<c:set var="string" value="古都，雪国，千只鹤，山音，湖；伊豆的舞女"></c:set>
	<c:forTokens items="${string}" delims="，；" var="ite">
      ${ite }>>
    </c:forTokens>
	<h2>URL操作标签</h2>
	<!-- 
    <c:import url="http://www.baidu.com" var="baidu">
    </c:import>
    -->
	<iframe src="http://m.weather.com.cn/m/pn12/weather.htm " width="245"
		height="110" marginwidth="0" marginheight="0" hspace="0" vspace="0"
		frameborder="0" scrolling="no"></iframe>
</body>
</html>