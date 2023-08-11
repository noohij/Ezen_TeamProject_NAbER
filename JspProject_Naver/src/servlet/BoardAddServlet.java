package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDao;
import dto.BoardDto;


@WebServlet("board/add")
public class BoardAddServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, 
			HttpServletResponse res) 
			throws ServletException, IOException {
		System.out.println("doGet을 탄다");
		
		res.setContentType("text/html");
		res.setCharacterEncoding("UTF-8");
		
		res.sendRedirect("./BoardAdd.jsp");
	}
	
	//데이터베이스에 데이터 추가
	protected void doPost(HttpServletRequest req, 
		HttpServletResponse res) 
			throws ServletException, IOException {

		Connection conn = null;
		
		PreparedStatement pstmt = null;
		
		String name = req.getParameter("name");
		String title = req.getParameter("title");
		String email = req.getParameter("email");
		String contents = req.getParameter("contents");
		String mod_pwd = req.getParameter("mod_pwd");
		
		try {
			BoardDto boardDto = new BoardDto(name, title
					, email, contents, mod_pwd);
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection)sc.getAttribute("conn");
			
			BoardDao boardDao = new BoardDao();
			
			boardDao.setConnection(conn);
			
			int resultNum = 0;
			
			resultNum = boardDao.boardInsert(boardDto);
				
//			res.sendRedirect("./list");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
			req.setAttribute("error", e);
			req.setAttribute("msg", "게시판 추가하다 오류남");
			RequestDispatcher dispatcher = 
					req.getRequestDispatcher("/Error.jsp");
			
			dispatcher.forward(req, res);
		} 
		
	}
}
