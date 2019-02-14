package com.llk.pro.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.llk.pro.vo.EmployerVO;
import com.llk.pro.vo.JobinfoVO;

public class JobInfoDAO {
	PreparedStatement pstmt = null;
	Statement stmt = null;

	String driver = "oracle.jdbc.driver.OracleDriver";
	static String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
	private static final String user = "system";
	private static final String passwd = "Lbi#1017";

	public JobInfoDAO() {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static ArrayList<JobinfoVO> JobInfoList() { // 로그인 판별

		String sql = "select * from jobinfo";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<JobinfoVO> list = new ArrayList<JobinfoVO>();

		try {
			conn = DriverManager.getConnection(url, user, passwd);
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				JobinfoVO vo = new JobinfoVO();
				vo.setCcode(rs.getInt("ccode"));
				vo.setCtitle(rs.getString("ctitle"));
				vo.setCname(rs.getString("cname"));
				vo.setCpage(rs.getString("cpage"));
				vo.setCarea(rs.getString("carea"));
				vo.setCnum(rs.getInt("cnum"));
				vo.setClocation(rs.getString("clocation"));
				vo.setCposition(rs.getString("cposition"));
				vo.setCtime(rs.getString("ctime"));
				vo.setCsaraly(rs.getInt("csalary"));
				vo.setCalse(rs.getString("calse"));
				
				System.out.println(rs.getString("ctitle"));
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

	public static int employerUpdate(EmployerVO employerVO) throws SQLException {
		String sql = "insert into employer values(?,?,?,?,?,?,?,?)";
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
			pstmt.executeUpdate();
		} catch (SQLException e) {

		}
		return 0;
	}

	/*
	 * public boolean insertDB(BoardEntity board) { boolean success = false;
	 * connect(); String sql = "isert into board values(0,?,?,?,?,sysdate(),?)"; try
	 * { pstmt = con.prepareStatement(sql); pstmt.setString(1,board.getName());
	 * pstmt.setString(2,board.getPasswd()); pstmt.setString(3,board.getTitle());
	 * pstmt.setString(4,board.getEmail()); pstmt.setString(5,board.getContent());
	 * pstmt.executeUpdate(); success = true; }catch(SQLException e) {
	 * e.printStackTrace(); return success; } finally { disconnect(); } return
	 * success; }
	 */

}
