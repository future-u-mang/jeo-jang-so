<%@page import="java.sql.*"%>
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
	Connection conn =null;
	PreparedStatement psmt= null;
	ResultSet rs = null;
	
	try{
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "C##dbexam";
		String password = "m1234";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("드라이버 등록 성공");
		
		DriverManager.getConnection(url,user,password);
		System.out.println("접속성공");
	}catch(Exception e){
		System.out.println("데이터 베이스 연결 실패<br>");
		System.out.println("Exception : "+e.getMessage());
	}
%>
</body>
</html>