package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDao;
import dto.BoardDto;

@WebServlet("/board/update")
public class BoardUpadteServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req
			, HttpServletResponse res)
					throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String bNo = "";

		RequestDispatcher rd = null;
		
		try {
			bNo = req.getParameter("updateBoardBno");
			int no = Integer.parseInt(bNo);
			
			
			ServletContext sc = this.getServletContext();
						
			conn = (Connection)sc.getAttribute("conn");
			
			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);
			
			BoardDto boardDto = boardDao.boardUpdate(no);
			
			req.setAttribute("boardDto", boardDto);
			
			res.setContentType("text/html");
			res.setCharacterEncoding("UTF-8");
			
			rd = req.getRequestDispatcher("./BoardUpdate.jsp");
			rd.forward(req, res);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			req.setAttribute("error", e);
			rd = req.getRequestDispatcher("./Error.jsp");
			
			rd.forward(req, res);
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		} // finally end

	} // doGet end
	
	@Override
	protected void doPost(HttpServletRequest req
			, HttpServletResponse res)
					throws ServletException, IOException {
		// TODO Auto-generated method stub
		BoardDto boardDto = null;
		
		Connection conn = null;

		try {
			String title = req.getParameter("title");
			String contents = req.getParameter("contents");
			String bno = req.getParameter("bno");

			int no = Integer.parseInt(bno);
			
			System.out.println(no);
			System.out.println(title);
			System.out.println(contents);
			boardDto = new BoardDto();
			
			boardDto.setBno(no);
			boardDto.setTitle(title);
			boardDto.setContents(contents);
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection)sc.getAttribute("conn");
			
			BoardDao memberDao = new BoardDao();
			memberDao.setConnection(conn);
			
			int result = memberDao.boardUpdate(boardDto);
			
			if (result == 0) {
				System.out.println("회원 정보 조회가 실패하였습니다.");
			}
			
			res.sendRedirect("./list");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			req.setAttribute("error", e);
			RequestDispatcher dispatcher = 
					req.getRequestDispatcher("./Error.jsp");
			
			dispatcher.forward(req, res);
		}
		
	}
}
