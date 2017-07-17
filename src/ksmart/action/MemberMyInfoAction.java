package ksmart.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ksmart.forward.MemberActionForward;
import ksmart.inter.MemberActionInterFace;

public class MemberMyInfoAction implements MemberActionInterFace {

	@Override
	public MemberActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		
		String id = (String)session.getAttribute("S_ID");
		MemberActionForward forward = new MemberActionForward();
		if(id == null) {
			forward.setRedirect(true);
			forward.setPath(request.getContextPath()+"/index.movie");
			
			return forward;
			
		} else {
			forward.setRedirect(true);
			forward.setPath(request.getContextPath()+"/myInfo.movie");
			
			return forward;
		}
	}

}
