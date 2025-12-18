<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Book Appointment - SAI CLINIC</title>

    <!-- Favicon -->
<link rel="icon" href="${pageContext.request.contextPath}/img/favicol.ico" type="image/x-icon">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">

<!-- Icons -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Flatpickr -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

<!-- Owl Carousel (Pick ONE version) -->
<link href="${pageContext.request.contextPath}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

</head>

<body>

    <!-- Appointment Form -->
    <div class="appointment-section my-5 py-5">
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

                        <form action="${pageContext.request.contextPath}/addAppointment" method="post">

                            <div class="row g-3">
                                <div class="col-12 col-sm-6">
                                    <input name="name" class="form-control bg-light border-0" placeholder="Your Name" 
                                           type="text" required style="height: 55px;">
                                </div>

                                <div class="col-12 col-sm-6">
                                    <input name="email" class="form-control bg-light border-0"
                                           placeholder="Your Email" type="email" required style="height: 55px;">
                                </div>

                                <!-- DATE PICKER -->
                                <div class="col-12 col-sm-6">
                                    <input type="text" id="appointmentDate" name="date"
                                           class="form-control bg-white border-0" placeholder="Select Date" required>
                                </div>

                                <!-- TIME DROPDOWN -->
                                <div class="col-12 col-sm-6">
                                    <select id="appointmentTime" class="form-select bg-light border-0"
                                            name="time" style="height: 55px;" required>
                                        <option value="">Select Time</option>
                                    </select>
                                </div>

                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">
                                        Make An Appointment
                                    </button>
                                </div>
                            </div>

                        </form>

                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Scripts (Correct Order) -->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

    <!-- FIXED SLOT LOADER SCRIPT -->
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

                    fetch("${pageContext.request.contextPath}/availableSlots?date=" + dateStr)
                        .then(res => res.json())
                        .then(slots => {

                            timeSelect.innerHTML = '<option value="">Select Time</option>';

                            if (slots.length === 0) {
                                timeSelect.innerHTML =
                                    '<option disabled>No slots available</option>';
                                return;
                            }

                            slots.forEach(slot => {
                                let opt = document.createElement("option");
                                opt.value = slot;
                                opt.textContent = slot;
                                timeSelect.appendChild(opt);
                            });
                        })
                        .catch(err => console.error("❌ Slot fetch error:", err));
                }
            });
        });
    </script>

</body>
</html>
