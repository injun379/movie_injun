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
		//01단계 : session값을 받아 오고 확인
		HttpSession session = request.getSession();
		String id = request.getParameter("login_id");
		String pw = request.getParameter("login_pw");
		System.out.println(id+" <-- id MemberLoginProAction.java");
		System.out.println(pw+" <-- pw MemberLoginProAction.java");
   		
		//02단계 : 아이디에 해당하는 회원 정보 가져오는 메서드 호출
		MemberDao memberdao = new MemberDao();
   		Member m = new Member();
   		String loginCheck = memberdao.memberLogin(id, pw);
   		m = memberdao.searchOneMember(id);
   		
   		//03단계 : 로그인 처리, 결과값 셋팅
   		if(loginCheck.equals("로그인 성공")){
   			session.setAttribute("S_ID", m.getM_id());
   			session.setAttribute("S_PW", m.getM_pw());
   			session.setAttribute("S_NAME", m.getM_name());
   			session.setAttribute("S_LEVEL", m.getM_level());
   			session.setAttribute("S_POINT", m.getM_point());
   		}
   		
   		//04단계 : MActionForward 객체내 셋팅(true 또는 False값과 경로)
		MemberActionForward forward = new MemberActionForward();
		forward.setRedirect(true);
		forward.setPath(request.getContextPath()+"/index.movie");
		
		//05단계 :  메서드 호출한 곳으로 주소값 리턴
		return forward;
	}

}
