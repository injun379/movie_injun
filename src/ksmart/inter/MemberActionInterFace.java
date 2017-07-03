package ksmart.inter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ksmart.forward.MemberActionForward;

public interface MemberActionInterFace {
		public MemberActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception;
}
