package web.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		String contextPath=request.getContextPath();
		String command=uri.substring(contextPath.length());
		
		/*
			회원 기능
			회원가입, 로그인
			LoginFormModel, LoginModel
			JoinFormModel, JoinModel

		 */
		Action action=null;
		if(command.equals("/loginForm.do")) {
			action=new LoginFormModel();
		} else if(command.equals("/joinForm.do")) {
			action=new JoinFormModel();
		} else if(command.equals("/join.do")) {
			action=new JoinModel();
		} else if(command.equals("/login.do")) {
			action=new LoginModel();
		} else if(command.equals("/error.do")) {
			action=new ErrorModel();
		} else {
			action=new ErrorModel();
		}
		
		ForwardInfo info=action.execute(request, response);
		
		
		/*
		 * 웹 경로 이동시 sendRedirect는 절대 경로 표시시 Server Root를 기준(WAS)으로 움직인다.
		 * 
		 * ([/]로 시작하는 상대경로 표시 방법을 사용하면 server container root (WAS - 톰캣) 경로에 대한 상대경로로
		 * 해석한다.
		 * If the location is relative with a leading '/' the container interprets it as relative to the servlet container root.)
		 * 
		 * 하지만, 포워드 이동 시 사용하는 getRequestDispatcher는 상대경로를 매개변수로 받으며 절대경로 표시방식으로 경로를 전달받아도
		 * 현재의 Context root의 상대경로로 해석된다.
		 * 
		 * -> 이동시 경로는 상대경로로 표기하면 편함.
		 * 
		 * The pathname specified may be relative, although it cannot extend outside the current servlet context. 
		 * If the path begins with a "/" it is interpreted as relative to the current context root. 
		 * 
		 * 
		 */
		if(info.isForward()) {
			request.getRequestDispatcher(info.getPath()).forward(request, response);
		} else {
			response.sendRedirect(info.getPath());
		}
		
	}
}
