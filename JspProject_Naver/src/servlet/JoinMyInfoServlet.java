package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import dto.MemberDto;

/**
 * Servlet implementation class MemberAddServlet
 */
@WebServlet("/join/myInfo")
public class JoinMyInfoServlet extends HttpServlet {
    
	// 내 정보 입력창 불러오기
	@Override
	protected void doGet(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {
		
		RequestDispatcher rd = req.getRequestDispatcher("./JoinMyInfo.jsp");
		rd.forward(req, res);
	}
	
	// 
	@Override
	protected void doPost(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {
		
		Connection conn = null;
//		PreparedStatement pstmt = null;
		
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		String email = req.getParameter("email");
		String name = req.getParameter("name");
		String birthdayStr = req.getParameter("birthday");
		String telecom = req.getParameter("telecom");
		String gender = req.getParameter("gender");
		String nationality = req.getParameter("nationality");
		String phoneNum = req.getParameter("phoneNum");
		
		try {
			MemberDto memberDto = new MemberDto();
			
			memberDto.setId(id);
			memberDto.setPwd(pwd);
			memberDto.setEmail(email);
			memberDto.setName(name);
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			java.util.Date parsedDate = sdf.parse(birthdayStr);
			java.util.Date birthday = new java.sql.Date(parsedDate.getTime());
			
			memberDto.setBirthday(birthday);
			memberDto.setTelecom(telecom);
			memberDto.setGender(gender);
			memberDto.setNationality(nationality);
			memberDto.setPhonenumber(phoneNum);
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection)sc.getAttribute("conn");
			
			MemberDao memberDao = new MemberDao();
			memberDao.setConnection(conn);
			
			int resultNum = 0;
			
			resultNum = memberDao.memberInsert(memberDto);
			
//			res.sendRedirect("../auth/loginForm");
			
			res.setContentType("text/html; charset=UTF-8");
            PrintWriter out = res.getWriter();
            out.println("<script>alert('회원가입이 완료되었습니다! 로그인 후 이용해주세요.'); location.href='../auth/loginForm';</script>");
            out.flush();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
//			throw new ServletException(e);
			
			req.setAttribute("msg", "회원추가하다 오류남");
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("/Error.jsp");
			//포워딩
			dispatcher.forward(req, res);
		} 
	}

}
