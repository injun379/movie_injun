package ksmart.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ksmart.dao.MemberDao;

public class MemberIdCheckProAction {

	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("05_02_execute_MemberIdCheckProAction.java ");
		response.setCharacterEncoding("utf-8");
		
		String input_id = request.getParameter("id");
		System.out.println(input_id + " <-- input_id MemberIdCheckProAction.java");
		String checkRe = "";
		
		response.setContentType("text/html; charset-UTF-8");
		PrintWriter out = response.getWriter();

		MemberDao mdao = new MemberDao();
		if(input_id.equals("") || (input_id == null)) {
			checkRe = "EMPTY";
		} else {
			checkRe = mdao.idDuplictationCheck(input_id);
			if(checkRe.equals("OK")) {
				out.print("<div class='alert alert-success' id='alertSuccess'>");
      			out.print("사용가능합니다.");
      			out.print("<script>");
      			out.print("$('#check').val() = 'OK';");
      			out.print("</script>");
      			out.print("</div>");
			} else {
				out.print("<div class='alert alert-danger' id='alertDanger'>");
      			out.print("사용할수 없는 아이디입니다.");
      			out.print("<script>");
      			out.print("$('#check').val() = 'NO';");
      			out.print("</script>");
      			out.print("</div>");
			}
		}
	}

}
