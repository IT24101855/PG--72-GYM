package servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import model.Attendance;

import java.io.IOException;
import java.time.LocalDate;

public class AttendanceServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        // Get user and class data from session (set during booking)
        String userId = (String) session.getAttribute("userId");
        String classId = (String) session.getAttribute("classId"); // optional: set this in BookClassServlet if needed

        // Fallback if not available in session
        if (userId == null) {
            userId = request.getParameter("userId");
        }
        if (classId == null) {
            classId = request.getParameter("classId");
        }

        // Get presence status from request
        String presentStr = request.getParameter("present");
        boolean present = "true".equalsIgnoreCase(presentStr);

        // Generate attendance record
        String attendanceId = "A" + System.currentTimeMillis();
        String attendanceDate = LocalDate.now().toString();

        Attendance attendance = new Attendance(attendanceId, userId, classId, attendanceDate, present);

        // Store attendance in session (optional, can use DB or other storage)
        session.setAttribute("attendance", attendance);

        // Pass confirmation to JSP
        request.setAttribute("message", "Attendance marked successfully for user ID: " + userId);
        request.getRequestDispatcher("/pages/attendance.jsp").forward(request, response);
    }
}
