<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Appointment - Sai Clinic</title>

<!-- Favicon -->
<link rel="icon" href="${pageContext.request.contextPath}/img/favicol.ico">

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Fonts & Icons -->
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">

<!-- Flatpickr -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

<!-- ✅ YOUR ORIGINAL CSS (UNCHANGED) -->
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/More.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/New.css" rel="stylesheet">

</head>

<body>

<!-- ================= APPOINTMENT SECTION (SAME DESIGN) ================= -->
<div class="container-fluid appointment my-5 py-5">
    <div class="container py-5">
        <div class="row gx-5">

            <div class="col-lg-6 mb-5 mb-lg-0">
                <h5 class="text-white text-uppercase border-bottom border-5">
                    Appointment
                </h5>
                <h1 class="display-4 text-white">
                    Make An Appointment For Your Family
                </h1>
                <p class="text-white mb-2">8:00 AM - 01:00 PM</p>
                <p class="text-white mb-4">2:00 PM - 08:00 PM</p>
            </div>

            <div class="col-lg-6">
                <div class="bg-white text-center rounded p-5">
                    <h1 class="mb-4">Book An Appointment</h1>

                    <form action="${pageContext.request.contextPath}/addAppointment" method="post">
                        <div class="row g-3">

                            <div class="col-12 col-sm-6">
                                <input type="text" name="name"
                                    class="form-control bg-light border-0"
                                    placeholder="Your Name" required
                                    style="height: 55px;">
                            </div>

                            <div class="col-12 col-sm-6">
                                <input type="email" name="email"
                                    class="form-control bg-light border-0"
                                    placeholder="Your Email" required
                                    style="height: 55px;">
                            </div>

                            <!-- DATE (FIXED) -->
                            <div class="col-12 col-sm-6">
                                <input type="text" id="appointmentDate" name="date"
                                    class="form-control bg-light border-0"
                                    placeholder="Select Date" required
                                    style="height: 55px;">
                            </div>

                            <!-- TIME -->
                            <div class="col-12 col-sm-6">
                                <select id="appointmentTime" name="time"
                                    class="form-select bg-light border-0"
                                    style="height: 55px;" required>
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

<!-- ================= SCRIPTS ================= -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

<!-- ✅ ONLY FUNCTIONAL FIX (NO CSS CHANGE) -->
<script>
document.addEventListener("DOMContentLoaded", function () {

    const dateInput = document.getElementById("appointmentDate");
    const timeSelect = document.getElementById("appointmentTime");

    flatpickr(dateInput, {
        dateFormat: "Y-m-d",
        minDate: "today",
        disableMobile: true,   // 🔥 DATE CLICK ISSUE FIX

        onChange: function (selectedDates, dateStr) {
            if (!dateStr) return;

            fetch("${pageContext.request.contextPath}/availableSlots?date=" + dateStr)
                .then(res => res.json())
                .then(slots => {

                    timeSelect.innerHTML =
                        '<option value="">Select Time</option>';

                    if (!slots || slots.length === 0) {
                        timeSelect.innerHTML =
                            '<option disabled>No slots available</option>';
                        return;
                    }

                    slots.forEach(slot => {
                        const opt = document.createElement("option");
                        opt.value = slot;
                        opt.textContent = slot;
                        timeSelect.appendChild(opt);
                    });
                })
                .catch(err => {
                    console.error("Slot error:", err);
                    timeSelect.innerHTML =
                        '<option disabled>Error loading slots</option>';
                });
        }
    });
});
</script>

</body>
</html>
