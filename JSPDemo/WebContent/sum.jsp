<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>求和</title>
</head>
<body>
	<%
		Thread.sleep(5000);
		int max_n = Integer.parseInt(request.getParameter("max_n"));
		int min_n = Integer.parseInt(request.getParameter("min_n"));
		int sum = 0;
		for (int i = min_n; i <= max_n; i++)
			sum += i;
		out.print("<p>从" + min_n + "到" + max_n + "的和为：" + sum + "</p>");
	%>
</body>
</html>