package web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.data.BoardDAO;
import web.data.BoardDTO;

@WebServlet("/board.servlet.toy")
public class ToyBoard extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();
		
		// 문서작업
		out.println("<!DOCTYPE html>");
		
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='UTF-8'>");
		out.println("<title>게시판</title>");
		out.println("<!-- Favicon 추가 (16x16) -->");
		out.println("<link rel='icon' href='/margin/images/info.png'>");
		out.println("<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Sofia'>");
		out.println("<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css' rel='stylesheet' integrity='sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC' crossorigin='anonymous'>");
		out.println("<link rel='stylesheet' href='/margin/styles.css'>");
		out.println("<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js' integrity='sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM' crossorigin='anonymous'></script>");
		out.println("<script type='text/javascript' src='https://code.jquery.com/jquery-3.6.0.min.js'></script>");
		
		out.println("<style type='text/css'>");
		out.println(".inline {");
		out.println("display: inline;");
		out.println("}");
		/*	
		out.println("hr {");
		out.println("margin-top: 0;");
		out.println("color: #9d9e9f;");
		out.println("}");
		*/		
		out.println("</style>");
		
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>test</h2>");
		out.println("<hr>");
		out.println("<table class='table' style='text-align: center'>");
		out.println("<tr>");
		out.println("<th>번호</th><th>작성자</th><th>제목</th><th>내용</th><th>작성일</th>");
		out.println("</tr>");
		
		List<BoardDTO> postList = BoardDAO.getInstance().getAllPosts();
		if(postList.isEmpty()) {
			out.println("<tr><td colspan='5'>작성된 게시글이 없습니다.<td></tr>");
		} else {
			for(int i=0; i<postList.size(); i++) {
				out.println("<tr id=r"+i+">");
				out.println("<th>"+postList.get(i).getNo()+"</th><th>"+postList.get(i).getName()+"</th><th>"+postList.get(i).getTitle()+"</th><th>"+postList.get(i).getContent()+"</th><th>"+postList.get(i).getRegDate()+"</th>");
				out.println("</tr>");
			}
		}
		
		
		out.println("</table>");
		out.println("<hr>");
		
		out.println("<button onclick='location.href=\"/margin/toyBoard/write_post.html\"'>글쓰기</button>");
		out.println("<button id='delete' onclick='postDelete();'>삭제</button>");
		
		out.println("<script type='text/javascript' src='/margin/toyBoard/delete_option.js'></script>");
		
		out.println("</body>");
		out.println("</html>");
		
		
		
	}
}
