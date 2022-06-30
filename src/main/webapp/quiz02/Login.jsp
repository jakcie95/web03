<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id="aaaa", pwd="1111";
		String userId = request.getParameter("id");
		String userPwd = request.getParameter("pwd");
		if(id.equals(userId) && pwd.equals(userPwd)){
			session.setAttribute("id", "홍길동");
			response.sendRedirect("main.jsp");
		}else{
			response.sendRedirect("loginForm.jsp");
		}
	%>
</body>
</html>