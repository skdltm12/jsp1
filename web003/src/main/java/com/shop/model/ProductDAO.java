package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.BoardVO;
import com.shop.common.JDBCConnection;
import com.shop.common.ProductVO;

public class ProductDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	
	public int addProduct(ProductVO vo) {
		try {
			conn = JDBCConnection.getConnection();
			sql = "insert into product values (?,?,?,?,?,?,?,'','0')";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getPid());
			pstmt.setString(2, vo.getCate_id());
			pstmt.setString(3, vo.getPname());
			pstmt.setInt(4, vo.getPprice());
			pstmt.setString(5, vo.getPcontent());
			pstmt.setInt(6, vo.getPamount());
			pstmt.setString(7, vo.getPimg());
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
	public int editProduct(ProductVO vo) {
		try {
		conn = JDBCConnection.getConnection();
		sql = "update product set cate_id=?, pname=?, pprice=?, pcontent=?,pamount=?,pimg=?,regdate=sysdate where pid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getCate_id());
		pstmt.setString(2, vo.getPname());
		pstmt.setInt(3, vo.getPprice());
		pstmt.setString(4, vo.getPcontent());
		pstmt.setInt(5, vo.getPamount());
		pstmt.setString(6, vo.getPimg());
		pstmt.setInt(7, vo.getPid());			
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
	public int delProduct(ProductVO vo) {
		
		return cnt;
	}
	public ProductVO getProduct(int pid) {
		ProductVO vo = new ProductVO();
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from product where pid=?";		
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setPid(rs.getInt("pid"));
				vo.setCate_id(rs.getString("cate_id"));
				vo.setPname(rs.getString("pname"));
				vo.setPcontent(rs.getString("pcontent"));
				vo.setPamount(rs.getInt("pamount"));
				vo.setPprice(rs.getInt("pprice"));
				vo.setRegdate(rs.getDate("regdate"));
				vo.setPimg(rs.getString("pimg"));
			}
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
			JDBCConnection.close(rs, pstmt, conn);
		}
		return vo;
	}
	public ArrayList<ProductVO> getProductList(){
		ArrayList<ProductVO> list = null;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from product";					
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<ProductVO>();
			while(rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setPid(rs.getInt("pid"));
				vo.setCate_id(rs.getString("cate_id"));
				vo.setPname(rs.getString("pname"));
				vo.setPprice(rs.getInt("pprice"));
				vo.setPcontent(rs.getString("pcontent"));
				vo.setPamount(rs.getInt("pamount"));
				vo.setPimg(rs.getString("pimg"));
				vo.setRegdate(rs.getDate("regdate"));
				vo.setBest(rs.getInt("best"));
				list.add(vo);
			}
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
			JDBCConnection.close(rs, pstmt, conn);
		}
		return list;
	}
}
