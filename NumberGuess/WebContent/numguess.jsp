<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.mialab.num.NumberGuessBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="numguess" class="com.mialab.num.NumberGuessBean" scope="session" />
<jsp:setProperty name="numguess" property="*" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>猜数小游戏</title>
</head>
<body>
	<font size=4> <%
 	if (numguess.getSuccess()) {
 %> Congratulations! You got it. And after just <%=numguess.getNumGuesses()%>
		tries.
		<p>

			<%
				numguess.reset();
			%>

			Care to <a href="numguess.jsp">try again</a>?

			<%
				} else if (numguess.getNumGuesses() == 0) {
			%>

			Welcome to the Number Guess game.
		<p>I'm thinking of a number between 1 and 100.
		<p>
		<form method=get>
			What's your guess? <input type=text name=guess> <input
				type=submit value="Submit">
		</form> <%
 	} else {
 %> Good guess, but nope. Try <b><%=numguess.getHint()%></b>. You have
		made <%=numguess.getNumGuesses()%> guesses.
		<p>I'm thinking of a number between 1 and 100.
		<p>
		<form method=get>
			What's your guess? <input type=text name=guess> <input
				type=submit value="Submit">
		</form> <%
 	}
 %>

	</font>
</body>
</html>