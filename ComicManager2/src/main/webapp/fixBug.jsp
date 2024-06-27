<%@page import="java.sql.Date"%>
<%@page import="DAO.viewDAO"%>
<%@page import="model.view"%>
<%@page import="DAO.userDAO"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String username=session.getAttribute("username")+""; %>
<h1><%=username %></h1>
<%

String user_id=userDAO.getInstance().getIdByName(username);
//Date timestamp = new Date(System.currentTimeMillis()); 

view v= new view(user_id, "2", null);

%>


<h2><%=viewDAO.getInstance().insert2(v)%></h2>

</body>
</html>