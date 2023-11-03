package com.hospital_system.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hospital_system.dao.SpecialistDao;
import com.hospital_system.db.DBconnect;
import com.hospital_system.entity.User;

@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String specName = req.getParameter("specName");
		
		SpecialistDao dao = new SpecialistDao(DBconnect.getConn());
		boolean f = dao.addspecialist(specName);
		
		HttpSession session = req.getSession();
		

		if (f) {

			session.setAttribute("succMsg", "Specialist Added");
			resp.sendRedirect("admin/index.jsp");
		} 
		else {

			session.setAttribute("errorMsg", "Something Wrong On Server");
			resp.sendRedirect("admin_login.jsp");

		}
	}

	
	
}
