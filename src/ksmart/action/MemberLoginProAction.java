package ksmart.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ksmart.dao.MemberDao;
import ksmart.dto.Member;
import ksmart.forward.MemberActionForward;
import ksmart.inter.MemberActionInterFace;

public class MemberLoginProAction implements MemberActionInterFace {

	@Override
	public MemberActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("05_07_execute_MemberLoginProAction.java ");
		request.setCharacterEncoding("utf-8");
		//01�ܰ� : session���� �޾� ���� Ȯ��
		HttpSession session = request.getSession();
		String id = request.getParameter("login_id");
		String pw = request.getParameter("login_pw");
		System.out.println(id+" <-- id MemberLoginProAction.java");
		System.out.println(pw+" <-- pw MemberLoginProAction.java");
   		
		//02�ܰ� : ���̵� �ش��ϴ� ȸ�� ���� �������� �޼��� ȣ��
		MemberDao memberdao = new MemberDao();
   		Member m = new Member();
   		String loginCheck = memberdao.memberLogin(id, pw);
   		m = memberdao.searchOneMember(id);
		//03�ܰ� : �α��� ó��, ����� ����
   		
   		if(loginCheck.equals("�α��� ����")){
   			session.setAttribute("S_ID", m.getM_id());
   			session.setAttribute("S_PW", m.getM_pw());
   			session.setAttribute("S_NAME", m.getM_name());
   			session.setAttribute("S_LEVEL", m.getM_level());
   			session.setAttribute("S_POINT", m.getM_point());
   		}
		//04�ܰ� : MActionForward ��ü�� ����(true �Ǵ� False���� ���)
		MemberActionForward forward = new MemberActionForward();
		forward.setRedirect(true);
		forward.setPath(request.getContextPath()+"/index.movie");
		
		//05�ܰ� :  �޼��� ȣ���� ������ �ּҰ� ����
		return forward;
	}

}
