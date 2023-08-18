package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

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


@WebServlet("/board/list")
public class BoardListServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//conn 객체 생성
		Connection conn = null;
		
		try {
			ServletContext sc = this.getServletContext();
			
			conn = (Connection)sc.getAttribute("conn");
			
			
			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);
			
			ArrayList<BoardDto> boardList = null;
			
			boardList = (ArrayList<BoardDto>)boardDao.selectList();
			
			req.setAttribute("boardList", boardList);
			
			int pages = 1;
			int pagesSet = 0;
			if (req.getParameter("pages") == null) {
				pages = 1;
				pagesSet = 10;
				req.setAttribute("currentPage", pages);
				req.setAttribute("pagesSet", pagesSet);
			}else {
				pages = Integer.parseInt(req.getParameter("pages"));
				pagesSet = 10 * pages;
				
				req.setAttribute("currentPage", pages);
				req.setAttribute("pagesSet", pagesSet);
				
			}
			
			
			// 페이지 수 저장하기
			// 페이지수 올림처리 함
			double totalPages = Math.ceil((double)boardList.size() / 10);
			req.setAttribute("totalPages", totalPages);
			
			res.setContentType("text/html");
			res.setCharacterEncoding("UTF-8");
			
			RequestDispatcher dispatcher = 
					req.getRequestDispatcher("/board/BoardList.jsp");
			dispatcher.include(req, res);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			req.setAttribute("error", e);
			req.setAttribute("msg", "my sorry");
			RequestDispatcher dispatcher = 
					req.getRequestDispatcher("/Error.jsp");
			
			dispatcher.forward(req, res);
		} 
	}
}
