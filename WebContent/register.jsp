<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		text-align: center;
	}
</style>
</head>
<body>
	<fieldset>
		<form action="register" method="post">
			用户名：<input type="text" name="username" id="username">
			<br>
			密码：&nbsp;&nbsp;&nbsp;<input type="password" name="password" id="password">
			<br>
			性别：
			<input type="radio" name="sex" value="男">男
			<input type="radio" name="sex" value="女">女
			<br>
			爱好：
			<input type="checkbox" name="ints" value="唱歌">唱歌
			<input type="checkbox" name="ints" value="运动">运动
			<input type="checkbox" name="ints" value="看书">看书
			<br>	
			<select>
			
				
			</select>
			<input type="submit" value="提交">
		</form>
	</fieldset>
</body>
</html>