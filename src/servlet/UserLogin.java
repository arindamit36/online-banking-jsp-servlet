package servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import mycolls.Contents;
import mycolls.DAO;

@WebServlet("/userlogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserLogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		String userid=null;
		String pass=null;
		try{
			userid=request.getParameter("userid").toString();
			pass=request.getParameter("pass").toString();
		}catch(Exception e){}
		
		String dbUser=null;
		String dbPass=null;
		String dbName=null;
		String dbAccNo=null;
		String dbAccType=null;
		// Code for database connection...
		Connection con=(Connection) DAO.getConnection();
		try {
			Statement st=(Statement)con.createStatement();
			String q="SELECT * FROM `acc_details` WHERE `USERID`='"+userid+"' AND `PASS`='"+pass+"';";
			ResultSet rs=st.executeQuery(q);
			if(rs.next()){
				dbUser=rs.getString("USERID").toString();
				dbPass=rs.getString("PASS").toString();
				dbName=rs.getString("NAME").toString();
				dbAccNo=Contents.formatAccountNo(rs.getString("ACCNO").toString());
				dbAccType=rs.getString("ACCTYPE").toString();
			}
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		HttpSession session=request.getSession();
		String url="userlogin.jsp";
		if(!userid.equals(null) && !pass.equals(null) && userid.equals(dbUser) && pass.equals(dbPass)){
			
			session.setAttribute(Contents.WP_LOGST, "true");
			session.setAttribute(Contents.WP_USER, dbUser);
			session.setAttribute(Contents.WP_USER_TYPE, Contents.WP_TYPE_USER);
			session.setAttribute(Contents.WP_NAME, dbName);
			session.setAttribute(Contents.WP_ACC_NO, dbAccNo);
			session.setAttribute(Contents.WP_ACC_TYPE, dbAccType);
			url="dashboard.jsp?status="+Contents.WP_ST_SUCCESS;
			
		}else{
			url="userlogin.jsp?status="+Contents.WP_ST_ERROR;
		}
		response.setStatus(response.SC_TEMPORARY_REDIRECT);
		response.setHeader("Location", url);
	}

}
