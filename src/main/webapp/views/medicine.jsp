<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Medicine & Pharmacy - Hospital Management</title>
  <!-- Bootstrap CSS -->
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
							class="nav-item nav-link active ">Service</a> <a
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


  <!-- Main Section -->
  <div class="jumbotron text-center">
    <h1 class="display-4">Medicine & Pharmacy</h1>
    <p class="lead">Providing quality medicines and pharmacy services for your healthcare needs.</p>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <div class="card mb-4">
          <img src="img/medical1.png" class="card-img-top pharmacy-img" alt="Pharmacy Image">
          <div class="card-body">
            <h2 class="card-title">Quality Medicines</h2>
            <p class="card-text">Our pharmacy stocks a wide range of prescription and over-the-counter medicines to meet your healthcare needs. We ensure the availability of high-quality medications from reputable manufacturers.</p>
            <p class="card-text">Our pharmacy services include:</p>
            <ul>
              <li>Dispensing of prescription medications</li>
              <li>Over-the-counter medications and supplements</li>
              <li>Medical supplies and equipment</li>
              <li>Consultations with pharmacists</li>
              <li>Medication counseling and management</li>
            </ul>
            <p class="card-text">We are committed to providing safe and effective medications along with personalized care and guidance to optimize your treatment outcomes.</p>
            <a href="#" class="btn btn-primary">Visit Pharmacy</a>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Emergency Numbers</h5>
            <p class="card-text">In case of emergency, dial:</p>
            <p class="card-text">- Ambulance: 911<br>- Poison Control: 1-800-222-1222</p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Footer Start -->
  <div class="container-fluid bg-dark text-light mt-5 py-5">
    <div class="container py-5">
      <div class="row g-5">
        <div class="col-lg-3 col-md-6">
          <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Get In Touch</h4>
          <p class="mb-4">It is health that is real wealth and not pieces of gold and silver.</p>
          <p class="mb-2"><i class="fa fa-map-marker-alt text-primary me-3"></i>ftc college Sangola, tal.Sangola, Dist.Solapur</p>
          <p class="mb-2"><i class="fa fa-envelope text-primary me-3"></i>Sharma@gmail.com</p>
          <
