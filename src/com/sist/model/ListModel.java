package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//ArrayList => VO => 일반 변수
import java.util.*;
import com.sist.dao.*;
public class ListModel implements Model {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String empno=req.getParameter("empno");
		if(empno==null)empno="1";
		
		
		List<EmpVO> list=new ArrayList<EmpVO>();
		list.add(new EmpVO(1,"홍길동","대리"));
		list.add(new EmpVO(2,"심청이","사원"));
		list.add(new EmpVO(3,"춘향이","과장"));
		
		//==>JSP로 전송
		req.setAttribute("list", list);
		EmpVO vo=null;
		for(EmpVO v:list){
			if(v.getEmpno()==Integer.parseInt(empno)){
				vo=v;
				break;
			}
		}
		req.setAttribute("vo", vo); //vo에 값 찾아줌
	}

}
