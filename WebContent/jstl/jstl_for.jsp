<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
	1)for
	for(int i=1; i<=9; i++) ->�ڹ� �ڵ�
	 <c:forEach var="i" begin="1" end="9" step="1"> ->step:"1" 1�� �����ϴ� ���� ���� ����
	 String[] data={"aaa","bbb","ccc","ddd"};
	 for(int i=0; i<data.length; i++)
	 {
	 	System.out.println(data[i]);
	 }
	 for(String s:data)
	 			  ==== �迭, �÷���(������ ����ü)
	 {
	 	System.out.println(s);
	 }
	 List<MemberVO> list;
	 for(MemberVO vo:list)
	2)for
	  <c:forEach var="vo" items="list"> -->������ ���� ���� ǥ��
 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>�Ϲ� Java ���(������)</h3>
		<table border=1 width=600>
			<tr bgcolor="#ccccff">
				<%
					for (int i = 2; i <= 9; i++) {
				%>
				<th><%=i + "��"%></th>
				<%
					}
				%>
			</tr>
			<%
				for(int i=1; i<=9; i++){ //�ټ�
			%>
					<tr>
			<%
					for(int j=2; j<=9; j++){ //������ ����
			%>
						<td><%=j+"*"+i+"="+(j*i) %></td>
			<%		
					}
			%>
				</tr>
			<%
				}
			%>
		</table>
		<h3>JSTL ���(������)</h3>
		<table border=1 width=600>
			<tr>
				<c:forEach var="i" begin="2" end="9">
					<th>${i }��</th>
				</c:forEach>
			</tr>
			<c:forEach var="i" begin="1" end="9">
				<tr>
				<c:forEach var="j" begin="2" end="9">
					<td>${j }*${i }=${j*i }</td>
				</c:forEach>
			</c:forEach>
		</table>
	</center>
</body>
</html>