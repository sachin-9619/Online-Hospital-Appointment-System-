<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Book Appointment - SAI CLINIC</title>

    <!-- Bootstrap & Flatpickr CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css" rel="stylesheet">

    <!-- Fonts and Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
</head>

<body>

    <!-- Navbar -->
    <div class="container-fluid sticky-top bg-white shadow-sm">
        <div class="container">
            <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0">
                <a href="index.html" class="navbar-brand">
                    <h1 class="m-0 text-uppercase text-primary">
                        <img src="img/logo.png" style="height: 50px; width: 60px;" /> SAI CLINIC
                    </h1>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0">
                        <a href="${pageContext.request.contextPath}/" class="nav-item nav-link">Home</a> 
                        <a href="${pageContext.request.contextPath}/about" class="nav-item nav-link">About</a> 
                        <a href="${pageContext.request.contextPath}/service" class="nav-item nav-link active">Service</a> 
                        <a href="${pageContext.request.contextPath}/contact" class="nav-item nav-link">Contact</a> 
                        <a href="${pageContext.request.contextPath}/admin-login" class="nav-item nav-link">Dr Login</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>

    <!-- Appointment Form -->
    <div class="container-fluid bg-primary my-5 py-5">
        <div class="container py-5">
            <div class="row gx-5">
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <h5 class="text-white text-uppercase border-bottom border-5">Appointment</h5>
                    <h1 class="display-4 text-white">Make An Appointment For Your Family</h1>
                    <p class="text-white mb-2">8:00 AM - 01:00 PM</p>
                    <p class="text-white mb-4">2:00 PM - 08:00 PM</p>
                </div>
                <div class="col-lg-6">
                    <div class="bg-white text-center rounded p-5">
                        <h1 class="mb-4">Book An Appointment</h1>
                        <form action="addAppointment" method="post">
                            <div class="row g-3">
                                <div class="col-12 col-sm-6">
                                    <input name="name" class="form-control bg-light border-0"
                                           placeholder="Your Name" type="text" required style="height: 55px;">
                                </div>
                                <div class="col-12 col-sm-6">
                                    <input name="email" class="form-control bg-light border-0"
                                           placeholder="Your Email" type="email" required style="height: 55px;">
                                </div>
                                <div class="col-12 col-sm-6">
                                    <input type="text" id="appointmentDate" name="date"
                                           class="form-control bg-white border-0" placeholder="Select Date" required>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <select id="appointmentTime" class="form-select bg-light border-0"
                                            name="time" style="height: 55px;" required>
                                        <option value="">Select Time</option>
                                    </select>
                                </div>

                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">Make An Appointment</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- JavaScript to load available slots -->
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const dateInput = document.getElementById("appointmentDate");
            const timeSelect = document.getElementById("appointmentTime");

            flatpickr(dateInput, {
                dateFormat: "Y-m-d",
                minDate: "today",
                onChange: function (selectedDates, dateStr) {
                    if (!dateStr) return;
                    console.log("📅 Fetching slots for:", dateStr);

                    fetch(`/availableSlots?date=${dateStr}`)
                        .then(response => response.json())
                        .then(data => {
                            console.log("✅ Available slots:", data);
                            timeSelect.innerHTML = '<option value="">Select Time</option>';

                            if (data.length === 0) {
                                const opt = document.createElement('option');
                                opt.disabled = true;
                                opt.textContent = "No slots available";
                                timeSelect.appendChild(opt);
                            } else {
                                data.forEach(time => {
                                    const opt = document.createElement('option');
                                    opt.value = time;
                                    opt.textContent = time;
                                    timeSelect.appendChild(opt);
                                });
                            }
                        })
                        .catch(error => {
                            console.error('❌ Error fetching slots:', error);
                        });
                }
            });
        });
    </script>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

</body>
</html>
