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
		boolean bool = true;
		
		Cookie[] cookieArr = request.getCookies();
		if(cookieArr != null){
			for(Cookie c : cookieArr){
				out.print("name : "+c.getName()+"<br>");
				out.print("value : "+c.getValue()+"<hr>");				
			if(c.getName().equals("testCookie")){
				bool = false;
				}
			}
			/*
			for(int i=0; i<cookieArr.length;i++){
				cookieArr[i].getName();
			}
			*/
		}
		
		
		Cookie cook = new Cookie("testCookie", "myCookie");
		cook.setMaxAge(5);
		response.addCookie(cook);
	%>
<%if(bool){ %>
	<script type="text/javascript">
	open("popup.jsp","",
			"width=300, height=200, top=500, left=500");	
			</script>
<% } %>
</body>
</html>