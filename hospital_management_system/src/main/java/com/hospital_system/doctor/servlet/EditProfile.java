package com.hospital_system.doctor.servlet;

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

@WebServlet("/doctorUpdateProfile")
public class EditProfile extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	try {
		String fullname = req.getParameter("fullname");
		String dob = req.getParameter("dob");
		String qualification = req.getParameter("qualification");
		String spec = req.getParameter("spec");
		String email = req.getParameter("email");
		String mobno = req.getParameter("mobno");
		
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		Doctor d = new Doctor(id, fullname, dob, qualification, spec, email, mobno,"");
		
		DoctorDao dao = new DoctorDao(DBconnect.getConn());
		
		HttpSession session = req.getSession();
		
		if(dao.editDoctorProfile(d)) {
			Doctor updateDoctor = dao.getDoctorById(id);
			session.setAttribute("succMsgd", "Doctor Update Successfully");
			session.setAttribute("doctObj", updateDoctor);
			resp.sendRedirect("doctor/edit_profile.jsp");
		}
		else {
			session.setAttribute("errorMsgd", "Something Wrong On Server");
			resp.sendRedirect("doctor/edit_profile.jsp");
			
		}
		
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}

}
