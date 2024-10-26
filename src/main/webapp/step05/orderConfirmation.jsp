<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>    
<%@ page import="dto.Product" %>    
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<!DOCTYPE html>
<%@ page import="java.net.URLDecoder" %>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Index - Impact Bootstrap Template</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="../resources/assets/img/favicon.png" rel="icon">
  <link href="../resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../resources/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="../resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="../resources/assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Impact
  * Template URL: https://bootstrapmade.com/impact-bootstrap-business-website-template/
  * Updated: Aug 07 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
<%
	String shipping_cartId ="";
	String shipping_name ="";
	String shipping_shippingDate ="";
	String shipping_zipCode ="";
	String shipping_address ="";
	String shipping_datailAddress ="";
	
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			
			if(n.equals("Shipping_cartId")) shipping_cartId = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_name")) shipping_name = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_shippingDate")) shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_zipCode")) shipping_zipCode = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_address")) shipping_address = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Shipping_datailAddress")) shipping_datailAddress = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			
		}
	}
	
	%>

  <!-- header include-->
  <%@ include file="navi.jsp" %>
   <%@ include file="navi.jsp" %>
  <div class="container-fluid bg-light p-5">
       <h1 class="p-5 display-3 mt-5">주문 정보</h1>
  </div>
  <div class="container">
    <div class="row my-5 text-center align-items-center justify-content-center bg-secondary-subtle pb-5 ">
    <h1 class=" text-center">영수증</h1>
    <table class="col-8 align-items-center justify-content-center">
    	<tr>
    		<th>배송주소</th>
    	</tr>
    		<td> 성명 : <% out.println(shipping_name); %></td><br>
    	</tr>
    	<tr>
    		<td> 우편번호 : <% out.println(shipping_zipCode); %></td><br>
    	</tr>
    	<tr>
    	<td> 주소 : <% out.println(shipping_address); %></td><br>
    	</tr>
    	<tr>
    	<td> 예상 배송일 : <% out.println(shipping_shippingDate); %></td><br>
    	</tr>
    	<tr>
    	<td> 우편번호 : <% out.println(shipping_zipCode); %></td><br>
    	</tr>
    </table>   

  </div>
  
  </div class="row">
  <p class="btn btn-info"><a href="./index.jsp#products" class="text-white">상품목록 바로가기</a><p/>
  </div>
  
  </div>
  
  
  
  
  
  
	
  <!-- footer include -->
  <%@ include file="footer.jsp" %>
 
  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="../resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../resources/assets/vendor/php-email-form/validate.js"></script>
  <script src="../resources/assets/vendor/aos/aos.js"></script>
  <script src="../resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="../resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="../resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="../resources/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="../resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>

  <!-- Main JS File -->
  <script src="../resources/assets/js/main.js"></script>

</body>

</html>