package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//ArrayList => VO => �Ϲ� ����
import java.util.*;
import com.sist.dao.*;
public class ListModel implements Model {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String empno=req.getParameter("empno");
		if(empno==null)empno="1";
		
		
		List<EmpVO> list=new ArrayList<EmpVO>();
		list.add(new EmpVO(1,"ȫ�浿","�븮"));
		list.add(new EmpVO(2,"��û��","���"));
		list.add(new EmpVO(3,"������","����"));
		
		//==>JSP�� ����
		req.setAttribute("list", list);
		EmpVO vo=null;
		for(EmpVO v:list){
			if(v.getEmpno()==Integer.parseInt(empno)){
				vo=v;
				break;
			}
		}
		req.setAttribute("vo", vo); //vo�� �� ã����
	}

}
