<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "ksmart.dao.MemberDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
request.setCharacterEncoding("utf-8");

String m_id = request.getParameter("m_id");
String m_name = request.getParameter("m_name");
String m_phone = request.getParameter("m_phone");
String m_birth = request.getParameter("m_birth");
String email_id = request.getParameter("email_id");
String email_addr = request.getParameter("email_addr");
System.out.println(m_id + "<-- m_id memberUpdatePro.jsp");
System.out.println(m_name + "<-- m_name memberUpdatePro.jsp");
System.out.println(m_phone + "<-- m_phone memberUpdatePro.jsp");
System.out.println(m_birth + "<-- m_birth memberUpdatePro.jsp");
System.out.println(email_id + "<-- email_id memberUpdatePro.jsp");
System.out.println(email_addr + "<-- email_addr memberUpdatePro.jsp");

String m_email = email_id+"@"+email_addr;
System.out.println(m_email + "<-- m_email memberUpdatePro.jsp");
MemberDao memberDao = new MemberDao();
memberDao.updateMember(m_name, m_phone, m_birth, m_email, m_id);

response.sendRedirect("./mycgv.jsp");
%>