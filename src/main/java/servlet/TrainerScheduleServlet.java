package servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import model.TrainerSchedule;

import java.io.IOException;

public class TrainerScheduleServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String trainerId = request.getParameter("trainerId");
        String classId = request.getParameter("classId");
        String dayOfWeek = request.getParameter("dayOfWeek");
        String startTime = request.getParameter("startTime");
        String endTime = request.getParameter("endTime");

        TrainerSchedule schedule = new TrainerSchedule(trainerId, classId, dayOfWeek, startTime, endTime);

        HttpSession session = request.getSession();
        session.setAttribute("trainerSchedule", schedule);

        request.setAttribute("message", "Trainer schedule saved!");
        request.getRequestDispatcher("/pages/trainerSchedule.jsp").forward(request, response);
    }
}
