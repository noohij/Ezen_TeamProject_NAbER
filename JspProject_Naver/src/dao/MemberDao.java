package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.sql.Date;

import dto.MemberDto;

public class MemberDao {

	private Connection connection;

	public void setConnection(Connection conn) {
		this.connection = conn;
	}

	public int memberInsert(MemberDto memberDto) throws Exception {
		int resultNum = 0;

		PreparedStatement pstmt = null;

		try {

			String id = memberDto.getId();
			String pwd = memberDto.getPwd();
			String email = memberDto.getEmail();
			String name = memberDto.getName();
			
			java.util.Date birthday = memberDto.getBirthday();
			java.sql.Date birthdaySql = new java.sql.Date(birthday.getTime());
			
			String telecom = memberDto.getTelecom();
			String gender = memberDto.getGender();
			String nationality = memberDto.getNationality();
			String phoneNum = memberDto.getPhonenumber();

			String sql = "";
			sql += "INSERT INTO MEMBERS";
			sql += " (MNO, ID, PWD, EMAIL, NAME, BIRTHDAY, TELECOM, GENDER,";
			sql += " NATIONALITY, PHONENUMBER, CERTNAME, CRE_DATE, MOD_DATE)";
			sql += " VALUES(MEMBERS_NO_SEQ.NEXTVAL, ?, ?, ?, ?, ?,";
			sql += " ?, ?, ?, ?, SYSDATE, SYSDATE)";
			
			pstmt = connection.prepareStatement(sql);

			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, email);
			pstmt.setString(4, name);
			pstmt.setDate(5, birthdaySql);
			pstmt.setString(6, telecom);
			pstmt.setString(7, gender);
			pstmt.setString(8, nationality);
			pstmt.setString(9, phoneNum);
			
			resultNum = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		} // end of finally
		return resultNum;
		
	} // end of memberInsert

	public MemberDto memberExist(String id, String pwd) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "";
		sql += "SELECT ID, PWD, MNO, NAME, EMAIL";
		sql += " FROM MEMBERS";
		sql += " WHERE ID = ?";
		sql += "AND PWD = ?";


		try {
			pstmt = connection.prepareStatement(sql);

			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			
			rs = pstmt.executeQuery();

			MemberDto memberDto = new MemberDto();
			
			int mno = 0;	
			String email = "";	
			String name = "";	
			
			if (rs.next()) {
				mno = Integer.parseInt(rs.getString("MNO")) ;
				name = rs.getString("NAME");
				id = rs.getString("id");
				email = rs.getString("EMAIL");
				// 사용자 번호, 사용자 이름, 사용자 아이디, 사용자 이메일 
				memberDto.setMno(mno);
				memberDto.setName(name);
				memberDto.setId(id);
				memberDto.setEmail(email);
				

				return memberDto;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} // finally 종료

		return null;
	}
	public String memberIdCert(String name, String phonenumber) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "";
		sql += "SELECT ID";
		sql += " FROM MEMBERS";
		sql += " WHERE name = ?";
		sql += " AND phonenumber = ?";


		try {
			pstmt = connection.prepareStatement(sql);

			pstmt.setString(1, name);
			pstmt.setString(2, phonenumber);
			
			
			rs = pstmt.executeQuery();

//			MemberDto memberDto = new MemberDto();
			
			String id = "";	
			if (rs.next()) {
				id = rs.getString("ID");
				// 사용자 번호, 사용자 이름, 사용자 아이디, 사용자 이메일 
//				memberDto.setId(id);
				
				return id;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} // finally 종료
		return null;

		
	}
	public String memberPwdCert(String name, String phonenumber) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "";
		sql += "SELECT PWD";
		sql += " FROM MEMBERS";
		sql += " WHERE name = ?";
		sql += " AND phonenumber = ?";


		try {
			pstmt = connection.prepareStatement(sql);

			pstmt.setString(1, name);
			pstmt.setString(2, phonenumber);
			
			
			rs = pstmt.executeQuery();

//			MemberDto memberDto = new MemberDto();
			
			String pwd = "";	
			if (rs.next()) {
				pwd = rs.getString("PWD");
				// 사용자 번호, 사용자 이름, 사용자 아이디, 사용자 이메일 
//				memberDto.setId(id);
				
				return pwd;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} // finally 종료
		return null;
	}
//	public String memberPwdCertId(String id) throws SQLException {
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//
//		String sql = "";
//		sql += "SELECT PWD";
//		sql += " FROM MEMBERS";
//		sql += " WHERE ID = ?";
//
//
//		try {
//			pstmt = connection.prepareStatement(sql);
//
//			pstmt.setString(1,id);
//			
//			rs = pstmt.executeQuery();
//
//			String pwd = "";
//			
//			if (rs.next()) {
//				pwd = rs.getString("PWD");
//				
//				return pwd;
//			}
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		} 
//		finally {
//			try {
//				if (rs != null) {
//					rs.close();
//				}
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			try {
//				if (pstmt != null) {
//					pstmt.close();
//				}
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		} // finally 종료
//		return null;
//
//		
//	}
	

}
