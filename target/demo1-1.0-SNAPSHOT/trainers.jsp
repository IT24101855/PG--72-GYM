<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Trainer" %>
<%@ page import="dao.TrainerDAO" %>
<%
    TrainerDAO dao = new TrainerDAO();
    List<Trainer> trainers = dao.getAllTrainers();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Our Trainers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 960px;
            margin: 40px auto;
            padding: 0 20px;
            display: flex;
            gap: 20px;
            justify-content: center;
            flex-wrap: wrap;
        }
        .trainer-box {
            background: white;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            width: 220px;
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease;
        }
        .trainer-box:hover {
            transform: translateY(-8px);
        }
        .trainer-image {
            width: 160px;
            height: 160px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 15px;
            border: 4px solid #007bff;
        }
        h3 {
            margin: 10px 0 5px;
            font-size: 20px;
            color: #2d2f48;
        }
        p {
            margin: 0;
            color: #666;
            font-size: 14px;
        }
    </style>
</head>
<body>

<h1 style="text-align:center; margin-top: 40px; color: #007bff;">Meet Our Trainers</h1>

<div class="container">
    <%-- 4 trainers with images --%>
    <div class="trainer-box">
        <img src="https://randomuser.me/api/portraits/women/68.jpg" alt="Alice Johnson" class="trainer-image"/>
        <h3>Alice Johnson</h3>
        <p><strong>Workout:</strong> Strength Building</p>
        <p>Specialization: Strength Training</p>
    </div>
    <div class="trainer-box">
        <img src="https://randomuser.me/api/portraits/men/45.jpg" alt="Bob Smith" class="trainer-image"/>
        <h3>Bob Smith</h3>
        <p><strong>Workout:</strong> CrossFit</p>
        <p>Specialization: Weight Loss</p>
    </div>
    <div class="trainer-box">
        <img src="https://randomuser.me/api/portraits/women/22.jpg" alt="Carol Lee" class="trainer-image"/>
        <h3>Carol Lee</h3>
        <p><strong>Workout:</strong> Yoga & Meditation</p>
        <p>Specialization: Cardio</p>
    </div>
    <div class="trainer-box">
        <img src="https://randomuser.me/api/portraits/men/31.jpg" alt="David Brown" class="trainer-image"/>
        <h3>David Brown</h3>
        <p><strong>Workout:</strong> Personal Training</p>
        <p>Specialization: Flexibility</p>
    </div>
</div>

</body>
</html>
