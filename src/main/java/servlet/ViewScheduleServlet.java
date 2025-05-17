package servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import model.ViewSchedule;

import java.io.IOException;

public class ViewScheduleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false); // Use false to avoid creating a new session

        if (session != null &&
                session.getAttribute("userId") != null &&
                session.getAttribute("userName") != null) {

            String userId = (String) session.getAttribute("userId");
            String userName = (String) session.getAttribute("userName");

            // Example dummy data - replace with real DB fetch logic if needed
            ViewSchedule viewSchedule = new ViewSchedule(
                    userId,
                    userName,
                    "yoga",
                    "Yoga Class",
                    "2025-05-20",
                    "07:00 AM - 08:00 AM"
            );

            request.setAttribute("viewSchedule", viewSchedule);
            request.getRequestDispatcher("/pages/viewSchedule.jsp").forward(request, response);

        } else {
            // Redirect or show an error if session data is missing
            response.sendRedirect(request.getContextPath() + "/pages/error.jsp");
        }
    }
}
