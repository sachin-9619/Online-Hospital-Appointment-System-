<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Emergency Care Hospital Management</title>
  
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


  <!-- Jumbotron -->
  <div class="jumbotron text-center">
    <h1 class="display-4">Emergency Care Hospital</h1>
    <p class="lead">Providing exceptional emergency medical services round the clock.</p>
  </div>

  <!-- Cards -->
  <div class="container">
    <div class="row">
      <div class="col-md-4">
        <div class="card">
          <img src="img/care.jpeg" class="card-img-top" alt="Emergency Care">
          <div class="card-body">
            <h5 class="card-title">24/7 Emergency Care</h5>
            <p class="card-text">Our hospital offers round-the-clock emergency care services with a team of dedicated medical professionals.</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Specialized Medical Staff</h5>
            <p class="card-text">We have a team of experienced doctors and nurses specializing in emergency medicine to provide the best care for our patients.</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">State-of-the-Art Facilities</h5>
            <p class="card-text">Our hospital is equipped with the latest medical technology and facilities to ensure efficient and effective treatment.</p>
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
          <p class="mb-0"><i class="fa fa-phone-alt text-primary me-3"></i>+9421067202</p>
        </div>
        <div class="col-lg-3 col-md-6">
          <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Quick Links</h4>
          <div class="d-flex flex-column justify-content-start">
            <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Home</a>
            <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>About Us</a>
            <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Our Services</a>
            <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Meet The Team</a>
            <a class="text-light" href="#"><i class="fa fa-angle-right me-2"></i>Contact Us</a>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Popular Links</h4>
          <div class="d-flex flex-column justify-content-start">
            <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Home</a>
            <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>About Us</a>
            <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Our Services</a>
            <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Meet The Team</a>
            <a class="text-light" href="#"><i class="fa fa-angle-right me-2"></i>Contact Us</a>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <h3 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Developed By</h3>
          <div class="developers">
            <h6 style="color: white;">Sachin More</h6>
            <h6 style="color: white;">Sumit Shinde</h6>
            <h6 style="color: white;">Bhavesh Chaugule</h6>
            <h6 style="color: white;">Hanmant Doke</h6>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Footer End -->

  <!-- JS Libraries -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
