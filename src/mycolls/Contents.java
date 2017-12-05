package mycolls;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Contents {
	public static final String WP_TITLE="iBank";
	public static final String WP_FOOTER="Copyright &copy; 2017";
	public static final String WP_LOGST="LOGIN_STATUS";
	public static final String WP_USER="USERID";
	public static final String WP_NAME="NAME";
	public static final String WP_ACC_NO="ACCNO";
	public static final String WP_ACC_TYPE="ACCTYPE";
	public static final String WP_USER_TYPE="USER_TYPE";
	public static final String WP_TYPE_USER="user";
	public static final String WP_TYPE_ADMIN="admin";
	public static final String OP_WITHDRAWN="Withdrawn";
	public static final String OP_DIPOSIT="Diposit";
	
	public static final int WP_MIN=500;
	
	public static final int WP_ST_SUCCESS=1001;
	public static final int WP_ST_FAIL=1002;
	public static final int WP_ST_ERROR=1003;
	public static final int WP_ST_EMPTY=1004;

	public static boolean isLogin(HttpServletRequest request){
		HttpSession session=request.getSession();
		boolean login=false;
		try{
			if(session.getAttribute(WP_LOGST).toString().equals("true")){
				login=true;
			}
		}catch(Exception e){
			login=false;
		}
		return login;	
	}
	
	public static boolean isLogin(HttpServletRequest request,String type){
		HttpSession session=request.getSession();
		boolean login=false;
		try{
			if(session.getAttribute(WP_LOGST).toString().equals("true") && session.getAttribute(WP_USER_TYPE).toString().equals(type)){
				login=true;
			}
		}catch(Exception e){
			login=false;
		}
		return login;	
		
	
	}

	public static String formatAccountNo(String acc_no){
		while(acc_no.length()<12){
			acc_no="0"+acc_no;
		}
		return acc_no;
	}
}
