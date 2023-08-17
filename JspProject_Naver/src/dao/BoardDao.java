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
		
		String sql = "SELECT BNO, USER_NAME, TITLE, USER_EMAIL,";
		sql += "BOARD_CONTENTS, MOD_PWD, MNO";
		sql += " FROM BOARD";
		sql += " WHERE BNO = ?";
		
		
		try {
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setInt(1, no);
			
			rs = pstmt.executeQuery();
			
			int bno = 0;
			String name = "";
			String title = "";
			String email = "";
			String contents = "";
			String mod_pwd = "";
			int mno = 0;

			if (rs.next()) {
				bno = rs.getInt("BNO");
				name = rs.getString("USER_NAME");
				title = rs.getString("TITLE");
				email = rs.getString("USER_EMAIL");
				contents = rs.getString("BOARD_CONTENTS");
				mod_pwd = rs.getString("MOD_PWD");
				mno = rs.getInt("MNO");
				
				boardDto = new BoardDto(bno, name
						, title, email, contents, mod_pwd, mno);

				
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
			sql += " VALUES(BOARD_NO_SEQ.NEXTVAL, ?, ?";
			sql += ", ?, ?, ?, SYSDATE, SYSDATE, 3";
			sql += ")";
			
			pstmt = connection.prepareStatement(sql);
			
			int colIndex = 1;
			
			pstmt.setString(colIndex++, name);
			pstmt.setString(colIndex++, title);
			pstmt.setString(colIndex++, email);
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
	
	public BoardDto boardUpdate(int no) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		BoardDto boardDto = null;
		
		String sql = "SELECT BNO, USER_NAME, TITLE, USER_EMAIL,";
		sql += "BOARD_CONTENTS, MOD_PWD, MNO";
		sql += " FROM BOARD";
		sql += " WHERE BNO = ?";
		
		
		try {
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setInt(1, no);
			
			rs = pstmt.executeQuery();
			
			int bNo = 0;
			String name = "";
			String title = "";
			String email = "";
			String contents = "";
			String mod_pwd = "";
			int mno = 0;

			if (rs.next()) {
				
				bNo = rs.getInt("BNO");
				name = rs.getString("USER_NAME");
				title = rs.getString("TITLE");
				email = rs.getString("USER_EMAIL");
				contents = rs.getString("BOARD_CONTENTS");
				mod_pwd = rs.getString("MOD_PWD");
				mno = rs.getInt("MNO");
				
				boardDto = new BoardDto(bNo, name, title
						, email, contents, mod_pwd, mno);
			
				
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
	}// 게시판 수정 끝
	
	
	public int boardUpdate(BoardDto boardDto) throws Exception {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = "";
		sql = "UPDATE BOARD";
		sql += " SET TITLE = ?, BOARD_CONTENTS = ?, MOD_DATE = SYSDATE";
		sql += " WHERE BNO = ?";
		
		try {
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setString(1, boardDto.getTitle());
			pstmt.setString(2, boardDto.getContents());
			pstmt.setInt(3, boardDto.getBno());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw e;
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		} // finally 종료
		
		return result;
	}
	
	public List<BoardDto> searchList(String searchType
			, String boardContents) throws Exception{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println(searchType);
		System.out.println(boardContents);
		try {
			String sql = "";
			if (searchType.equals("title")) {
				sql = "SELECT BNO, TITLE, BOARD_CONTENTS"
						+ " , USER_NAME, MOD_DATE, CRE_DATE";
				sql += " FROM BOARD";
				sql += " WHERE TITLE LIKE ?";
			}else if (searchType.equals("contents")) {
				sql = "SELECT BNO, TITLE, BOARD_CONTENTS"
						+ " , USER_NAME, MOD_DATE, CRE_DATE";
				sql += " FROM BOARD";
				sql += " WHERE BOARD_CONTENTS LIKE ?";
			}else if (searchType.equals("writer")) {
				sql = "SELECT BNO, TITLE, BOARD_CONTENTS"
						+ " , USER_NAME, MOD_DATE, CRE_DATE";
				sql += " FROM BOARD";
				sql += " WHERE USER_NAME LIKE ?";
			}
			
			
			
			boardContents = "%" + boardContents + "%";
			pstmt = connection.prepareStatement(sql);
			System.out.println(boardContents);
			pstmt.setString(1, boardContents);
			
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
		

	} // 검색 결과 끝
}
