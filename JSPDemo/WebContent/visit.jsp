<%-- <%@page import="java.util.Date"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP声明示例</title>
</head>
<body>
	<%!
	int count = 0; //被用户共享的count

	synchronized void visitCount() {
		count++;
	}%>
	<%
		String date = new java.util.Date().toLocaleString();
	%>
	<%
		visitCount();
		out.print("<p><b>" + "您是第" + count + "个访问本网站的用户。" + "<b></p>");
		out.print("<p><b>" + "访问时间是：" + date + "<b></p>");
	%>
</body>
</html>