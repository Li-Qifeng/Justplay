<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>&lt;jsp:forward&gt; 动作元素</title>
</head>
<body>
	<h2>&lt;jsp:forward&gt; 示例</h2>
	<jsp:forward page="forward_book.jsp">
		<jsp:param value="Software Project Management" name="bookName" />
	</jsp:forward>
</body>
</html>