package web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.data.BoardDAO;
import web.data.BoardDTO;

@WebServlet("/board.input.servlet")
public class ToyBoardInsert extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getMethod().equals("GET")) {
			response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return;
		}
		request.setCharacterEncoding("utf-8");
		
		
		BoardDTO post=new BoardDTO();
		post.setName(request.getParameter("name"));
		post.setTitle(request.getParameter("title"));
		post.setContent(request.getParameter("content"));

		int row=BoardDAO.getInstance().insertPost(post);
		
		if(row!=1) {
			response.sendError(HttpServletResponse.SC_BAD_REQUEST);
			return;
		} else {
			response.sendRedirect("board.servlet.toy");
		}
	}
}
