<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>使用pageContext对象</title>
</head>
<body>
	<%
		//获取request对象
		HttpServletRequest req = (HttpServletRequest) pageContext.getRequest();
		//设置page范围内属性
		pageContext.setAttribute("boyName", "东北虎", pageContext.PAGE_SCOPE);
		//设置request范围内属性		
		req.setAttribute("girlName", "我不是潘金莲");
		//设置session范围内属性
		pageContext.setAttribute("user", "西门吹雪", pageContext.SESSION_SCOPE);
		//设置application范围内属性
		pageContext.setAttribute("driverClassName", "com.mysql.jdbc.Driver", pageContext.APPLICATION_SCOPE);
		//获得的page范围属性
		String boyName = (String) pageContext.getAttribute("boyName", pageContext.PAGE_SCOPE);
		//获得的request范围属性
		String girlName = (String) pageContext.getAttribute("girlName", pageContext.REQUEST_SCOPE);
		//获得的session范围属性
		String user = (String) pageContext.getAttribute("user", pageContext.SESSION_SCOPE);
		//获得的application范围属性
		String driverClassName = (String) pageContext.getAttribute("driverClassName",
				pageContext.APPLICATION_SCOPE);
	%>
	<%="page范围(属性boyName的值)：" + boyName%><br>
	<%="request范围(属性girlName的值)：" + girlName%><br>
	<%="session范围(属性user的值)：" + user%><br>
	<%="application范围(属性driverClassName的值)：" + driverClassName%><br>
</body>
</html>