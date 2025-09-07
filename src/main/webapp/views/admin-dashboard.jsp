<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
 <title>Admin Dashboard - SAI CLINIC</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    
<link rel="icon" href="img/favicol.ico" type="image/x-icon">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap JS (needed for sliding) -->

<!-- Fonts and Icons -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<!-- Flatpickr CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap JS -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Libraries Stylesheet -->
<link
	href="${pageContext.request.contextPath}/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Custom Bootstrap and Template Style -->
<!-- Owl Carousel CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/More.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/New.css">
    <style>
        body {
            background-color: #f0f2f5;
        }
        .dashboard-container {
            max-width: 1000px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .header {
            margin-bottom: 30px;
        }
        table th {
            background-color: #0d6efd;
            color: white;
        }
    </style>
</head>
<body>
<!-- Navbar Start -->
	<div class="container-fluid sticky-top bg-white shadow-sm">
		<div class="container">
			<nav
				class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0">
				<a href="index.html" class="navbar-brand">
					<h1 class="m-0 text-uppercase text-primary">
						<img src="img/logo.png" style="height: 50px; width: 60px;" /> SAI
						CLINIC
					</h1>
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<div class="navbar-nav ms-auto py-0">
						<a href="${pageContext.request.contextPath}/"
							class="nav-item nav-link ">Home</a> <a
							href="${pageContext.request.contextPath}/about"
							class="nav-item nav-link ">About</a> <a
							href="${pageContext.request.contextPath}/service"
							class="nav-item nav-link">Service</a> <a
							href="${pageContext.request.contextPath}/contact"
							class="nav-item nav-link">Contact</a> <a
							href="${pageContext.request.contextPath}/admin-login"
							class="nav-item nav-link">Dr Login</a>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- Navbar End -->

<div class="dashboard-container">
    <h2 class="header text-center">Admin Dashboard - Appointment List</h2>

    <c:if test="${empty appointmentList}">
        <div class="alert alert-warning">No appointments found.</div>
    </c:if>

    <c:if test="${not empty appointmentList}">
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Patient Name</th>
                    <th>Email</th>
                    <th>Date</th>
                    <th>Time</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="appt" items="${appointmentList}" varStatus="status">
                    <tr>
                        <td>${status.count}</td>
                        <td>${appt.name}</td>
                        <td>${appt.email}</td>
                        <td>${appt.date}</td>
                        <td>${appt.time}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
</div>

</body>
</html>

