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
//�������� �̱���, ���丮 ������ �̿�->�ڹ� ���� ����
//call by value
//call vby reference 
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//http://localhost/MVCProject/DispatcherServlet?cmd=list ����:��Ʈ�ѷ�->��->�� (ó��:JSTL, ���:EL)
	// /list.do (Ȯ���ڰ� .do�̸� ������ DispatcherServlet�� ã����)
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
	
	//����
	private Map clsMap=new HashMap();
	private Map jspMap=new HashMap();
	
	public void init(ServletConfig config) throws ServletException {
		try{
			for(int i=0; i<strCmd.length; i++){
				//clsName�� �а� �����ض�
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
			//����� ��û �ޱ�
			String cmd=request.getParameter("cmd");
			//Ŭ���� ã��==>  annotation�� ������ xml
			Model model=(Model)clsMap.get(cmd);
			//��� ó��==>������� DispatcherServlet���� ����
			model.execute(request, response);
			//request�� jsp�� ����
			String jsp=(String)jspMap.get(cmd);
			
			//forward (request�� ������)
			RequestDispatcher rd=request.getRequestDispatcher("view/"+jsp); //rd�� request ������ ���Ե�.jsp��   request ����
			rd.forward(request, response); //jsp(rd)�� ����
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}

}
