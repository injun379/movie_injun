<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="ksmart.dao.MemberDao"%>
<%@ page import="ksmart.dto.Member"%>
<%@ page import="java.sql.*"%>
<% 

	String id = request.getParameter("txtUserId");
	String pw = request.getParameter("txtPwd1");
	System.out.println(id+" <-- id loginForm.jsp");
	System.out.println(pw+" <-- pw loginForm.jsp");
	String loginCheck = null;
	
	Member m = new Member();
	MemberDao mdao = new MemberDao();
	loginCheck = mdao.memberLogin(id, pw);
	
	m = mdao.searchOneMember(id);

	if(loginCheck.equals("로그인 성공")){
		session.setAttribute("S_ID", m.getM_id());
		session.setAttribute("S_PW", m.getM_pw());
		session.setAttribute("S_NAME", m.getM_name());
		session.setAttribute("S_LEVEL", m.getM_level());
		session.setAttribute("S_POINT", m.getM_point());
%>
<script language="javascript">
	alert("<%=loginCheck %>");
	location.href="<%= request.getContextPath() %>/main.jsp";
</script>
<%
} else {
%>
<script language="javascript">
	alert("<%=loginCheck %>");
	location.href="./loginForm.jsp";
</script>
<%
}
%>