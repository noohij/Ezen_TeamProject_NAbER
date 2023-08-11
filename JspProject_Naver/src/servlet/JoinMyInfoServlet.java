package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Calendar;

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
		PreparedStatement pstmt = null;
		
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		String email = req.getParameter("email");
		String name = req.getParameter("name");
		String birthday = req.getParameter("birthday");
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
			
			
			String yearStr = birthday.substring(0, 4);
			String monthStr = birthday.substring(4, 6);
			String dayStr = birthday.substring(6, 8);
			
			int year = Integer.parseInt(yearStr);
	        int month = Integer.parseInt(monthStr) - 1;
	        int day = Integer.parseInt(dayStr);
			
	        Calendar calendar = Calendar.getInstance();
	        calendar.set(Calendar.YEAR, year);
	        calendar.set(Calendar.MONTH, month);
	        calendar.set(Calendar.DAY_OF_MONTH, day);
	        
	        java.util.Date birthdayDate = calendar.getTime();
	        
			memberDto.setBirthday(birthdayDate);
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
			
			res.sendRedirect("./list");
	
			
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
