<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Elite Fitness Club – Your Journey Starts Now</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #0f0f0f, #1a1a1a);
            color: #f5f5f5;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        .hero-section {
            position: relative;
            width: 100%;
            max-width: 1400px;
            height: 700px;
            margin-top: 60px;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.7);
        }

        .hero-image {
            position: absolute;
            width: 100%;
            height: 100%;
            object-fit: cover;
            filter: brightness(0.3);
        }

        .hexagon-overlay {
            position: absolute;
            width: 100%;
            height: 100%;
            background-image: url('https://www.transparenttextures.com/patterns/hexellence.png');
            opacity: 0.15;
            pointer-events: none;
        }

        .hero-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            padding: 40px;
            width: 90%;
            max-width: 800px;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 25px;
            backdrop-filter: blur(15px);
            box-shadow: 0 12px 32px rgba(255, 255, 255, 0.1);
        }

        .hero-title {
            font-size: 4em;
            font-weight: 800;
            color: #ff4e50;
            text-shadow: 2px 2px 12px rgba(255, 78, 80, 0.6);
        }

        .hero-subtitle {
            font-size: 1.5em;
            font-style: italic;
            color: #f0f0f0;
            margin-bottom: 20px;
        }

        .hero-text {
            font-size: 1.2em;
            color: #ddd;
            line-height: 1.8;
            margin-bottom: 30px;
        }

        .join-button {
            display: inline-block;
            background: linear-gradient(135deg, #ff4e50, #f9d423);
            color: #000;
            padding: 16px 36px;
            border-radius: 40px;
            text-decoration: none;
            font-size: 1.2em;
            font-weight: 700;
            box-shadow: 0 5px 25px rgba(255, 78, 80, 0.6);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .join-button:hover {
            transform: scale(1.08);
            box-shadow: 0 10px 35px rgba(255, 78, 80, 0.9);
        }

        nav {
            background-color: rgba(30, 30, 30, 0.95);
            padding: 20px 0;
            width: 100%;
            margin-top: 50px;
            box-shadow: 0 0 15px rgba(255, 255, 255, 0.05);
        }

        nav ul {
            list-style: none;
            display: flex;
            justify-content: center;
            gap: 50px;
            margin: 0;
            padding: 0;
        }

        nav ul li a {
            text-decoration: none;
            color: #ccc;
            font-weight: 600;
            font-size: 1.1em;
            position: relative;
            transition: color 0.3s ease;
        }

        nav ul li a::after {
            content: '';
            display: block;
            width: 0%;
            height: 3px;
            background: #ff4e50;
            transition: width 0.3s ease;
            position: absolute;
            bottom: -6px;
            left: 0;
        }

        nav ul li a:hover {
            color: #ff4e50;
        }

        nav ul li a:hover::after {
            width: 100%;
        }

        .social-icons {
            margin-top: 40px;
            display: flex;
            gap: 25px;
            justify-content: center;
        }

        .social-icons a {
            color: #aaa;
            font-size: 1.8em;
            transition: color 0.3s ease, transform 0.3s ease;
        }

        .social-icons a:hover {
            color: #ff4e50;
            transform: scale(1.25) rotate(5deg);
        }

        @media (max-width: 768px) {
            .hero-title {
                font-size: 2.8em;
            }
            .hero-subtitle {
                font-size: 1.2em;
            }
            nav ul {
                flex-direction: column;
                gap: 15px;
            }
        }
    </style>
</head>
<body>

<div class="hero-section">
    <img src="https://static.vecteezy.com/system/resources/previews/037/236/104/non_2x/ai-generated-gym-with-many-equipments-free-photo.jpg" alt="Fitness Club Interior" class="hero-image">
    <div class="hexagon-overlay"></div>
    <div class="hero-content">
        <h1 class="hero-title">FITNESS CLUB.</h1>
        <p class="hero-subtitle">NO PAIN .. NO GAIN</p>
        <p class="hero-text">Elevate your fitness journey with cutting-edge equipment, elite trainers, and a community that drives results. This is more than a gym – it’s a lifestyle upgrade.</p>
        <a href="pages/bookClass.jsp" class="join-button">Join us now</a>
    </div>
</div>

<nav>
    <ul>
        <li><a href="index.jsp"><i class="fa-solid fa-house"></i> Home</a></li>
        <li><a href="pages/bookClass.jsp"><i class="fa-solid fa-calendar-plus"></i> Book Class</a></li>
        <li><a href="pages/viewSchedule.jsp"><i class="fa-solid fa-clock"></i> View Schedule</a></li>
        <li><a href="pages/attendance.jsp"><i class="fa-solid fa-check-circle"></i> Attendance</a></li>
        <li><a href="trainerSchedule.jsp"><i class="fa-solid fa-dumbbell"></i> Meet Our Experts</a></li>
    </ul>
</nav>

<div class="social-icons">
    <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
    <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
    <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
    <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
</div>

</body>
</html>
