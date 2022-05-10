package kr.go.yeoju.veiw;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import kr.go.yeoju.model.CustomerVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetCustomerListCtrl
 */
@WebServlet("/GetCustomerListCtrl")
public class GetCustomerListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCustomerListCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn =null;
		PreparedStatement pstmt =null;
		ResultSet rs =null;
		String sql = "";
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
			sql = "select * from customer";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<CustomerVO> customList = new ArrayList<CustomerVO>();
			while(rs.next()) {
				CustomerVO cus = new CustomerVO();
				cus.setId(rs.getString("id"));
				cus.setPw(rs.getString("pw"));
				cus.setName(rs.getString("name"));
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	}

}
