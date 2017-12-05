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

@WebServlet("/createaccount")
public class CreateAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CreateAccount() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=null;
		String userid=null;
		String pass=null;
		String repass=null;
		String accno=null;
		String email=null;
		String mobile=null;
		String sex=null;
		String addr=null;
		String approval=null;
		String acctype=null;
		try{
			name=request.getParameter("name").toString();
			userid=request.getParameter("userid").toString();
			pass=request.getParameter("pass").toString();
			repass=request.getParameter("repass").toString();
			accno=request.getParameter("accno").toString();
			email=request.getParameter("email").toString();
			mobile=request.getParameter("mobile").toString();
			sex=request.getParameter("sex").toString();
			addr=request.getParameter("addr").toString();
			approval=request.getParameter("approval").toString();
			acctype=request.getParameter("acctype").toString();
		}
		catch(Exception e){
			System.out.println("Error :"+e.getMessage().toString());
		}
		String url="create_account.jsp?status="+Contents.WP_ST_FAIL;
		if(!accno.equals("") && pass.equals(repass)){
			Connection con=(Connection) DAO.getConnection();
			int result=0;
			try{
				Statement st=(Statement)con.createStatement();
				String q="INSERT INTO `acc_details` (`ID`, `ACCNO`, `NAME`, `PASS`, `BALANCE`, `USERID`, `SEX`, `EMAIL`, `MOBILE`, `ADDR`, `ACCTYPE`, `APPROVAL`, `LASTLOGIN`) VALUES (NULL, '"+accno+"', '"+name+"', '"+pass+"', '0', '"+userid+"', '"+sex+"', '"+email+"', '"+mobile+"', '"+addr+"', '"+acctype+"', '"+approval+"', '')";
				//System.out.println("Query: "+q);
				result=st.executeUpdate(q);
			}
			catch(Exception e){
			}
			finally{
				if(result>0){
					url="create_account.jsp?status="+Contents.WP_ST_SUCCESS;
				}
				else{
					url="create_account.jsp?status="+Contents.WP_ST_ERROR;
				}
			}
		}
		else{
			url="create_account.jsp?status="+Contents.WP_ST_EMPTY;
		}
		response.setStatus(response.SC_TEMPORARY_REDIRECT);
		response.setHeader("Location", url);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
