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
			sql += " ?, ?, ?, ?, 'TRUE', SYSDATE, SYSDATE)";
			
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

//	public int login(String id, String pwd) throws SQLException {
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//
//		String sql = "";
//		sql += "SELECT PWD";
//		sql += " FROM MEMBERS";
//		sql += " WHERE ID = ?";
////		sql += "AND PWD = ?";
//
//
//		try {
//			pstmt = connection.prepareStatement(sql);
//
////			int colIndex = 1;
//
//			pstmt.setString(1, id);
////			pstmt.setString(colIndex, pwd);
//
//			rs = pstmt.executeQuery();
//			
//			if (rs.next()) {
//				if(rs.getString(1).contentEquals(pwd)) {
//					return 1;
//				}else {
//					return 0;
//				}
////				pwd = rs.getString("pwd");
////				id = rs.getString("id");
////
////				memberDto.setEmail(pwd);
////				memberDto.setName(id);
////
////				return memberDto;
//			}
//			return -1;
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
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
//		return -2;
//
////		return null;
//	}
//	
}
