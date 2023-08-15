package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import dto.BoardDto;



public class BoardDao {
	
	private Connection connection;
	
	public void setConnection(Connection conn) {
		this.connection = conn;
	}
	
	public List<BoardDto> selectList() throws Exception{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT BNO, TITLE, BOARD_CONTENTS"
					+ " , USER_NAME, MOD_DATE, CRE_DATE";
			sql += " FROM BOARD";
			sql += " ORDER BY BNO";
			
			pstmt = connection.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			ArrayList<BoardDto> boardList = new ArrayList<BoardDto>();
			
			int no = 0;
			String title = "";
			String contents = "";
			String name = "";
			Date modDate = null;
			Date creDate = null;
			
			while (rs.next()) {
				no = rs.getInt("BNO");
				title = rs.getString("TITLE");
				contents = rs.getString("BOARD_CONTENTS");
				name = rs.getString("USER_NAME");
				modDate = rs.getDate("MOD_DATE");
				creDate = rs.getDate("CRE_DATE");

				BoardDto boardDto 
					= new BoardDto(no, title, contents
							, name, modDate, creDate);

				boardList.add(boardDto);
				
			}
			
			return boardList;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		

	} // 게시글목록 끝
	
	
	public BoardDto boardView(int no) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		BoardDto boardDto = null;
		
		String sql = "SELECT USER_NAME, TITLE, USER_EMAIL,";
		sql += "BOARD_CONTENTS, MOD_PWD";
		sql += " FROM BOARD";
		sql += " WHERE BNO = ?";
		
		
		try {
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setInt(1, no);
			
			rs = pstmt.executeQuery();
			
			
			String name = "";
			String title = "";
			String email = "";
			String contents = "";
			String mod_pwd = "";

			if (rs.next()) {
				name = rs.getString("USER_NAME");
				title = rs.getString("TITLE");
				email = rs.getString("USER_EMAIL");
				contents = rs.getString("BOARD_CONTENTS");
				mod_pwd = rs.getString("MOD_PWD");
				
				boardDto = new BoardDto(name
						, title, email, contents, mod_pwd);

				
			}
			
			return boardDto;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
		} //finally end
		
		return boardDto;
	}// 게시판 상세 보기 끝
	
	public int boardInsert(BoardDto boardto) throws Exception{
		int resultNum = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			
			String name = boardto.getUser_name();
			String title = boardto.getTitle();
			String email = boardto.getUser_email();
			String contents = boardto.getContents();
			String mod_pwd = boardto.getMod_pwd();
			
			String sql = "";
			
			// 나중에 연동 했을때 USER_NAME, USER_EMAIL,MNO 추가로 변수 추가 해줘야됨
			sql += "INSERT INTO BOARD";
			sql += " (BNO, USER_NAME, TITLE, USER_EMAIL";
			sql += ", BOARD_CONTENTS , MOD_PWD, CRE_DATE, MOD_DATE, MNO)";
			sql += " VALUES(BOARD_NO_SEQ.NEXTVAL, '임찬우', ?";
			sql += ", 'chanu@test.com', ?, ?, SYSDATE, SYSDATE, 3";
			sql += ")";
			
			pstmt = connection.prepareStatement(sql);
			
			int colIndex = 1;
			
//			pstmt.setString(colIndex++, name);
			pstmt.setString(colIndex++, title);
//			pstmt.setString(colIndex++, email);
			pstmt.setString(colIndex++, contents);
			pstmt.setString(colIndex, mod_pwd);
			
			resultNum = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} //if 종료
		}
		
		return resultNum;

	} // 회원목록 끝
}
