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
 		prefix->�ڱ� ������� ���ϸ� ��. �±׸� ���� �� �� ���� 
 		
 		taglib ==> JSTL ==> JSP	Standard Tag Library
 		JSP	==> ���
 				for
 				if	==> else(�������� x)
 				choose	==> ���� if
 				token ==> StringTokenizer
 				redirect ==> sendRedirect (URL)
 				===============================
 				CORE : ���, URL, ����
 				ex)set �±�-> setAttribute�� ����
 				===============================
 				��ȯ : ����(1,000), ��¥(yyyy-mm-dd)
 				==============================
 					FORMAT �±�
 				==============================
  					SQL, XML, FN �±�
  				==============================
  				
  	1) set => <c:set var="name" value="ȫ�浿"/>
  				=>�ڹٺ���
  				  request.setAtrribute("name","ȫ�浿") ->���ڸ��� $ǥ�÷� getAttribute�� �� ����
  				  
  			
  	
  --%>
  <%
  	//�Ϲ� �ڹ�
  	String name="ȫ�浿";
  	request.setAttribute("name", "��û��"); //->�±׸� �̿����� ���� ��� setAtribute
  	
  %>
 <%-- <c:set var="name" value="ȫ�浿1"/> --%><!-- getAttribute -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%=request.getAttribute("name") %><br>
	${name } <%--$�ȿ� ���� ���� �Ϲݺ����� �ƴ� --%>
</body>
</html>