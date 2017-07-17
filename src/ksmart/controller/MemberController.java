package ksmart.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ksmart.action.*;
import ksmart.forward.MemberActionForward;
import ksmart.inter.MemberActionInterFace;

@WebServlet("/MemberController")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MemberController() {
        super();
    }

    protected void memberProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       	System.out.println("03 mProcess 호출  MenberController.java");
		String RequestURI=request.getRequestURI();
		String contextPath=request.getContextPath();
		String command=RequestURI.substring(contextPath.length());
		System.out.println(RequestURI + "<-- RequestURI MenberController.java");
		System.out.println(contextPath + "<-- contextPath MenberController.java");
		System.out.println(contextPath.length() + "<-- contextPath.length() MenberController.java");
		System.out.println(command + "<-- command MenberController.java");
		System.out.println("----------MenberController.java----------------");
		System.out.println();
		MemberActionForward forward = null;
		MemberActionInterFace action = null;
		 
		if(command.equals("/index.movie")) {
			System.out.println("04_01_/index.movie");
			forward = new MemberActionForward();
			forward.setRedirect(false);
			forward.setPath("./main.jsp");
			
		} else if(command.equals("/login.movie")) {
			System.out.println("04_02_/login.movie");
			forward = new MemberActionForward();
			forward.setRedirect(false);
			forward.setPath("./login/loginForm.jsp");
			
		} else if(command.equals("/login/login_pro.movie")) {
			System.out.println("04_02_/login/login_pro.movie");
			action = new MemberLoginProAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
			
		} else if(command.equals("/join.movie")) {
			System.out.println("04_04_/join.movie");
			forward = new MemberActionForward();
			forward.setRedirect(false);
			forward.setPath("./join/memberInsertForm.jsp");
			
		} else if(command.equals("/join/member_insert_pro.movie")) {
			System.out.println("04_05_/join/member_insert_pro.movie");
			action = new MemberInsertProAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		} else if(command.equals("/myInfoAction.movie")) {
			System.out.println("04_06_/myInfoAction.movie");
			action = new MemberMyInfoAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		} else if(command.equals("/myInfo.movie")) {
			System.out.println("04_07_/myInfo.movie");
			forward = new MemberActionForward();
			forward.setRedirect(false);
			forward.setPath("./myInfo.jsp");
			
		} else if(command.equals("/login/logout.movie")) {
			System.out.println("04_08_/login/logout.movie");
			action = new MemberLogoutAction();
			try{
				forward=action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		} else if(command.equals("/join/id_check.movie")) {
			System.out.println("04_09_/join/id_check.movie");
			MemberIdCheckProAction ci = new MemberIdCheckProAction();
			try{
				ci.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		} else if(command.equals("/myInfo/member_confirm.movie")) {
			System.out.println("04_10_/myInfo/member_confirm.movie");
			forward = new MemberActionForward();
			forward.setRedirect(false);
			forward.setPath("./confirm_password.jsp");
			
		}
		
		if(forward != null){
            if(forward.isRedirect()) {
                response.sendRedirect(forward.getPath());
            } else {
                RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
                System.out.println(forward.getPath() + "<--- forward.getPath()[jsp] MemberFrontController.java");
                System.out.println();
                dispatcher.forward(request, response);
            }
        }
		
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		memberProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		memberProcess(request, response);
	}

}
