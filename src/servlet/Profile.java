package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mycolls.Contents;

@WebServlet("/profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Profile() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(Contents.isLogin(request,Contents.WP_TYPE_ADMIN)){
			response.setStatus(response.SC_TEMPORARY_REDIRECT);
			response.setHeader("Location", "bank.jsp");
		}
		else if(Contents.isLogin(request,Contents.WP_TYPE_USER)){
			response.setStatus(response.SC_TEMPORARY_REDIRECT);
			response.setHeader("Location", "dashboard.jsp");
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
