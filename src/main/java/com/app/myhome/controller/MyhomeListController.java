package com.app.myhome.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dao.MyhomeDAO;
import com.app.vo.MemberVO;

public class MyhomeListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MyhomeDAO myhomeDAO = new MyhomeDAO();
		MemberVO membrVO = new MemberVO();
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();
		
//		String memberEmail = session.getAttribute("memberEmail");
		String memberEmail = "jingeo@gmail.com";
		
		List<MemberVO> member = myhomeDAO.selectMemberByEmail(memberEmail);
		
		req.setAttribute("member", member);
		result.setPath("profile-done.jsp");

		return result;
	}

}
