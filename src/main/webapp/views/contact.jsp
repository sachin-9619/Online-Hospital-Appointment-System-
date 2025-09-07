<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Favicon -->
<link rel="icon" href="img/favicol.ico" type="image/x-icon">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="preconnect" href="https://fonts.gstatic.com">
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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Libraries Stylesheet -->
<link
	href="${pageContext.request.contextPath}/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />

<!-- Bootstrap & Custom Styles -->
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
							class="nav-item nav-link  ">Service</a> <a
							href="${pageContext.request.contextPath}/contact"
							class="nav-item nav-link active">Contact</a> <a
							href="${pageContext.request.contextPath}/admin-login"
							class="nav-item nav-link">Dr Login</a>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- Navbar End -->
	<!-- Chatbox HTML -->
	<div class="chatbox"
		style="position: fixed; bottom: 10px; right: 20px; z-index: 1000;">
		<div class="chatbox__support">
			<div class="chatbox__header">
				<div class="chatbox__image--header">
					<img
						src="https://img.icons8.com/color/48/000000/circled-user-female-skin-type-5--v1.png"
						alt="Doctor Avatar" />
				</div>
				<div class="chatbox__content--header">
					<h4 class="chatbox__heading--header">Chat Support</h4>
					<p class="chatbox__description--header">Hi, I’m your assistant.
						How can I help?</p>
				</div>
			</div>
			<div class="chatbox__messages" id="chatbox__messages"
				style="padding: 10px; height: 300px; overflow-y: auto;"></div>
			<div class="chatbox__input"
				style="display: flex; border-top: 1px solid #ccc; padding: 10px;">
				<input type="text" id="user-input" placeholder="Type a message..."
					style="flex: 1; padding: 8px; border-radius: 20px; border: 1px solid #ccc;">
				<button onclick="sendMessage()"
					style="margin-left: 10px; background-color: #13C5DD; color: white; border: none; border-radius: 20px; padding: 8px 15px;">Send</button>
			</div>
		</div>

		<!-- Chatbot toggle button -->
		<div class="chatbox__button"
			style="position: fixed; right: 30px; bottom: 30px;">
			<button style="background-color: transparent; border: none;">
				<img src="${pageContext.request.contextPath}/img/chatbot.png"
					style="height: 60px; width: 60px;" />
			</button>
		</div>

	</div>


	


    <!-- Contact Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Any Questions?</h5>
                <h1 class="display-4">Please Feel Free To Contact Us</h1>
            </div>
            <div class="row g-5 mb-5">
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center" style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-primary rounded-circle mb-4" style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-location-arrow text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0">ftc college sangola, tal.Sangola  Dist.Solapur</h6>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center" style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-primary rounded-circle mb-4" style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-phone text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0">+9421067202</h6>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center" style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-primary rounded-circle mb-4" style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-envelope-open text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0">Sharma@gmail.com</h6>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12" style="height: 500px;">
                    <div class="position-relative h-100">
                        <iframe src="https://www.google.com/maps/embed?..." width="1120" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center position-relative" style="margin-top: -200px; z-index: 1;">
                <div class="col-lg-8">
                    <div class="bg-white rounded p-5 m-5 mb-0">
                        <form action="https://formspree.io/f/xjvdloeo" method="POST">
                            <div class="row g-3">
                                <div class="col-12 col-sm-6">
                                    <label>Patient Name</label>
                                    <input name="patientName" type="text" class="form-control" placeholder="Name" required>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <label>Contact</label>
                                    <input name="contactNum" type="tel" class="form-control" placeholder="123" required>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <label>Date</label>
                                    <input name="aptDate" type="date" class="form-control">
                                </div>
                                <div class="col-12 col-sm-6">
                                    <label>Time</label>
                                    <input name="aptTime" type="time" class="form-control">
                                </div>
                                <div class="col-12">
                                    <textarea name="message" class="form-control bg-light border-0" rows="5" placeholder="Message"></textarea>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">Send Message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->

    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light mt-5 py-5">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Get In Touch</h4>
                    <p class="mb-4">It is health that is real wealth and not pieces of gold and silver.</p>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary me-3"></i>ftc college Sangola, tal.Sangola, Dist.Solapur</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary me-3"></i>Sharma@gmail.com</p>
                    <p class="mb-0"><i class="fa fa-phone-alt text-primary me-3"></i>+9421067202</p>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Quick Links</h4>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-light mb-2" href="index.jsp"><i class="fa fa-angle-right me-2"></i>Home</a>
                        <a class="text-light mb-2" href="about.jsp"><i class="fa fa-angle-right me-2"></i>About Us</a>
                        <a class="text-light mb-2" href="service.jsp"><i class="fa fa-angle-right me-2"></i>Our Services</a>
                        <a class="text-light mb-2" href="#"><i class="fa fa-angle-right me-2"></i>Meet The Team</a>
                        <a class="text-light" href="contact.jsp"><i class="fa fa-angle-right me-2"></i>Contact Us</a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h3 class="text-primary text-uppercase border-bottom border-5 border-secondary mb-4">Developed By</h3>
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
<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
		class="bi bi-arrow-up"></i></a>
	<script>
    document.querySelector('.chatbox__button button').addEventListener('click', () => {
        document.querySelector('.chatbox').classList.toggle('chatbox--active');
    });
    </script>
	<script>
    // Toggle Chat UI
    document.querySelector('.chatbox__button button').addEventListener('click', () => {
        document.querySelector('.chatbox').classList.toggle('chatbox--active');
    });

    // Send message and reply logic
    function sendMessage() {
        const input = document.getElementById("user-input");
        const message = input.value.trim();
        if (message === "") return;

        // Show user message
        addMessage("user", message);
        input.value = "";

        // Simulate chatbot reply
        setTimeout(() => {
            const reply = getBotReply(message);
            addMessage("bot", reply);
        }, 800);
    }

 // Add message to chat
    function addMessage(sender, text) {
        const messagesDiv = document.getElementById("chatbox__messages");
        const msgDiv = document.createElement("div");
        msgDiv.style.margin = "8px 0";
        msgDiv.style.padding = "10px 15px";
        msgDiv.style.borderRadius = "20px";
        msgDiv.style.maxWidth = "75%";
        msgDiv.style.fontSize = "14px";
        msgDiv.style.lineHeight = "1.4";
        msgDiv.style.color = "#333";

        if (sender === "user") {
            msgDiv.style.backgroundColor = "#e0f7fa";
            msgDiv.style.alignSelf = "flex-end";
            msgDiv.style.marginLeft = "auto";
        } else {
            msgDiv.style.backgroundColor = "#f1f1f1";
            msgDiv.style.alignSelf = "flex-start";
            msgDiv.style.marginRight = "auto";
        }

        msgDiv.innerHTML = text; // ✅ Use innerHTML to support line breaks and formatting
        messagesDiv.appendChild(msgDiv);
        messagesDiv.scrollTop = messagesDiv.scrollHeight;
    }
   


    // Bot response logic (You can expand this)
    function getBotReply(userMessage) {
    const msg = userMessage.toLowerCase();

    if (msg.includes("hello") || msg.includes("hi") || msg.includes("hey"))
        return "Hello! Welcome to Sai Clinic. How can I help you today?";

    if (msg.includes("time") || msg.includes("open") || msg.includes("hours"))
        return "Our clinic is open from 9 AM to 1 PM and 3 to 8, Monday to Saturday.";

    if (msg.includes("location") || msg.includes("address") || msg.includes("where"))
        return "We are located at Sai Clinic, FTC College Campus, Sangola, Solapur.";

    if (msg.includes("services") || msg.includes("treatment") || msg.includes("facilities"))
        return "We offer general consultation, emergency care, lab testing, and more healthcare services.";

    if (msg.includes("doctors") || msg.includes("doctor available") || msg.includes("consultant"))
        return "Our experienced doctors are available daily. Check the 'Doctors' page for schedules.";

    if (msg.includes("contact") || msg.includes("phone") || msg.includes("email"))
        return "You can reach us at +91 9421067202 or email at Sharma@gmail.com.";

    if (msg.includes("emergency") || msg.includes("urgent"))
        return "For emergencies, please visit directly during clinic hours or call us immediately.";

    if (msg.includes("lab") || msg.includes("test") || msg.includes("blood") || msg.includes("reports"))
        return "We provide lab tests like blood, urine, ECG, and diagnostic screenings with fast reports.";

    if (msg.includes("fees") || msg.includes("charges") || msg.includes("cost"))
        return "Consultation starts from ₹200. Diagnostic test fees vary depending on the type of test.";

    if (msg.includes("insurance") || msg.includes("cashless") || msg.includes("policy"))
        return "Yes, we accept select health insurance plans. Please confirm with our reception.";

    if (msg.includes("specialist") || msg.includes("dermatologist") || msg.includes("orthopedic"))
        return "We have general physicians and visiting specialists. Kindly check availability in the Appointments section.";

    if (msg.includes("medicine") || msg.includes("pharmacy") || msg.includes("drugs"))
        return "We have an in-house pharmacy for prescribed medicines and basic OTC products.";

    if (msg.includes("ambulance") || msg.includes("pickup"))
        return "Ambulance service is available on request. Please call +91 9421067202 for urgent help.";

    if (msg.includes("parking") || msg.includes("vehicle"))
        return "Yes, we provide free parking for patients and visitors.";

    if (msg.includes("online") && msg.includes("consultation"))
        return "Online consultations are available via our website. Choose 'Video Consultation' in the Appointments section.";

    if (msg.includes("results") || msg.includes("report") || msg.includes("how to get report"))
        return "Lab reports can be collected from the clinic or viewed online if you booked via our website.";

    if (msg.includes("clinic name") || msg.includes("who are you"))
        return "I’m your assistant from Sai Clinic – your trusted healthcare partner.";

    if (msg.includes("thank you") || msg.includes("thanks"))
        return "You're welcome! I'm always here to assist you.";
    if (msg.includes("appointment list")) {
        addMessage("bot", "Opening your appointment dashboard...");
        setTimeout(() => {
            window.location.href = "/admin-dashboard"; // or "/admin-dashboard" or "/viewAppointments"
        }, 1500); // slight delay for UX

        return;
    }
	if (msg.includes("appointment")) {
        setTimeout(() => {
            addMessage("bot", "Sure! Opening the appointment form for you...");
            window.location.href = "/appointment"; // ✅ Update this to your actual form page URL
        }, 800);
        return;
    }


        
    return "Sorry, I didn't get that. Please ask something like 'Book appointment', 'Clinic timings', or 'Available services'.";
   }
    </script>
    <script src="js/chat.js"></script>
    

	<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/lib/easing/easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/lib/waypoints/waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/lib/owlcarousel/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/lib/tempusdominus/js/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/lib/tempusdominus/js/moment-timezone.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
	<!-- jQuery (required by Owl Carousel) -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

	<!-- Owl Carousel JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

	<!-- Initialize the carousel -->
	<script>
		$(document).ready(function() {
			$(".testimonial-carousel").owlCarousel({
				items : 1,
				loop : true,
				margin : 30,
				nav : true,
				dots : true,
				autoplay : true,
				autoplayTimeout : 5000,
				smartSpeed : 1000
			});
		});
	</script>
	
    <script>
    document.addEventListener("DOMContentLoaded", function () {
        flatpickr("#appointmentTime", {
            enableTime: true,
            noCalendar: true,
            dateFormat: "h:i K",
            time_24hr: false
        });
    });
</script>
    
	<script>
    document.querySelector('.chatbox__button button').addEventListener('click', () => {
        document.querySelector('.chatbox').classList.toggle('chatbox--active');
    });
</script>




	<!-- Template Javascript -->
	<script src="js/chatbot.js"></script>
	<!-- Flatpickr JS -->
	<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>


	<script src="js/script.js"></script>
</body>

</html>