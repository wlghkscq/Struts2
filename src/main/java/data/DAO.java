package data;

import java.security.PublicKey;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class DAO {

	public DAO() {

	}

	public DAO(ValueObject vo) {
		this.vo = vo;
	}

	private ValueObject vo;
	private Connection conn = null;
	private ResultSet rs;
	private PreparedStatement pstmt;

	private final String driver = "com.mysql.jdbc.Driver";
	private final String url = "jdbc:mysql://localhost:3308/comeng?useUnicode=true&characterEncoding=utf8";
	private final String id = "root";
	private final String pwd = "1234";

	public void makeConnection() {

		try {

			Class.forName(driver);
			System.out.println("=============="+Class.forName(driver)+"===========");
			conn = DriverManager.getConnection(url, id, pwd);
			System.out.println("============ db 연결 성공 =================");

		} catch (ClassNotFoundException cfe) {
			System.out.println("============ db 연결 실패 =================");

		} catch (SQLException se) {
			System.out.println("============ db 연결 실패 =================");

		}

	}

	public void close() {
		try {
			if (rs != null) {rs.close();rs = null;}
		} catch (SQLException e) { rs = null; }
		try {
			if (pstmt != null) {pstmt.close();pstmt = null;}
		} catch (SQLException e) { pstmt = null; }
		try {
			if (conn != null) {conn.close();conn = null;}
		} catch (SQLException e) { conn = null; }

	}
	
	public	ValueObject select(String id) {
		String sql ="";
		ValueObject vo = null;
		
		sql = "SELECT id, pwd FROM member WHERE id =?";
		makeConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			System.out.println("================"+pstmt+"======================");
			
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				vo = new ValueObject();
				vo.setId(rs.getString(1));
				vo.setPwd(rs.getString(2));
			}
			
		} catch (SQLException se) {
			vo = null;
			se.printStackTrace();
		}
		close();
		return vo;
	}
	
	public ArrayList<ValueObject> select(){
		
		ArrayList<ValueObject> aList = new ArrayList<ValueObject>();
		
		ValueObject vo = null;
		
		String sql = "SELECT * FROM member";
		makeConnection();
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				vo = new ValueObject();
				vo.setSeq(rs.getInt("seq"));
				vo.setId(rs.getString("id"));
				vo.setName(rs.getString("name"));
				vo.setTel1(rs.getString("tel1"));
				vo.setTel2(rs.getString("tel2"));
				vo.setTel3(rs.getString("tel3"));
				aList.add(vo);
			}
			
		} catch (SQLException se) {
			se.printStackTrace();
		}
		close();
		
		return aList;
		
	}
	
	

}
