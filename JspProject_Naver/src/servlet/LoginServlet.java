package servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;
import javax.xml.ws.Dispatch;

import org.apache.catalina.connector.Request;
import org.apache.catalina.ha.backend.Sender;

import dao.MemberDao;
import dto.MemberDto;
import sun.rmi.server.Dispatcher;

@WebServlet("/auth/loginForm")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//jsp에서 정보 받을 객체 만들기
		RequestDispatcher rd = req.getRequestDispatcher("/auth/loginForm.jsp");
		rd.forward(req, res); // 객체에 요청, 반응 수신
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = null; // db연결
		
		try {
			// jsp(화면단)에서 받을 정보 객체 생성
			String id = req.getParameter("id"); 
			String pwd = req.getParameter("pwd");
			
			ServletContext sc = this.getServletContext();// 서블릿과 연결로 추정됨
			
			conn = (Connection)sc.getAttribute("conn");//데이터베이스와 서블릿의 연결로 추정
			
			MemberDao memberDao = new MemberDao();//dao에서 sql 실행한 결과 가져와서 담기
			memberDao.setConnection(conn);//dao와 db연결
			
			MemberDto memberDto = memberDao.memberExist(id, pwd);//id,pwd매개 변수로 가져가서 exist 돌린 애들을 리턴값 반환해주는 dto에 담기
		
			HttpSession session = req.getSession();
			
			String error = "왜 안됨";
			
		//회원이 존재한다면 세션에 담고 게시판 페이지로 이동
		if (memberDto != null) {

//			memberDto = res.getParameter("memberDto");
			
			session.setAttribute("member", memberDto);
			res.sendRedirect("../board/list");
		}
			
			//회원이 없다면 로그인 페이지로 이동해서 메세지 띄우기
		else{
			
//			res.sendRedirect("../auth/loginForm");
//			req.setAttribute(error, "dsdsdsasdsada");
			
//			req.
//			res.sendRedirect("../auth/loginForm");
//			res.sendRedirect("../auth/loginForm");
			
		}			

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				throw new ServletException();
			}
		}

}
