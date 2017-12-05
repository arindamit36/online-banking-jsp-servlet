package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mycolls.Contents;

@WebServlet("/logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Logout() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		session.removeAttribute(Contents.WP_LOGST);
		session.removeAttribute(Contents.WP_LOGST);
		session.removeAttribute(Contents.WP_USER);
		session.removeAttribute(Contents.WP_USER_TYPE);
		session.removeAttribute(Contents.WP_NAME);
		
		try{
			session.removeAttribute(Contents.WP_ACC_NO);
			session.removeAttribute(Contents.WP_ACC_TYPE);
		}catch(Exception e){}
		
		response.setStatus(response.SC_TEMPORARY_REDIRECT);
		response.setHeader("Location", "index.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
