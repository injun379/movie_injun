package ksmart.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ksmart.forward.MemberActionForward;
import ksmart.inter.MemberActionInterFace;

public class MemberLogoutAction implements MemberActionInterFace {

	@Override
	public MemberActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		MemberActionForward forward = new MemberActionForward();
		forward.setRedirect(true);
		forward.setPath(request.getContextPath()+"/index.movie");
		
		return forward;
	}

}
