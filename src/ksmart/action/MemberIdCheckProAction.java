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
		// 01단계 : 화면에서 입력한 값들을 받아서 확인한다.
		String input_id = request.getParameter("m_id");
		System.out.println(input_id + " <-- input_id MemberIdCheckProAction.java");
		String checkRe = "";

		// 02단계	: DAO내 insert메서드 호출시 Vo객체 주소값 입력(리턴 선택)
		MemberDao mdao = new MemberDao();
		if(input_id.equals("") || (input_id == null)) {
			checkRe = "EMPTY";
		} else {
			checkRe = mdao.idDuplictationCheck(input_id);
		}
		
		// 03단계 : 리턴받은 값을 request에 셋팅
		request.setAttribute("checkRe", checkRe);
		request.setAttribute("input_id", input_id);
		
		// 04단계 : MActionForward 객체내 셋팅(true 또는 False값과 경로)
		MemberActionForward forward = new MemberActionForward();
		forward.setRedirect(false);
		forward.setPath("/join/idCheck_form.movie");
		
		// 05단계 : 메서드 호출한 곳으로 주소값 리턴
		return forward;
	}

}
