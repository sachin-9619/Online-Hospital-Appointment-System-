<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dr Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #ffecd2, #fcb69f);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: white;
            padding: 2rem;
            border-radius: 15px;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.2);
            width: 90%;
            max-width: 400px;
            text-align: center;
        }

        .login-container h2 {
            margin-bottom: 1.5rem;
            color: #333;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 0.8rem;
            margin: 0.5rem 0 1rem;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 1rem;
        }

        .login-container button {
            width: 100%;
            padding: 0.9rem;
            border: none;
            background-color: #ff6f61;
            color: white;
            font-size: 1rem;
            border-radius: 8px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .login-container button:hover {
            background-color: #e55b50;
        }

        .footer {
            margin-top: 1rem;
            font-size: 0.9rem;
        }

        .footer a {
            text-decoration: none;
            color: #555;
        }

       
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Welcome Doctor</h2>
        <form action="admin" method="post">
            <input type="text" name="username" placeholder="Enter User ID" required />
            <input type="password" name="password" placeholder="Enter Password" required />
            <button type="submit">Login</button>
        </form>

        <div class="footer">
            <p>Don't have an account? <a href="index">Sign up</a></p>
        </div>

    </div>
</body>
</html>
