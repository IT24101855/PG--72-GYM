<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meet Our Expert Trainers</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #121212;
            margin: 0;
            padding: 0;
            color: #e0e0e0;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        h2 {
            color: #00adb5;
            margin-top: 40px;
            margin-bottom: 30px;
            font-size: 2.5em;
            letter-spacing: 1px;
            text-align: center;
        }

        .trainers-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            width: 90%;
            max-width: 1200px;
            margin-bottom: 40px;
        }

        .trainer-card {
            background-color: #1e1e1e;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.6);
            padding: 30px;
            text-align: center;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        .trainer-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 12px 24px rgba(0, 173, 181, 0.3);
        }

        .trainer-image {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 20px;
            border: 3px solid #00adb5;
        }

        .trainer-name {
            color: #ffffff;
            font-size: 1.6em;
            margin-bottom: 10px;
        }

        .trainer-specialty {
            color: #00adb5;
            font-style: italic;
            margin-bottom: 15px;
        }

        .trainer-bio {
            color: #cfcfcf;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .contact-button {
            background-color: #00adb5;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            text-decoration: none;
            font-size: 1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .contact-button:hover {
            background-color: #007c80;
        }

        .back-button {
            position: absolute;
            top: 20px;
            left: 20px;
            padding: 10px 15px;
            background-color: #2c2c2c;
            color: white;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-size: 1em;
            transition: background-color 0.3s ease;
        }

        .back-button:hover {
            background-color: #00adb5;
        }

        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 999;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.7);
        }

        .modal-content {
            background-color: #1e1e1e;
            margin: 10% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 500px;
            border-radius: 12px;
            color: #fff;
            text-align: center;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }

        .close:hover {
            color: #fff;
        }
    </style>
</head>
<body>
<a class="back-button" href="<%= request.getContextPath() %>/">🏠 Home</a>
<h2>Meet Our Expert Trainers</h2>
<div class="trainers-grid">
    <%-- Trainer 1 --%>
    <div class="trainer-card">
        <img src="https://th.bing.com/th/id/OIP.l9ZSLXztloCwOLd5vLIrLwHaHa?rs=1&pid=ImgDetMain" alt="Sarah Miller" class="trainer-image">
        <h3 class="trainer-name">Kumari Jayasinghe</h3>
        <p class="trainer-specialty">Yoga & Pilates Specialist</p>
        <p class="trainer-bio">Kumari has been a certified yoga and Pilates instructor for over 10 years, passionate about helping clients achieve balance and strength.</p>
        <button class="contact-button" onclick="openModal('modal1')">Contact Sarah</button>
    </div>

    <%-- Trainer 2 --%>
    <div class="trainer-card">
        <img src="https://th.bing.com/th/id/OIP.l9ZSLXztloCwOLd5vLIrLwHaHa?rs=1&pid=ImgDetMain" alt="John Davis" class="trainer-image">
        <h3 class="trainer-name">Saman Perera</h3>
        <p class="trainer-specialty">Strength & Conditioning Coach</p>
        <p class="trainer-bio">Saman specializes in strength training and conditioning, helping athletes and fitness enthusiasts reach their peak performance.</p>
        <button class="contact-button" onclick="openModal('modal2')">Contact John</button>
    </div>

    <%-- Trainer 3 --%>
    <div class="trainer-card">
        <img src="https://th.bing.com/th/id/OIP.l9ZSLXztloCwOLd5vLIrLwHaHa?rs=1&pid=ImgDetMain" alt="Emily White" class="trainer-image">
        <h3 class="trainer-name">Nipuni Gunawardhna</h3>
        <p class="trainer-specialty">Cardio & Zumba Instructor</p>
        <p class="trainer-bio">Nipuni brings energy and fun to every class, motivating participants through dynamic cardio and Zumba sessions.</p>
        <button class="contact-button" onclick="openModal('modal3')">Contact Emily</button>
    </div>

    <%-- Trainer 4 --%>
    <div class="trainer-card">
        <img src="https://th.bing.com/th/id/OIP.l9ZSLXztloCwOLd5vLIrLwHaHa?rs=1&pid=ImgDetMain" alt="Michael Stone" class="trainer-image">
        <h3 class="trainer-name">Roshan Disanayake</h3>
        <p class="trainer-specialty">CrossFit & HIIT Coach</p>
        <p class="trainer-bio">Roshan is known for pushing limits with high-intensity training methods tailored to individual goals and stamina levels.</p>
        <button class="contact-button" onclick="openModal('modal4')">Contact Michael</button>
    </div>
</div>

<!-- Modals -->
<div id="modal1" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal('modal1')">&times;</span>
        <h3>Contact Kumari</h3>
        <p><strong>Email:</strong> kumari.miller@pgfitness.com</p>
        <p><strong>Mobile:</strong> +1-555-1234</p>
        <p><strong>Address:</strong> 123 Wellness Ave, FitCity, USA</p>
    </div>
</div>

<div id="modal2" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal('modal2')">&times;</span>
        <h3>Contact Saman</h3>
        <p><strong>Email:</strong> saman.davis@pgfitness.com</p>
        <p><strong>Mobile:</strong> +1-555-5678</p>
        <p><strong>Address:</strong> 456 Power St, MuscleTown, USA</p>
    </div>
</div>

<div id="modal3" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal('modal3')">&times;</span>
        <h3>Contact Nipuni</h3>
        <p><strong>Email:</strong> nipuni.white@pgfitness.com</p>
        <p><strong>Mobile:</strong> +1-555-7890</p>
        <p><strong>Address:</strong> 789 Dance Blvd, GrooveCity, USA</p>
    </div>
</div>

<div id="modal4" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal('modal4')">&times;</span>
        <h3>Contact Roshan</h3>
        <p><strong>Email:</strong> roshan.stone@pgfitness.com</p>
        <p><strong>Mobile:</strong> +1-555-2468</p>
        <p><strong>Address:</strong> 101 HIIT Rd, EnduranceBay, USA</p>
    </div>
</div>

<script>
    function openModal(id) {
        document.getElementById(id).style.display = "block";
    }

    function closeModal(id) {
        document.getElementById(id).style.display = "none";
    }

    // Close modal if clicked outside
    window.onclick = function(event) {
        const modals = document.querySelectorAll('.modal');
        modals.forEach(modal => {
            if (event.target === modal) {
                modal.style.display = "none";
            }
        });
    };
</script>
</body>
</html>
