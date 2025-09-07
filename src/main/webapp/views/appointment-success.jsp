<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Appointment Confirmation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #f5f5f5;">
    <div class="container mt-5 text-center">
        <div class="alert alert-success shadow-lg p-5 rounded">
            <h1 class="mb-3">✅ Appointment Booked Successfully!</h1>
            <p>Thank you for booking with <strong>Sai Clinic</strong>.</p>
            <a href="${pageContext.request.contextPath}/" class="btn btn-primary mt-3">Back to Home</a>
        </div>
    </div>
</body>
</html>
