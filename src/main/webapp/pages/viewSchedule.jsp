<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>

<%
    String name = (String) session.getAttribute("userName");
    String ageStr = (String) session.getAttribute("age");
    String heightStr = (String) session.getAttribute("height");
    String weightStr = (String) session.getAttribute("weight");

    Integer age = (ageStr != null) ? Integer.parseInt(ageStr) : 0;
    Double height = (heightStr != null) ? Double.parseDouble(heightStr) : 0.0;
    Double weight = (weightStr != null) ? Double.parseDouble(weightStr) : 0.0;

    String className = (String) request.getAttribute("className");
    List<Map<String, String>> bookings = (List<Map<String, String>>) request.getAttribute("bookings");

    double heightMeters = height / 100.0;
    double bmi = (heightMeters > 0) ? weight / (heightMeters * heightMeters) : 0.0;

    String goal = "";
    List<String> meals = new ArrayList<>();

    if (bmi < 18.5) {
        goal = "Gain Weight";
        meals.add("Breakfast: Peanut butter toast with bananas");
        meals.add("Lunch: Grilled chicken wrap with avocado");
        meals.add("Dinner: Beef stew with rice and veggies");
    } else if (bmi < 25) {
        goal = "Maintain Weight";
        meals.add("Breakfast: Oatmeal with nuts and berries");
        meals.add("Lunch: Quinoa salad with grilled veggies");
        meals.add("Dinner: Baked fish with sweet potato and greens");
    } else {
        goal = "Lose Weight";
        meals.add("Breakfast: Smoothie with spinach and protein powder");
        meals.add("Lunch: Grilled chicken salad");
        meals.add("Dinner: Steamed veggies with tofu or lean meat");
    }

    if (className == null || className.trim().isEmpty()) {
        className = (age < 25) ? "HIIT" : (age < 40) ? "Strength & Conditioning" : "Low Impact Cardio";
    }
%>

<html>
<head>
    <title>Your Fitness Plan</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #121212;
            margin: 0;
            padding: 20px;
            color: #f1f1f1;
        }
        .container {
            max-width: 900px;
            margin: auto;
            background: #1f1f1f;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.5);
        }
        h1, h2, h3 {
            text-align: center;
            color: #00adb5;
        }
        .section {
            margin-top: 30px;
        }
        .label {
            font-weight: bold;
            color: #ccc;
        }
        ul {
            list-style-type: square;
            padding-left: 20px;
        }
        .card {
            background: #2c2c2c;
            padding: 20px;
            border-left: 5px solid #00adb5;
            margin-bottom: 20px;
            border-radius: 8px;
        }
        .back-button {
            position: absolute;
            top: 20px;
            left: 20px;
            background: #393e46;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
            transition: 0.3s;
        }
        .back-button:hover {
            background: #00adb5;
        }
        .gif {
            text-align: center;
            margin-top: 30px;
        }
        .gif img {
            max-width: 300px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.3);
        }
        .highlight {
            color: #ffd369;
        }
    </style>
</head>
<body>
<a class="back-button" href="<%= request.getContextPath() %>/">🏠 Home</a>

<div class="container">
    <h1>Hello, <%= (name != null && !name.isEmpty()) ? name : "Guest" %> 👋</h1>
    <h2>Your Personalized Fitness Plan</h2>

    <div class="section">
        <div class="card">
            <p><span class="label">Age:</span> <%= age %> years</p>
            <p><span class="label">Height:</span> <%= height %> cm</p>
            <p><span class="label">Weight:</span> <%= weight %> kg</p>
            <p><span class="label">BMI:</span> <span class="highlight"><%= String.format("%.2f", bmi) %></span> (<%= goal %>)</p>
        </div>
    </div>

    <div class="section">
        <h3>Recommended Class</h3>
        <div class="card">
            <p>We recommend: <strong><%= className %></strong> class</p>
            <p>Join sessions on:</p>
            <ul>
                <% if (bookings != null) {
                    for (Map<String, String> b : bookings) { %>
                <li><%= b.get("day") %> at <%= b.get("time") %></li>
                <%  }} else { %>
                <li>No bookings available.</li>
                <% } %>
            </ul>
        </div>
    </div>

    <div class="section">
        <h3>Your Suggested Meal Plan</h3>
        <div class="card">
            <ul>
                <% for (String meal : meals) { %>
                <li><%= meal %></li>
                <% } %>
            </ul>
        </div>
    </div>

    <div class="gif">
        <img src="https://cdn.dribbble.com/users/1304577/screenshots/4227985/gym-guy-8x6.gif" alt="Workout Motivation">
    </div>
</div>

</body>
</html>
