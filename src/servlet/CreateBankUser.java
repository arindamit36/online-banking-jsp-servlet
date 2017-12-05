package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import mycolls.Contents;
import mycolls.DAO;

@WebServlet("/createbankuser")
public class CreateBankUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CreateBankUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=null;
		String userid=null;
		String pass=null;
		String repass=null;
		String email=null;
		String mobile=null;
		String sex=null;
		String addr=null;
		try{
			name=request.getParameter("name").toString();
			userid=request.getParameter("userid").toString();
			pass=request.getParameter("pass").toString();
			repass=request.getParameter("repass").toString();
			email=request.getParameter("email").toString();
			mobile=request.getParameter("mobile").toString();
			sex=request.getParameter("sex").toString();
			addr=request.getParameter("addr").toString();
		}
		catch(Exception e){
			System.out.println("Error :"+e.getMessage().toString());
		}
		String url="create_account.jsp?status="+Contents.WP_ST_FAIL;
		if(!userid.equals("") && pass.equals(repass)){
			Connection con=(Connection) DAO.getConnection();
			int result=0;
			try{
				Statement st=(Statement)con.createStatement();
				String q="INSERT INTO `bankuserinfo` (`ID`, `USERID`, `PASS`, `NAME`, `EMAIL`, `MOBILE`, `ADDR`, `SEX`) VALUES (NULL, '"+userid+"', '"+pass+"', '"+name+"', '"+email+"', '"+mobile+"', '"+addr+"', '"+sex+"')";
				//System.out.println("Query: "+q);
				result=st.executeUpdate(q);
			}
			catch(Exception e){
			}
			finally{
				if(result>0){
					url="create_bank_user.jsp?status="+Contents.WP_ST_SUCCESS;
				}
				else{
					url="create_bank_user.jsp?status="+Contents.WP_ST_ERROR;
				}
			}
		}
		else{
			url="create_bank_user.jsp?status="+Contents.WP_ST_EMPTY;
		}
		response.setStatus(response.SC_TEMPORARY_REDIRECT);
		response.setHeader("Location", url);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
