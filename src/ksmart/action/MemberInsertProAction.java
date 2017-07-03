package ksmart.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ksmart.dto.Member;
import ksmart.dao.MemberDao;
import ksmart.forward.MemberActionForward;
import ksmart.inter.MemberActionInterFace;

public class MemberInsertProAction implements MemberActionInterFace {

	@Override
	public MemberActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("05_01_execute_MInsertProAction.java ");
		// 01�ܰ� : ȭ�鿡�� �Է��� ������ �޾Ƽ� Ȯ���Ѵ�.
		request.setCharacterEncoding("euc-kr");
		
		String checkInfo = request.getParameter("checkInfo");
		System.out.println(checkInfo + " <-- checkInfo memberInsertPro.jsp");

		HttpSession session = request.getSession();
		String S_LEVEL = (String)session.getAttribute("S_LEVEL");
		String m_level = "�Ϲ�";

		if(S_LEVEL != null) {
			m_level = request.getParameter("m_level");
		}
		int m_point = 0;
	
		String m_id = request.getParameter("m_id");
		String m_pw = request.getParameter("m_pw");
		String m_pw2 = request.getParameter("m_pw2");
		String m_name = request.getParameter("m_name");
		String m_phone = request.getParameter("m_phone");
		String email_id = request.getParameter("email_id");
		String email_addr = request.getParameter("email_addr");
		String m_gender = request.getParameter("m_gender");
		String m_birth = request.getParameter("m_birth");
		String genre_code = request.getParameter("favorite_genre1");

		System.out.println(m_id + " <-- m_id memberInsertPro.jsp");
		System.out.println(m_pw + " <-- m_pw memberInsertPro.jsp");
		System.out.println(m_pw2 + " <-- m_pw2 memberInsertPro.jsp");
		System.out.println(m_name + " <-- m_name memberInsertPro.jsp");
		System.out.println(m_phone + " <-- m_phone memberInsertPro.jsp");
		System.out.println(email_id + " <-- email_id memberInsertPro.jsp");
		System.out.println(email_addr + " <-- email_addr memberInsertPro.jsp");
		System.out.println(m_gender + " <-- m_gender memberInsertPro.jsp");
		System.out.println(m_birth + " <-- m_birth memberInsertPro.jsp");
		System.out.println(genre_code + " <-- genre_code memberInsertPro.jsp");
		
		// 02�ܰ� : Vo �Ǵ� DTO��ü�� ����(����)
		Member m = new Member();
		m.setM_id(m_id);
		m.setM_pw(m_pw);
		m.setM_level(m_level);
		m.setM_name(m_name);
		m.setM_email(email_id+"@"+email_addr);
		m.setM_point(m_point);
		m.setM_birth(m_birth);
		m.setGenre_code(genre_code);
		m.setM_gender(m_gender);
		m.setM_phone(m_phone);
		
		// 03�ܰ�	: DAO�� insert�޼��� ȣ��� Vo��ü �ּҰ� �Է�(���� ����)
		MemberDao dao = new MemberDao();
		dao.insertMember(m);
		
		// 04�ܰ� : MActionForward ��ü�� ����(true �Ǵ� False���� ���)
		MemberActionForward forward = new MemberActionForward();
		forward.setRedirect(true);
		forward.setPath(request.getContextPath()+"/index.movie");
		
		// 05�ܰ� : �޼��� ȣ���� ������ �ּҰ� ����
		return forward;
	}

}
