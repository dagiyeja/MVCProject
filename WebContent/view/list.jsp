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
		<h3>������</h3>
		<table border=1 width=350>
			<tr>
				<th>���</th>
				<th>���</th>
				<th>�̸�</th>
				<th>����</th>
			</tr>
			<%--�ڹ� �ڵ� 
  		for(EmpVO vo:list)
  		{
  			System.out.println(vo.getEmpno());
  			System.out.println(vo.getEname());
  			System.out.println(vo.getJob());
  		}
  	 --%>
			<c:forEach var="vo" items="${list }" varStatus="s"/> <!-- varStatus�� index�� ������� �Ӽ� -->
			<tr>
				<%--
					<%=request.getAttribute("list").get(0).getEmpno()%>
				 --%>
				<td>${s.index }</td>
				<td>${vo.empno }</td> <!-- empno�� �θ��� �ƴ϶�, getEmpno()�� ȣ���ϰ� �ִ°�, ���� ����X,get�޼��� ������ ������ -->
				<td><a href="DispatcherServlet?cmd=list&empno=${vo.empno }">${vo.ename }</a></td> <!-- ����������, ��ȣ �ȿ� getEname() -->
				<td>${vo.job }</td>
			</tr>
		</table>
		���:${vo.empno }<br>
		�̸�:${vo.ename }<br>
		����:${vo.job }
	</center>
</body>
</html>