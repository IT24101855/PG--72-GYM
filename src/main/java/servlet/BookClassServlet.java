package servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import model.Booking;

import java.io.IOException;
import java.time.LocalDate;

public class BookClassServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form data
        String userId = request.getParameter("userId");
        String classId = request.getParameter("classId");
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String height = request.getParameter("height");
        String weight = request.getParameter("weight");

        // Debug print (optional)
        System.out.println("Received: age=" + age + ", height=" + height + ", weight=" + weight);

        // Create booking date
        String bookingDate = LocalDate.now().toString();

        // Create Booking object
        Booking booking = new Booking();
        booking.setUserName(name);
        booking.setAge(Integer.parseInt(age));
        booking.setHeight(Double.parseDouble(height));
        booking.setWeight(Double.parseDouble(weight));

        // Store data in session to access on other pages
        HttpSession session = request.getSession();
        session.setAttribute("userId", userId);
        session.setAttribute("userName", name);
        session.setAttribute("age", age);
        session.setAttribute("height", height);
        session.setAttribute("weight", weight);
        session.setAttribute("booking", booking);

        // Optional message to show success
        request.setAttribute("message", "Class booked successfully for " + bookingDate + "!");

        // Forward to viewSchedule.jsp
        request.getRequestDispatcher("/pages/viewSchedule.jsp").forward(request, response);
    }
}
