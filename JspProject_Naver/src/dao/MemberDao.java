package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import dto.BoardDto;
import dto.MemberDto;;



public class MemberDao {
	
	private Connection connection;
	
	public void setConnection(Connection conn) {
		this.connection = conn;
	}
	public MemberDto memberExist(String id, String pwd) 
			throws SQLException{
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "";
			sql += "SELECT ID, PWD";
			sql	+= " FROM MEMBERS";
			sql += " WHERE ID = ?";
			sql += "AND PWD = ?";
			
			String name = "";
			
			try {
				pstmt = connection.prepareStatement(sql);
				
				int colIndex = 1;
				
				pstmt.setString(colIndex++, id);
				pstmt.setString(colIndex, pwd);
				
				rs = pstmt.executeQuery();
				
				MemberDto memberDto = new MemberDto();

				if (rs.next()) {
//					email = rs.getString("email");
					name = rs.getString("mname");
					
//					memberDto.setEmail(email);
					memberDto.setName(name);
					
					return memberDto;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
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
	
	
	
	
	
	
	
	
	


	
}