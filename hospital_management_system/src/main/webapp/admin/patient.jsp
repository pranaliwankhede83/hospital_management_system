<%@page import="com.hospital_system.dao.DoctorDao"%>
<%@page import="com.hospital_system.entity.Doctor"%>
<%@page import="com.hospital_system.db.DBconnect"%>
<%@page import="com.hospital_system.dao.AppointmentDao"%>
<%@page import="java.util.List"%>
<%@page import="com.hospital_system.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>

<Style>
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</Style>

</head>
<body>

	<%@include file="navbar.jsp"%>

	<div class="col-md-12">
		<div class="card paint-card">
			<div class="card-body">
				<p class="fs-3 text-center">Patient Details</p>
				<table class="table">
					<thead>
						<tr>
							<th>Full Name</th>
							<th>Gender</th>
							<th>Age</th>
							<th>Appointment</th>
							<th>Email</th>
							<th>Mob No</th>
							<th>Diseases</th>
							<th>Doctor Name</th>
							<th>Address</th>
							<th>Status</th>
						</tr>
					</thead>
					<tbody>
					
					<%
					AppointmentDao dao = new AppointmentDao(DBconnect.getConn());
					DoctorDao dao2 = new DoctorDao(DBconnect.getConn());
					List<Appointment> list = dao.getAllAppointment();
					for(Appointment ap : list){
					     Doctor d = dao2.getDoctorById(ap.getDoctorId());
					
					%>
						
						<tr>
							<th><%=ap.getFullname()%></th>
							<td><%=ap.getGender()%></td>
							<td><%=ap.getAge()%></td>
							<td><%ap.getAppoinDate();%></td>
							<td><%=ap.getEmail()%></td>
							<td><%=ap.getPhNo()%></td>
							<td><%=ap.getDiseases()%></td>
							<td><%=d.getFullName()%></td>
							<td><%=ap.getAddress()%></td>
							<td><%=ap.getStatus()%></td>
						</tr>
						
				<% 	} %>
					
					

						

					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>