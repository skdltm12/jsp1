package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.shop.common.ProductVO;

public class ProductDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	
	public int addProduct(ProductVO vo) {
		
		return cnt;
	}
	public int editProduct(ProductVO vo) {
		
		return cnt;
	}
	public int delProduct(ProductVO vo) {
		
		return cnt;
	}
	public ProductDAO getProduct() {
		ProductDAO product = new ProductDAO();
		
		return product;
	}
	public ArrayList<ProductDAO> getProductList(){
		ArrayList<ProductDAO> list = null;
		
		return list;
	}
}
