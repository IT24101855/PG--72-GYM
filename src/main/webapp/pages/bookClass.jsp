<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Reserve Your Fitness Class</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
      margin: 0;
      padding: 0;
      color: #f1f1f1;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }

    .booking-container {
      background-color: #1c1f26;
      border-radius: 16px;
      box-shadow: 0 12px 30px rgba(0, 0, 0, 0.4);
      padding: 40px;
      width: 90%;
      max-width: 600px;
      text-align: center;
      transition: transform 0.3s ease-in-out;
    }

    .booking-container:hover {
      transform: translateY(-5px);
    }

    h2 {
      color: #00d4ff;
      margin-bottom: 30px;
      font-size: 2.5em;
      letter-spacing: 1px;
    }

    form {
      display: flex;
      flex-direction: column;
      align-items: stretch;
    }

    label {
      font-size: 1.1em;
      margin-bottom: 10px;
      color: #ccc;
      text-align: left;
    }

    select,
    input[type="text"],
    input[type="number"] {
      padding: 12px;
      margin-bottom: 20px;
      border: 1px solid #555;
      border-radius: 8px;
      font-size: 1em;
      background-color: #2a2d36;
      color: #f1f1f1;
    }

    select:focus,
    input:focus {
      outline: none;
      border-color: #00d4ff;
      box-shadow: 0 0 10px rgba(0, 212, 255, 0.3);
    }

    .user-details {
      display: none;
      flex-direction: column;
      margin-top: 20px;
      padding-top: 20px;
      border-top: 1px solid #444;
    }

    .user-details label {
      margin-top: 10px;
    }

    button[type="submit"] {
      background-color: #00c9a7;
      color: white;
      padding: 15px 20px;
      border: none;
      border-radius: 8px;
      font-size: 1.1em;
      cursor: pointer;
      transition: background-color 0.3s ease;
      box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
      margin-top: 20px;
      display: none;
    }

    button[type="submit"]:hover {
      background-color: #00b39f;
    }

    .success {
      background-color: #28a745;
      color: white;
      padding: 15px;
      border-radius: 6px;
      margin-top: 20px;
      text-align: center;
      border: 1px solid #218838;
    }

    .back-button {
      position: absolute;
      top: 20px;
      left: 20px;
      padding: 10px 20px;
      background-color: #444;
      color: white;
      border-radius: 5px;
      text-decoration: none;
      font-size: 1em;
      transition: background-color 0.3s ease;
    }

    .back-button:hover {
      background-color: #666;
    }
  </style>

  <script>
    function showUserDetails() {
      const classId = document.getElementById("classId").value;
      const userDetailsDiv = document.getElementById("userDetails");
      const bookButton = document.querySelector("button[type='submit']");

      if (classId) {
        userDetailsDiv.style.display = "flex";
        bookButton.style.display = "block";
      } else {
        userDetailsDiv.style.display = "none";
        bookButton.style.display = "none";
      }
    }
  </script>
</head>

<body>
<a class="back-button" href="<%= request.getContextPath() %>/">🏠 Home</a>

<div class="booking-container">
  <h2>Book Your Fitness Class</h2>
  <form action="BookClassServlet" method="post">
    <label for="classId">Select Class:</label>
    <select id="classId" name="classId" onchange="showUserDetails()" required>
      <option value="" disabled selected>Choose a Class</option>
      <option value="yoga">Yoga</option>
      <option value="cardio">Cardio</option>
      <option value="strength">Strength Training</option>
      <option value="pilates">Pilates</option>
      <option value="zumba">Zumba</option>
    </select>

    <div id="userDetails" class="user-details">
      <h3 style="color: #00d4ff;">Your Details</h3>

      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required />

      <label for="age">Age:</label>
      <input type="number" id="age" name="age" min="10" max="100" required />

      <label for="height">Height (cm):</label>
      <input type="number" id="height" name="height" min="100" max="250" required />

      <label for="weight">Weight (kg):</label>
      <input type="number" id="weight" name="weight" min="30" max="200" required />

      <input type="hidden" name="userId" value="U001" />

      <button type="submit">Book Your Spot</button>
    </div>

    <% if (request.getAttribute("message") != null) { %>
    <p class="success"><%= request.getAttribute("message") %></p>
    <% } %>
  </form>
</div>
</body>
</html>
