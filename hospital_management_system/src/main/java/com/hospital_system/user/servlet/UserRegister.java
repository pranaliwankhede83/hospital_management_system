package com.hospital_system.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital_system.dao.UserDao;
import com.hospital_system.db.DBconnect;
import com.hospital_system.entity.User;


@WebServlet("/user_register")
public class UserRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			String fullName = req.getParameter("fullname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			User u = new User(fullName, email, password);
			
			UserDao dao = new UserDao(DBconnect.getConn());
			
			HttpSession session = req.getSession();
			
			boolean f = dao.register(u);
			
			if(f) {
				
				session.setAttribute("sucMsg", "User register successfully");
				resp.sendRedirect("signup.jsp");
				//System.out.println("User register successfully");
			}
			else {
				
				session.setAttribute("errorMsg", "Something wrong on server");
				resp.sendRedirect("signup.jsp");
				//System.out.println("Something wrong on server");
			}
			
			
		}
		catch(Exception e){
			e.printStackTrace();
			}
	}

}
