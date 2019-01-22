package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alexyu.*;

public class LoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userid = req.getParameter("username");
		String userpass = req.getParameter("userpass");
		
		UserBean user = new UserBean();
		
//		boolean b = user.validate(userid, userpass);
		
		boolean b = false;;
		
		String forward;
		if (b)
			forward = "success.jsp";
		else
			forward = "failure.jsp";
		RequestDispatcher dp = req.getRequestDispatcher(forward);
		dp.forward(req, resp);
	}
	
}
