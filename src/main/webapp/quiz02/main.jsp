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
	if(session.getAttribute("id") == null){
			response.sendRedirect("loginForm.jsp");
		}
%>
<%
		boolean bool = true;
		Cookie[] cookieArr = request.getCookies();
		if(cookieArr != null){
			for(Cookie c : cookieArr){				
			if(c.getName().equals("testCookie")){
				bool = false;
				}
			}
		}
			%>
<%if(bool){ %>
	<script type="text/javascript">
	open("popup.jsp","",
			"width=300, height=200, top=500, left=500");	
			</script>
<% } %>
	<form>
	<%= session.getAttribute("id") %>님 환영 합니다<br>
	저희 홈페이지에 방문해주셔서 감사합니다.<br>
	즐거운 시간 되세요~
	<br>
	<button type="submit" value="로그아웃">
	<a href ="logout.jsp">로그아웃</a>
	</button>
	<button type="submit" value="로그인">
	<a href ="loginForm.jsp">로그인페이지</a>
	</button>
	</form>
</body>
</html>