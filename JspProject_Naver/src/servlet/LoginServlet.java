package servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//jsp에서 정보 받을 객체 만들기
		RequestDispatcher rd = req.getRequestDispatcher("./auth/loginForm.jsp");
		rd.forward(req, res); // 객체에 요청, 반응 수신
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = null; // ??db연결
		
		try {
			// jsp(화면단)에서 받을 정보 객체 생성
			String id = req.getParameter("id"); 
			String pwd = req.getParameter("pwd");
			
			ServletContext sc = this.getServletContext();//??? 서블릿과 연결로 추정됨
			
			conn = (Connection)sc.getAttribute("conn");//????데이터베이스와 서블릿의 연결로 추정
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
