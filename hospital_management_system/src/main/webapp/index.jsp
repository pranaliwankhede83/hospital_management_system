
<%@page import="com.hospital_system.db.DBconnect" %>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index page</title>
<%@include file="component/allcss.jsp"%>

<Style>
.card{
box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}

</Style>

</head>
<body>
	<%@include file="component/navbar.jsp"%>
	
	<% Connection conn=DBconnect.getConn();
	System.out.println(conn);
	/* out.print(conn); */
	%>
	

	<div id="carouselExampleControls" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/hos2.jpg" class="d-block w-100" alt="..."
					height="400px">
			</div>
			<div class="carousel-item">
				<img src="img/hos1.jpg" class="d-block w-100" alt="..."
					height="400px">
			</div>
			<div class="carousel-item">
				<img src="img/hos4.jpg" class="d-block w-100" alt="..."
					height="400px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<div class="card text-center">
		<!-- <div class="card-header">Featured</div> -->
		<div class="card-body">
			<h5 class="card-title">Key Features Of Our Hospital</h5>
		 <!-- </div>
	</div> -->

	<br>
	
 	<div class="row" align="center">
		<div class="col-sm-3">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">100% Safety</h5>
					<p class="card-text">With supporting text below as a natural
						lead-in to additional content.</p>
				</div>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Clean Environment</h5>
					<p class="card-text">With supporting text below as a natural
						lead-in to additional content.</p>
				</div>
			</div>
		</div>
		
		<div class="col-md-3">
			<img alt="" src="img/doc1.jpg" height="250px" width="400px">
		</div>
		
	</div>


	<div class="row" align="center">
		<div class="col-sm-3">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Friendly Doctors</h5>
					<p class="card-text">With supporting text below as a natural
						lead-in to additional content.</p>
				</div>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Medical Research</h5>
					<p class="card-text">With supporting text below as a natural
						lead-in to additional content.</p>
				</div>
			</div>
		</div>
</div> 

</div>
	</div>


	 <!-- <div class="container">
    <div class="row justify-content-center">
        <div class="col-sm-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">100% Safety</h5>
                    <p class="card-text">With supporting text below as a natural
                        lead-in to additional content.</p>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Clean Environment</h5>
                    <p class="card-text">With supporting text below as a natural
                        lead-in to additional content.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-sm-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Friendly Doctors</h5>
                    <p class="card-text">With supporting text below as a natural
                        lead-in to additional content.</p>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Medical Research</h5>
                    <p class="card-text">With supporting text below as a natural
                        lead-in to additional content.</p>
                </div>
            </div>
        </div>
        
        <div class="col-md-4">
        <img alt="" src="img/doc1.jpg"> 
        </div>
        
        
    </div>
</div>
 -->

	<div class="card text-center">
		<!-- <div class="card-header">Featured</div> -->
		<div class="card-body">
			<h5 class="card-title">Our Team</h5>
		</div>
	</div>

	<div class="row row-cols-1 row-cols-md-3 g-4">
  <div class="col">
    <div class="card h-100">
      <img src="img/sdoc1.jpg" class="card-img-top" alt="..." height="400px" width="100px">
      <div class="card-footer">
        <h6 class="text-muted" align="center">Dr. Sarah watson</h6>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="img/sdoc2.jpg" class="card-img-top" alt="..." height="400px" width="100px">
      <div class="card-footer">
        <h6 class="text-muted" align="center">Dr. Jorge Lucus</h6>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="img/sdoc3.jpg" class="card-img-top" alt="..." height="400px" width="100px">
      <div class="card-footer">
        <h6 class="text-muted" align="center">Dr. John Connor</h6>
      </div>
    </div>
  </div>
</div> 





</body>
</html>
<%@include file="component/footer.jsp"%>