<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Sai-Website</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">

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

	<%@ include file="navbar.jsp" %>
	

	<!-- About Start -->
	<div class="container-fluid py-5" id="aboutpage">
		<div class="container">
			<div class="row gx-5">
				<div class="col-lg-5 mb-5 mb-lg-0" style="min-height: 500px;">
					<div class="position-relative h-100">
						<img class="position-absolute w-100 h-100 rounded"
							src="${pageContext.request.contextPath}/img/about.jpg"
							style="object-fit: cover;">
					</div>
				</div>
				<div class="col-lg-7">
					<div class="mb-4">
						<h5
							class="d-inline-block text-primary text-uppercase border-bottom border-5">About
							Us</h5>
						<h1 class="display-4">Sai Clinic Provide You To Best Services</h1>
					</div>
					<p>One possible interpretation of “health is wealth” is that
						being free from illness and pain has a richness of its own. In
						this sense, being sound in body is worth at least as much — or
						even more than — any material possessions someone can have. And
						these material possessions are what Sai Clinic provides.</p>
					<div class="row g-3 pt-3">
						<div class="col-sm-3 col-6">
							<div class="bg-light text-center rounded-circle py-4">
								<i class="fa fa-3x fa-user-md text-primary mb-3"></i>
								<h6 class="mb-0">
									Qualified<small class="d-block text-primary">Doctors</small>
								</h6>
							</div>
						</div>
						<div class="col-sm-3 col-6">
							<div class="bg-light text-center rounded-circle py-4">
								<i class="fa fa-3x fa-procedures text-primary mb-3"></i>
								<h6 class="mb-0">
									Emergency<small class="d-block text-primary">Services</small>
								</h6>
							</div>
						</div>
						<div class="col-sm-3 col-6">
							<div class="bg-light text-center rounded-circle py-4">
								<i class="fa fa-3x fa-microscope text-primary mb-3"></i>
								<h6 class="mb-0">
									Accurate<small class="d-block text-primary">Testing</small>
								</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Chatbot -->
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



<%@ include file="footer.jsp" %>


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