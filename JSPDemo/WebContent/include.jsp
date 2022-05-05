<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>&lt;jsp:include&gt; 动作元素</title>
</head>
<body>
	<h2>求和</h2>
	<jsp:include page="sum.jsp" flush="true">
		<jsp:param value="100" name="max_n" />
		<jsp:param value="10" name="min_n" />
	</jsp:include>
</body>
</html>