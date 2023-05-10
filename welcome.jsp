<%@page import="org.omg.PortableInterceptor.SUCCESSFUL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	welcome:
	<%
		String name = (String)session.getAttribute("uname");	
		
		if(name != null){
			out.print(name);
			
	%>
			<a href ="invalidate.jsp">ログアウト</a>
	<%
		}else{
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>