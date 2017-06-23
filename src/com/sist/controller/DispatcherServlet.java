package com.sist.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.model.Model;
import com.sun.org.apache.bcel.internal.generic.DMUL;

import java.util.*;
/*
 * 	ListModel <==> list.jsp
 * 	UpdateModel <==> update.jsp
 * 	DeleteModel <==> delete.jsp
 * 	InsertModel <==> insert.jsp
 * */
//스프링은 싱글턴, 팩토리 패턴을 이용->자바 패턴 공부
//call by value
//call vby reference 
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//http://localhost/MVCProject/DispatcherServlet?cmd=list 순서:컨트롤러->모델->뷰 (처리:JSTL, 출력:EL)
	// /list.do (확장자가 .do이면 무조건 DispatcherServlet을 찾도록)
	private String[] strCmd={
		"list", "insert","update","delete"};
	//model mapping
	private String[] strCls={
		"com.sist.model.ListModel",
		"com.sist.model.InsertModel",
		"com.sist.model.UpdateModel",
		"com.sist.model.DeleteModel",
	};
	//<bean id="list" class="" jsp=""/>
	//jsp mapping
	private String[] strJsp={
		"list.jsp",
		"insert.jsp",
		"update.jsp",
		"delete.jsp"
	};
	
	//저장
	private Map clsMap=new HashMap();
	private Map jspMap=new HashMap();
	
	public void init(ServletConfig config) throws ServletException {
		try{
			for(int i=0; i<strCmd.length; i++){
				//clsName을 읽고 저장해라
				Class clsName=Class.forName(strCls[i]); 
				Object obj=clsName.newInstance();
				clsMap.put(strCmd[i], obj);
				jspMap.put(strCmd[i],strJsp[i]);
			}
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			//사용자 요청 받기
			String cmd=request.getParameter("cmd");
			//클래스 찾기==>  annotation이 없으면 xml
			Model model=(Model)clsMap.get(cmd);
			//기능 처리==>결과값을 DispatcherServlet으로 전송
			model.execute(request, response);
			//request를 jsp로 전송
			String jsp=(String)jspMap.get(cmd);
			
			//forward (request를 보낸다)
			RequestDispatcher rd=request.getRequestDispatcher("view/"+jsp); //rd가 request 정보를 갖게됨.jsp로   request 보냄
			rd.forward(request, response); //jsp(rd)로 보냄
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}

}
