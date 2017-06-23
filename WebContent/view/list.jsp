<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>사원목록</h3>
		<table border=1 width=350>
			<tr>
				<th>비고</th>
				<th>사번</th>
				<th>이름</th>
				<th>직위</th>
			</tr>
			<%--자바 코드 
  		for(EmpVO vo:list)
  		{
  			System.out.println(vo.getEmpno());
  			System.out.println(vo.getEname());
  			System.out.println(vo.getJob());
  		}
  	 --%>
			<c:forEach var="vo" items="${list }" varStatus="s"/> <!-- varStatus는 index를 갖고오는 속성 -->
			<tr>
				<%--
					<%=request.getAttribute("list").get(0).getEmpno()%>
				 --%>
				<td>${s.index }</td>
				<td>${vo.empno }</td> <!-- empno를 부른게 아니라, getEmpno()를 호출하고 있는것, 변수 접근X,get메서드 없으면 오류남 -->
				<td><a href="DispatcherServlet?cmd=list&empno=${vo.empno }">${vo.ename }</a></td> <!-- 마찬가지로, 괄호 안에 getEname() -->
				<td>${vo.job }</td>
			</tr>
		</table>
		사번:${vo.empno }<br>
		이름:${vo.ename }<br>
		직위:${vo.job }
	</center>
</body>
</html>