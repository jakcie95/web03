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
	Cookie cook = new Cookie("testCookie", "myCookie");
	cook.setMaxAge(10);
	response.addCookie(cook);
%>
<script type="text/javascript">
	window.close();
</script>
</body>
</html>