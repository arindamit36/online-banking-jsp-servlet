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

@WebServlet("/bankdeposit")
public class BankDeposit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BankDeposit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=null;
		String accno=null;
		Double amount=00.00;
		try{
			name=request.getParameter("name").toString();
			accno=request.getParameter("accno").toString();
			amount=Double.valueOf(request.getParameter("amount").toString());
		}
		catch(Exception e){
			System.out.println("Error :"+e.getMessage().toString());
		}
		String url="bank_deposit.jsp?status="+Contents.WP_ST_FAIL;
		
		Connection con=(Connection) DAO.getConnection();
		Statement st=null;
		accno=request.getParameter("accno").toString();
		
		try {
			st=(Statement) con.createStatement();
			ResultSet rs=st.executeQuery("SELECT * FROM acc_details WHERE ACCNO='"+accno+"'");
			if(rs.next()){
				Double balance=Double.valueOf(rs.getString("BALANCE").toString());
				Double newBal=balance+amount;
				st.executeUpdate("UPDATE `acc_details` SET `BALANCE`='"+newBal+"' WHERE `ACCNO`='"+accno+"'");
				st.executeUpdate("INSERT INTO `lasttrans` (`ID`, `ACCNO`, `OPERATION`, `AMOUNT`, `STATUS`, `MSG`) VALUES (NULL, '"+accno+"', '"+Contents.OP_DIPOSIT+"', '"+amount+"', 'Successfull', 'You had deposit Rs."+amount+" and current balance is Rs."+newBal+"')");
				url="bank_deposit.jsp?status="+Contents.WP_ST_SUCCESS;
			}
			else{
				url="bank_deposit.jsp?status="+Contents.WP_ST_ERROR;
			}
			st.close();
		}catch(Exception e){
			System.out.println(e.getMessage().toString());
		}
		
		response.setStatus(response.SC_TEMPORARY_REDIRECT);
		response.setHeader("Location", url);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      