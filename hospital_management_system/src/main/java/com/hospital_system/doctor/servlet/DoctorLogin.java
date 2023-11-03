package com.hospital_system.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital_system.dao.DoctorDao;
import com.hospital_system.dao.UserDao;
import com.hospital_system.db.DBconnect;
import com.hospital_system.entity.Doctor;
import com.hospital_system.entity.User;

@WebServlet("/doctorLogin")
public class DoctorLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("email");
		String password = req.getParameter("password");

		HttpSession session = req.getSession();

		DoctorDao dao = new DoctorDao(DBconnect.getConn());
		
		 Doctor doctor = dao.login(email, password);

		if (doctor != null) {
			session.setAttribute("doctObj", doctor);
			resp.sendRedirect("doctor/index1.jsp");
		} else {
			session.setAttribute("errorMsg", "invalid email and password");
			resp.sendRedirect("doctor_login.jsp");

		}

		
	}
	
	

}
