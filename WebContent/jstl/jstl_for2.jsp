<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List<String> list=new ArrayList<String>();
	list.add("ȫ�浿");
	list.add("���ջ�");
	list.add("������");
	list.add("���ϴ�");
	list.add("�����");
	
	request.setAttribute("list", list);
%>
<%-- <c:set var="names" value="<%=list %>"/>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>Java=forEach����</h3>
		<%
			for(String s:list)
			{
		%>
				<%=s %>&nbsp;
		<%
			}
		%>
		<br>
		<h3>JSTL = forEach����</h3>
		<c:forEach var="s" items="${list }">
			${s }&nbsp; <%--�����ϵǸ� ���� �ڹ��ڵ�� ��ȯ?�� --%>
		</c:forEach>
	</center>
</body>
</html>