<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	Cookie cartId = new Cookie("Shipping_cartId",request.getParameter("cartId"));
	
	Cookie name = new Cookie("Shipping_name",request.getParameter("name"));
	
	Cookie shippingDate = new Cookie("Shipping_shippingDate",request.getParameter("shippingDate"));
	
	Cookie zipCode = new Cookie("Shipping_zipCode",URLEncoder.encode(request.getParameter("zipCode"),"UTF-8"));
	
	Cookie address = new Cookie("Shipping_address",URLEncoder.encode(request.getParameter("address"),"UTF-8"));
	
	Cookie datailAddress = new Cookie("Shipping_datailAddress",request.getParameter("datailAddress"));
	
	cartId.setMaxAge(2*60*60);
	name.setMaxAge(2*60*60);
	zipCode.setMaxAge(2*60*60);
	address.setMaxAge(2*60*60);
	datailAddress.setMaxAge(2*60*60);
	
	response.addCookie(cartId);
	response.addCookie(name);
	response.addCookie(shippingDate);
	response.addCookie(zipCode);
	response.addCookie(address);
	response.addCookie(datailAddress);
	
	response.sendRedirect("orderConfirmation.jsp");
	
%>
</body>
</html>