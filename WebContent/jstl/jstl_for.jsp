<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
	1)for
	for(int i=1; i<=9; i++) ->자바 코드
	 <c:forEach var="i" begin="1" end="9" step="1"> ->step:"1" 1씩 증가하는 경우는 생략 가능
	 String[] data={"aaa","bbb","ccc","ddd"};
	 for(int i=0; i<data.length; i++)
	 {
	 	System.out.println(data[i]);
	 }
	 for(String s:data)
	 			  ==== 배열, 컬렉션(데이터 집합체)
	 {
	 	System.out.println(s);
	 }
	 List<MemberVO> list;
	 for(MemberVO vo:list)
	2)for
	  <c:forEach var="vo" items="list"> -->위보다 많이 쓰는 표현
 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>일반 Java 사용(구구단)</h3>
		<table border=1 width=600>
			<tr bgcolor="#ccccff">
				<%
					for (int i = 2; i <= 9; i++) {
				%>
				<th><%=i + "단"%></th>
				<%
					}
				%>
			</tr>
			<%
				for(int i=1; i<=9; i++){ //줄수
			%>
					<tr>
			<%
					for(int j=2; j<=9; j++){ //데이터 개수
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
		<h3>JSTL 사용(구구단)</h3>
		<table border=1 width=600>
			<tr>
				<c:forEach var="i" begin="2" end="9">
					<th>${i }단</th>
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