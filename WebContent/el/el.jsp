<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--
	EL(ǥ����� : ������ ���) => <%=%> 
	1) ���� ${exp}
	
	   request.setAttribute("id","admin");
	   =><%=request.getAttribute("id")%> �Ϲ� jsp
	   =>${requestScope.id} ->id�� �ش��ϴ� key���� �����´�
	   =>requestScope. =>������ ���� =>${id}
	   session.setAttribute("id","admin");
	   =><%=session.getAttribute("id")%> �Ϲ� jsp
	   =>${sessionScope.id} �����Ұ���, �����ڴ� �ִµ� ����� ����->����� jstl�� �̿��� ����
	   	request.getParameter("id"); =>Model���� ó��
	   	=>${param.id}
	   
	 2)������
	       ��������� (+ , -, *, /, %) ==> ����
	       / => �Ǽ�
	       5/2 => 2 (�ڹ�)
	       ${5/2}=>2.5 (�ڹپ��X)
	       **** (+)"aaa"+10 =>"aaa10" (X) 
	       		-���ڿ� ������ ����! ->3.0������ �����ϴ�
	       	"10"+"20" ==>1020
	       	${"10"+"20"} ==> 30
	       	${null+10} ==> 10 (null�� 0���� ����Ѵ�}
	       	+,-,* ==> /(div) %(mod)
	       	$(5%2) ==> ${5 mod 2}
	       	$(5/2) ==> ${5 div 2}
	       ��������==> true/false
	       &&(and)
	       ||(or)
	       
	       		(����)&&(����)
	       =======================
	       	true true 	==>true
	       =======================
	       	true false	==>false
	       =======================
	       	false false	==>false
	       =======================
	       	false true	==>false
	       =======================
	       
	        		(����)||(����)
	       =======================
	       	true true 	==>true
	       =======================
	       	true false	==>true
	       =======================
	       	false false	==>false
	       =======================
	       	false true	==>true
	       =======================
	       
	       �񱳿����� : true/false
	       == , !=, <, >, <=, >=
	       ${sex=='����'}	 �ڹ�:sex.equals()    
	       ================���� ��¥
	       ���׿�����    
	       	����? ��1: ��2
	       ====
	       true ��1
	       false ��2
	      empty �� ==>"" ==> true/false
	       	
	   	DI(Data Injection)-���� �����Ѵ�.
	   ex)���� �ʿ��� �����͸� xml�� �Է��ϸ� ����ó�� , config.xml
	   ���������Ͱ� json, xml��� �̷���� �ֱ� ������ parsing�� �� �˾ƾ�..
	   
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