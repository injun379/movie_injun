package ksmart.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ksmart.dao.MemberDao;
import ksmart.forward.MemberActionForward;
import ksmart.inter.MemberActionInterFace;

public class MemberIdCheckProAction implements MemberActionInterFace {

	@Override
	public MemberActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("05_02_execute_MemberIdCheckProAction.java ");
		request.setCharacterEncoding("euc-kr");
		// 01�ܰ� : ȭ�鿡�� �Է��� ������ �޾Ƽ� Ȯ���Ѵ�.
		String input_id = request.getParameter("m_id");
		System.out.println(input_id + " <-- input_id MemberIdCheckProAction.java");
		String checkRe = "";

		// 02�ܰ�	: DAO�� insert�޼��� ȣ��� Vo��ü �ּҰ� �Է�(���� ����)
		MemberDao mdao = new MemberDao();
		if(input_id.equals("") || (input_id == null)) {
			checkRe = "EMPTY";
		} else {
			checkRe = mdao.idDuplictationCheck(input_id);
		}
		
		// 03�ܰ� : ���Ϲ��� ���� request�� ����
		request.setAttribute("checkRe", checkRe);
		request.setAttribute("input_id", input_id);
		
		// 04�ܰ� : MActionForward ��ü�� ����(true �Ǵ� False���� ���)
		MemberActionForward forward = new MemberActionForward();
		forward.setRedirect(false);
		forward.setPath("/join/idCheck_form.movie");
		
		// 05�ܰ� : �޼��� ȣ���� ������ �ּҰ� ����
		return forward;
	}

}
