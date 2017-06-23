<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
	EL(표현언어 : 브라우저 출력) => <%=%> 
	1) 형식 ${exp}
	
	   request.setAttribute("id","admin");
	   =><%=request.getAttribute("id")%> 일반 jsp
	   =>${requestScope.id} ->id에 해당하는 key값을 가져온다
	   =>requestScope. =>생략이 가능 =>${id}
	   session.setAttribute("id","admin");
	   =><%=session.getAttribute("id")%> 일반 jsp
	   =>${sessionScope.id} 생략불가능, 연산자는 있는데 제어문이 없다->제어문은 jstl을 이용해 구현
	   	request.getParameter("id"); =>Model에서 처리
	   	=>${param.id}
	   
	 2)연산자
	       산술연산자 (+ , -, *, /, %) ==> 숫자
	       / => 실수
	       5/2 => 2 (자바)
	       ${5/2}=>2.5 (자바언어X)
	       **** (+)"aaa"+10 =>"aaa10" (X) 
	       		-문자열 결합이 없다! ->3.0버전은 가능하다
	       	"10"+"20" ==>1020
	       	${"10"+"20"} ==> 30
	       	${null+10} ==> 10 (null은 0으로 취급한다}
	       	+,-,* ==> /(div) %(mod)
	       	$(5%2) ==> ${5 mod 2}
	       	$(5/2) ==> ${5 div 2}
	       논리연산자==> true/false
	       &&(and)
	       ||(or)
	       
	       		(조건)&&(조건)
	       =======================
	       	true true 	==>true
	       =======================
	       	true false	==>false
	       =======================
	       	false false	==>false
	       =======================
	       	false true	==>false
	       =======================
	       
	        		(조건)||(조건)
	       =======================
	       	true true 	==>true
	       =======================
	       	true false	==>true
	       =======================
	       	false false	==>false
	       =======================
	       	false true	==>true
	       =======================
	       
	       비교연산자 : true/false
	       == , !=, <, >, <=, >=
	       ${sex=='남자'}	 자바:sex.equals()    
	       ================오늘 날짜
	       삼항연산자    
	       	조건? 값1: 값2
	       ====
	       true 값1
	       false 값2
	      empty 값 ==>"" ==> true/false
	       	
	   	DI(Data Injection)-값을 주입한다.
	   ex)내가 필요한 데이터를 xml에 입력하면 매핑처리 , config.xml
	   공공데이터가 json, xml들로 이루어져 있기 때문에 parsing할 줄 알아야..
	   
 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>