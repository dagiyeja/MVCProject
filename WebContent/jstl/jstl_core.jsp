<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
 <%-- 
 	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	 <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
	 <%@ taglib prefix="xml" uri="http://java.sun.com/jsp/jstl/xml" %>
 	
 --%>

 <%--
 		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 		prefix->자기 마음대로 정하면 됨. 태그를 갖다 쓸 수 있음 
 		
 		taglib ==> JSTL ==> JSP	Standard Tag Library
 		JSP	==> 제어문
 				for
 				if	==> else(존재하지 x)
 				choose	==> 다중 if
 				token ==> StringTokenizer
 				redirect ==> sendRedirect (URL)
 				===============================
 				CORE : 제어문, URL, 변수
 				ex)set 태그-> setAttribute와 같음
 				===============================
 				변환 : 숫자(1,000), 날짜(yyyy-mm-dd)
 				==============================
 					FORMAT 태그
 				==============================
  					SQL, XML, FN 태그
  				==============================
  				
  	1) set => <c:set var="name" value="홍길동"/>
  				=>자바변경
  				  request.setAtrribute("name","홍길동") ->하자마자 $표시로 getAttribute할 수 있음
  				  
  			
  	
  --%>
  <%
  	//일반 자바
  	String name="홍길동";
  	request.setAttribute("name", "심청이"); //->태그를 이용하지 않을 경우 setAtribute
  	
  %>
 <%-- <c:set var="name" value="홍길동1"/> --%><!-- getAttribute -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%=request.getAttribute("name") %><br>
	${name } <%--$안에 들어가는 것은 일반변수가 아님 --%>
</body>
</html>