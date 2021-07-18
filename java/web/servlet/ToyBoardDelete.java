package web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.data.BoardDAO;

@WebServlet("/board.delete.servlet")
public class ToyBoardDelete extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getMethod().equals("GET")) {
			response.sendError(HttpServletResponse.SC_BAD_REQUEST);
			return;
		}
		
		request.setCharacterEncoding("UTF-8");
		
		int postNum=Integer.parseInt(request.getParameter("size"));
		for(int i=0; i<postNum; i++) {
			if(request.getParameter(i+"")!=null) {
				BoardDAO.getInstance().deletePost(Integer.parseInt(request.getParameter(i+"")));
			} else continue;
		}
		
		response.sendRedirect("/margin/toyBoard/JSP/main_board.jsp");
	
	}
	
	
}
