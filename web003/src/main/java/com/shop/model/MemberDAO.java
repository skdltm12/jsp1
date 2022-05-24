package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;

import com.shop.common.JDBCConnection;
import com.shop.common.MemberVO;

public class MemberDAO {
	private String encoding;
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;

public int addMember(MemberVO vo) {
		try {
			encoding = Base64.getEncoder().encodeToString(vo.getMpw().getBytes());
			conn = JDBCConnection.getConnection();
			sql = "insert into member values('?','?','?','?','?','?',sysdate,9)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, encoding);
			pstmt.setString(3, vo.getMname());
			pstmt.setString(4, vo.getMemail());
			pstmt.setString(5, vo.getMtel());
			pstmt.setString(6, vo.getMaddress());
			cnt = pstmt.executeUpdate();
			
		} catch(ClassNotFoundException e) {
			System.out.println("드라이버 로딩이 실패되었습니다.");
			e.printStackTrace();
		} catch(SQLException e) {
			System.out.println("SQL구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
			e.printStackTrace();
		} finally {
			JDBCConnection.close(pstmt, conn);
		}
		return cnt;
	}
}

