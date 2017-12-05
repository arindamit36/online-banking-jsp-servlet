package servlet;

import java.io.IOException;
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

@WebServlet("/updateuser")
public class UserUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserUpdate() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=null;
		String accno=null;
		String email=null;
		String mobile=null;
		String addr=null;
		HttpSession session=request.getSession();
		try{
			name=request.getParameter("name").toString();
			accno=session.getAttribute(Contents.WP_ACC_NO).toString();
			email=request.getParameter("email").toString();
			mobile=request.getParameter("mobile").toString();
			addr=request.getParameter("addr").toString();
		}
		catch(Exception e){
			//System.out.println("Error :"+e.getMessage().toString());
		}
		String url="create_account.jsp?status="+Contents.WP_ST_FAIL;
		if(!accno.equals("")){
			Connection con=(Connection) DAO.getConnection();
			int result=0;
			try{
				Statement st=(Statement)con.createStatement();
				String q="UPDATE `acc_details` SET `NAME`='"+name+"',`EMAIL`='"+email+"',`MOBILE`='"+mobile+"',`ADDR`='"+addr+"' WHERE `ACCNO`='"+accno+"'";
				//System.out.println("Query: "+q);
				result=st.executeUpdate(q);
			}
			catch(Exception e){
			}
			finally{
				if(result>0){
					url="update_user_profile.jsp?status="+Contents.WP_ST_SUCCESS;
				}
				else{
					url="update_user_profile.jsp?status="+Contents.WP_ST_ERROR;
				}
			}
		}
		else{
			url="update_user_profile.jsp?status="+Contents.WP_ST_EMPTY;
		}
		response.setStatus(response.SC_TEMPORARY_REDIRECT);
		response.setHeader("Location", url);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
