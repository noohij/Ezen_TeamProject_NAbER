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

import dao.BoardDao;
import dto.BoardDto;

@WebServlet("/board/search")
public class SearchServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = null;
		
		try {
			ServletContext sc = this.getServletContext();
			
			conn = (Connection)sc.getAttribute("conn");
			
			String searchType = req.getParameter("searchType");
			String contents = req.getParameter("contents");
			
			req.setAttribute("contents", contents);
			
			BoardDao boardDao = new BoardDao();
			boardDao.setConnection(conn);
			
			ArrayList<BoardDto> boardList = null;
			
			boardList 
				= (ArrayList<BoardDto>)boardDao.searchList(searchType
						, contents);
			
			req.setAttribute("boardList", boardList);
			
			int pages = 1;
			if (req.getParameter("pages") == null) {
				pages = 1;
				int pagesSet = 10;
				req.setAttribute("currentPage", 1);
				req.setAttribute("pagesSet", pagesSet);
			}else {
				pages = Integer.parseInt(req.getParameter("pages"));
				int pagesSet = 10 * pages;
				
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
					req.getRequestDispatcher("/board/BoardSearchList.jsp");
			
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
