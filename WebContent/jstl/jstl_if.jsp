<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
	if(조건) 처리
	<c:if test="조건">
	
	==>if(조건) 처리
		else 처리
		
	==><c:if test=""> 처리
	   <c:if test="!"> 처리 -->else가 없으므로
	   		========== 조건
	
	==><c:choose>
		<c:when test="조건"> 처리
 		<c:otherwise> 처리
 	
 	
 	*DTD:"http://www.w3.org/TR/html4/loose.dtd"->상위 태그 아래의 하위 태그 불러올 수 있게함. 
 	mybatis는 DTD를 쓰고 스프링은 스키마를 쓴다. 
 	xml은 순서 뒤바뀌면 에러남
 	
 	*annotation: xml의 불편함(코드 공유?->오류나면 전체 오류) 대체. 추후 배울 예정 , xml은 고정값을 쓸 때 주로 사용. 
 --%>
 <c:set var="sex" value="남자"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<%-- if(sex==1) --%>
		<c:if test="${sex=='남자' }">
		남자
		</c:if>
		<c:if test="${sex!='남자' }">
		여자
		</c:if><br>
		<c:forEach var="i" begin="1" end="10">
			<c:if test="${i%2==0 }">
				${i }&nbsp;
			</c:if>
		</c:forEach>
		<br>
		<c:choose>
			<c:when test="${sex=='남자' }">1</c:when>
			<c:otherwise>2</c:otherwise>
		</c:choose>
		<br>
		<c:forTokens var="color" items="red,green,blue" delims=",">
			${color }&nbsp;
		</c:forTokens>
	</center>
</body>
</html>