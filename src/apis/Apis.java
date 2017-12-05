package apis;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mycolls.Contents;

@WebServlet("/apis")
public class Apis extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Apis() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rqst=null;
		String key=null;
		String userid=null;
		HttpSession session=request.getSession();
		try{
			rqst=request.getParameter("request").toString();
			key=request.getParameter("key").toString();
			userid=session.getAttribute(Contents.WP_USER).toString();
		}catch(Exception e){}
		if(!key.equals(null) && !rqst.equals(null) && !userid.equals(null)){
			if(rqst.equals("GetAccDetails")){
				String accno=request.getParameter("accno").toString();
				RequestDispatcher rd=request.getRequestDispatcher("apis/get_acc_details.jsp");
				rd.forward(request, response);
			}
			
			
			
		}
		else{
			response.setStatus(response.SC_TEMPORARY_REDIRECT);
			response.setHeader("Location", "index.jsp");			
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
