package servlet;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import mycolls.Contents;
import mycolls.DAO;

@WebServlet("/transferbal")
public class TransferBal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TransferBal() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accno=null;
		String toaccno=null;
		String ctoaccno=null;
		Double amount=0.0;
		
		try{
			accno=request.getParameter("accno").toString();
			toaccno=request.getParameter("toaccno").toString();
			ctoaccno=request.getParameter("ctoaccno").toString();
			amount=Double.valueOf(request.getParameter("amount").toString());
		}
		catch(Exception e){
			System.out.println("Error :"+e.getMessage().toString());
		}
		String url="baltrans.jsp?status="+Contents.WP_ST_FAIL;
		
		Connection con=DAO.getConnection();
		Statement st=null;
		accno=request.getParameter("accno").toString();
		if(toaccno.equals(ctoaccno) && amount>=0){
			try {
				st=(Statement) con.createStatement();
				ResultSet rs=st.executeQuery(" CALL `transferbal`('"+accno+"', '"+toaccno+"', '"+amount+"');");
				if(rs.next()){
					String status=rs.getString("STATUS").toString();
					if(status.equals("success")){
						url="baltrans.jsp?status="+Contents.WP_ST_SUCCESS;
					}
					else{
						url="baltrans.jsp?status="+Contents.WP_ST_EMPTY;
					}
				}
				else{
					url="baltrans.jsp?status="+Contents.WP_ST_ERROR;
				}
				st.close();
			}catch(Exception e){
				System.out.println(e.getMessage().toString());
			}			
		}
		response.setStatus(response.SC_TEMPORARY_REDIRECT);
		response.setHeader("Location", url);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
