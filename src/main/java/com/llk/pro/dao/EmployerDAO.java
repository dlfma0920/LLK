package com.llk.pro.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.llk.pro.vo.EmployerVO;
import com.llk.pro.vo.JobinfoVO;

public class EmployerDAO {
	PreparedStatement pstmt = null;
	Statement stmt = null;

	String driver = "oracle.jdbc.driver.OracleDriver";
	static String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
	private static final String user = "system";
	private static final String passwd = "Lbi#1017";

	public EmployerDAO() {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static int loginCheck(EmployerVO vo) { // 로그인 판별

		int result = -2;
		String sql = "select * from employer where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection(url, user, passwd);
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, vo.getId());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString("id") != null && rs.getString("pwd").equals(vo.getPwd())) {
					result = 1; // 아이디& 비밀번호 일치
				} else if (rs.getString("id") != null && !rs.getString("pwd").equals(vo.getPwd())) {
					result = 0; // 아이디 일치 & 비밀번호 불일치
				}
			} else {
				result = -1; // 아이디 불일치
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
		return result;
	}

	public static int employerUpdate(EmployerVO employerVO) throws SQLException {
		String sql = "insert into employer values(?,?,?,?,?,?,?,?,?)";
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = DriverManager.getConnection(url, user, passwd);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, employerVO.getId());
			pstmt.setString(2, employerVO.getPwd());
			pstmt.setString(3, employerVO.getName());
			pstmt.setInt(4, employerVO.getBirth());
			pstmt.setInt(5, employerVO.getSex());
			pstmt.setString(6, employerVO.getEmail());
			pstmt.setString(7, employerVO.getCountry());
			pstmt.setInt(8, employerVO.getFlag());
			pstmt.setInt(9, employerVO.getPhone());
			pstmt.executeUpdate();
		} catch (SQLException e) {

		}
		return 0;
	}

	public static EmployerVO UserData(String a) {
		String sql = "select * from employer where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		EmployerVO vo = new EmployerVO();
		try {
			conn = DriverManager.getConnection(url, user, passwd);
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, a);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				
				vo.setId(a);
				vo.setPwd(rs.getString("pwd"));
				vo.setName(rs.getString("name"));
				vo.setBirth(rs.getInt("birth"));
				vo.setSex(rs.getInt("sex"));
				vo.setEmail(rs.getString("email"));
				vo.setCountry(rs.getString("country"));
				vo.setFlag(rs.getInt("flag"));
				vo.setPhone(rs.getInt("phone"));
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
		
		
		// TODO Auto-generated method stub
		return vo;
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

	public static void employerDelete(String a) {
		String sql = "delete from employer where id=?";
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DriverManager.getConnection(url, user, passwd);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, a);
			
			int r = pstmt.executeUpdate();
			
			System.out.println("변경된 row : " + r);

		} catch (SQLException e) {
			System.out.println("error");
		}
		
		
	}


}
