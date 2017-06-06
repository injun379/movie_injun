<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "ksmart.dao.MemberDao" %>
<%@ page import = "java.net.*" %>
<% 
MemberDao mdao = new MemberDao();
String input_id = request.getParameter("m_id");
System.out.println(input_id + " <-- input_id idCheckPro.jsp");
String checkMsg = mdao.idDuplictationCheck(input_id);

checkMsg = URLEncoder.encode(checkMsg, "utf-8");

pageContext.forward("./idCheck.jsp?input_id="+input_id+"&checkMsg="+checkMsg);
%>