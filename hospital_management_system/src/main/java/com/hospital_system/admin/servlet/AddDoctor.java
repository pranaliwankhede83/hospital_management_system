package com.hospital_system.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital_system.dao.DoctorDao;
import com.hospital_system.db.DBconnect;
import com.hospital_system.entity.Doctor;


@WebServlet("/addDoctor")
public class AddDoctor extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
		String fullname = req.getParameter("fullname");
		String dob = req.getParameter("dob");
		String qualification = req.getParameter("qualification");
		String spec = req.getParameter("spec");
		String email = req.getParameter("email");
		String mobno = req.getParameter("mobno");
		String password = req.getParameter("password");
		
		Doctor d = new Doctor(fullname, dob, qualification, spec, email, mobno, password);
		
		DoctorDao dao = new DoctorDao(DBconnect.getConn());
		
		HttpSession session = req.getSession();
		
		if(dao.registerDoctor(d)) {
			session.setAttribute("succMsg", "Doctor Added Successfully");
			resp.sendRedirect("admin/doctor.jsp");
		}
		else {
			session.setAttribute("errorMsg", "Something Wrong On Server");
			resp.sendRedirect("admin/doctor.jsp");
			
		}
		
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	

}
