package com.llk.pro.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.llk.pro.vo.EmployerVO;

public class EmployerDAO {
	PreparedStatement pstmt = null;
	Statement stmt = null;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	static String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
	private static final String user = "lcj225";
	private static final String passwd = "sky58062";
	
	public EmployerDAO(){
		try{
			Class.forName(driver);
		}catch(Exception e){
			e.printStackTrace();
		}
	}


	public static  int loginCheck(EmployerVO vo) { // 로그인 판별
		
		int result =-2;
		String sql = "select * from employer where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DriverManager.getConnection(url,user,passwd);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,vo.getId()); 
			rs = pstmt.executeQuery();
			

			  if(rs.next()) {
				  if(rs.getString("id") != null && rs.getString("pwd").equals(vo.getPwd())) { 
					  result =1; // 아이디& 비밀번호 일치
				  }else if(rs.getString("id") != null && !rs.getString("pwd").equals(vo.getPwd())){ 
					  result = 0; // 아이디 일치 & 비밀번호 불일치
				  } 
				  }else {
					  result = -1; // 아이디 불일치
			  }
			 
			
		}catch(Exception e ) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!= null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}


	public static int employerUpdate(EmployerVO employerVO) throws SQLException {
		String sql = "insert into employer values(?,?,?,?,?,?,?,?)";
		Connection con = null;
		PreparedStatement pstmt = null;
	
		
		try {
			con = DriverManager.getConnection(url,user,passwd);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,employerVO.getId());
			pstmt.setString(2,employerVO.getPwd());
			pstmt.setString(3,employerVO.getName());
			pstmt.setInt(4,employerVO.getBirth());
			pstmt.setInt(5,employerVO.getSex());
			pstmt.setString(6,employerVO.getEmail());
			pstmt.setString(7,employerVO.getCountry());
			pstmt.setInt(8,employerVO.getFlag());
			pstmt.executeUpdate();
		}catch(SQLException e) {
			
		}
		return 0;
	}
	
	/*
public boolean insertDB(BoardEntity board) {
		boolean success = false;
		connect();
		String sql = "isert into board values(0,?,?,?,?,sysdate(),?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,board.getName());
			pstmt.setString(2,board.getPasswd());
			pstmt.setString(3,board.getTitle());
			pstmt.setString(4,board.getEmail());
			pstmt.setString(5,board.getContent());
			pstmt.executeUpdate();
			success = true;
		}catch(SQLException e) {
			e.printStackTrace();
			return success;
		}
		finally {
			disconnect();
		}
		return success;
	}
	 */
	

}
