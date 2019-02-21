package com.llk.pro.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.llk.pro.vo.BoardVO;
import com.llk.pro.vo.EmployerVO;

public class BoardDAO {
	PreparedStatement pstmt = null;
	Statement stmt = null;

	String driver = "oracle.jdbc.driver.OracleDriver";
	static String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
	private static final String user = "system";
	private static final String passwd = "Lbi#1017";

	public BoardDAO() {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static ArrayList<BoardVO> BoardList() { // 게시판 목록
		String sql = "select * from board";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();

		try {
			conn = DriverManager.getConnection(url, user, passwd);
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setBcode(rs.getInt("bcode"));
				vo.setBid(rs.getString("bid"));
				vo.setBtitle(rs.getString("btitle"));
				vo.setBnote(rs.getString("bnote"));
				list.add(vo);
			}
			

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	public static BoardVO BoardDetailList(String a) {
		String sql = "select * from board where bcode=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardVO vo = new BoardVO();
		try {
			
			conn = DriverManager.getConnection(url, user, passwd);
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, a);
			rs = pstmt.executeQuery();
		if(rs.next()) {
			vo.setBcode(rs.getInt("bcode"));
			vo.setBid(rs.getString("bid"));
			vo.setBtitle(rs.getString("btitle"));
			vo.setBnote(rs.getString("bnote"));
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return vo;
	}

	public static void boardModify(BoardVO vo) {
		String sql = "update  board set bcode=?,bid=?,btitle=?,bnote=? where bcode=?";
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DriverManager.getConnection(url, user, passwd);
			System.out.println(vo.getBcode());
			System.out.println(vo.getBid());
			System.out.println(vo.getBtitle());
			System.out.println(vo.getBnote());
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, vo.getBcode());
			
			pstmt.setString(2, vo.getBid());
		
			pstmt.setString(3, vo.getBtitle());
		
			pstmt.setString(4, vo.getBnote());
	
			pstmt.setInt(5, vo.getBcode());
	
			pstmt.executeUpdate();


		} catch (SQLException e) {
			System.out.println("error");
		}
		
	}
	
	public static int employerModify(EmployerVO vo) {
		String sql = "update  employer set id=?,pwd=?,name=?,birth=?,sex=?,email=?,country=?,flag=?,phone=? where id=?";
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = DriverManager.getConnection(url, user, passwd);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPwd());
			pstmt.setString(3, vo.getName());
			pstmt.setInt(4, vo.getBirth());
			pstmt.setInt(5, vo.getSex());
			pstmt.setString(6, vo.getEmail());
			pstmt.setString(7, vo.getCountry());
			pstmt.setInt(8, vo.getFlag());
			pstmt.setInt(9, vo.getPhone());
			pstmt.setString(10, vo.getId());
			int r = pstmt.executeUpdate();
			System.out.println(vo.getId());
			System.out.println("변경된 row : " + r);

		} catch (SQLException e) {
			System.out.println("error");
		}
		return 0;
	}


}
