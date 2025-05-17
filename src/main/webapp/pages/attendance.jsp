<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>

<%
    String name = (String) session.getAttribute("userName");
    int age = session.getAttribute("age") != null ? Integer.parseInt((String) session.getAttribute("age")) : 0;
    double height = session.getAttribute("height") != null ? Double.parseDouble((String) session.getAttribute("height")) : 0.0;
    double weight = session.getAttribute("weight") != null ? Double.parseDouble((String) session.getAttribute("weight")) : 0.0;
    String className = (String) session.getAttribute("classId");

    double heightMeters = height / 100.0;
    double bmi = (heightMeters > 0) ? weight / (heightMeters * heightMeters) : 0.0;

    int totalClasses = 12;
    int attended = new Random().nextInt(totalClasses + 1);
    int missed = totalClasses - attended;
    double attendanceRate = (totalClasses > 0) ? ((double) attended / totalClasses) * 100 : 0.0;
%>


<html>
<head>
    <title>View Your Schedule & Attendance</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: #1e1e2f;
            color: #f1f1f1;
            font-family: 'Segoe UI', sans-serif;
        }
        .container {
            max-width: 1000px;
            margin: 40px auto;
            background-color: #2e2e3e;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.4);
        }
        h1, h2 {
            text-align: center;
            color: #6dd5fa;
        }
        .info, .attendance-section {
            margin-top: 30px;
        }
        .card {
            background: #3a3a4a;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 10px;
        }
        .label {
            font-weight: bold;
            color: #ccc;
        }
        .rate {
            font-size: 1.2em;
            color: #81ecec;
        }
        .gif {
            text-align: center;
            margin-top: 30px;
        }
        .gif img {
            max-width: 300px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.3);
        }
        .mark-btn {
            display: block;
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            background: #6dd5fa;
            border: none;
            color: #000;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        .mark-btn:hover {
            background: #51bce0;
        }
        .back-button {
            display: inline-block;
            margin-bottom: 20px;
            color: #ccc;
            text-decoration: none;
            background: #555;
            padding: 10px 15px;
            border-radius: 5px;
        }
        .attendance-status {
            margin-top: 10px;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border-radius: 5px;
            display: inline-block;
        }
    </style>
    <script>
        function markAttendance() {
            document.getElementById("attendanceStatus").style.display = "block";
        }
    </script>
</head>
<body>
<div class="container">
    <a class="back-button" href="<%= request.getContextPath() %>/">🏠 Home</a>
    <h1>Hello, <%= (name != null && !name.isEmpty()) ? name : "Guest" %>!</h1>
    <h2>Your Fitness Class & Attendance Overview</h2>

    <div class="info card">
        <p><span class="label">Name:</span> <%= name %></p>
        <p><span class="label">Age:</span> <%= age %></p>
        <p><span class="label">Height:</span> <%= height %> cm</p>
        <p><span class="label">Weight:</span> <%= weight %> kg</p>
        <p><span class="label">BMI:</span> <%= String.format("%.2f", bmi) %></p>
        <p><span class="label">Selected Class:</span> <%= (className != null) ? className : "Not Available" %></p>
    </div>

    <div class="attendance-section card">
        <h3>📅 Monthly Attendance for <%= (className != null) ? className : "your class" %></h3>
        <p><span class="label">Total Classes:</span> <%= totalClasses %></p>
        <p><span class="label">Attended:</span> <%= attended %></p>
        <p><span class="label">Missed:</span> <%= missed %></p>
        <p><span class="label">Attendance Rate:</span> <span class="rate"><%= String.format("%.1f", attendanceRate) %>%</span></p>

        <button class="mark-btn" onclick="markAttendance()">✅ Mark Today as Attended</button>
        <div id="attendanceStatus" class="attendance-status" style="display:none;">
            Attendance Marked for Today ✔
        </div>
    </div>

    <div class="gif">
        <img src="https://media.tenor.com/2roX3uxz_68AAAAC/workout-fitness.gif" alt="Workout GIF">
    </div>
</div>
</body>
</html>
