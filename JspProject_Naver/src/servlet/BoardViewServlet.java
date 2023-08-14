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
import javax.servlet.http.HttpSession;

import dao.BoardDao;
import dto.BoardDto;

@WebServlet("/board/view")
public class BoardViewServlet extends HttpServlet{
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
			bNo = req.getParameter("bno");
			int no = Integer.parseInt(bNo);
			
			ServletContext sc = this.getServletContext();
						
			conn = (Connection)sc.getAttribute("conn");
			
			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);
			
			BoardDto boardDto = boardDao.boardView(no);
			
			req.setAttribute("boardDto", boardDto);
			
			res.setContentType("text/html");
			res.setCharacterEncoding("UTF-8");
			
			rd = req.getRequestDispatcher("./BoardView.jsp");
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
	

}

