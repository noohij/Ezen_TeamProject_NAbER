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

			String sql = "SELECT BNO, TITLE, BOARD_CONTENTS,"
					+ " USER_NAME, MOD_DATE, CRE_DATE";
			sql += " FROM BOARD";
			
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
				
				BoardDto boardDto = new BoardDto(no, title, contents, name, modDate, creDate);
				
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
}
