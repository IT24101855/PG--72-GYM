package controller;

import dao.RegistrationDAO;
import model.Registration;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/edit")
public class EditMemberController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String programId = request.getParameter("programId");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String weight = request.getParameter("weight");

        Registration updatedReg = new Registration(programId, name, email, phone, age, gender, weight);
        RegistrationDAO dao = new RegistrationDAO();

        dao.updateRegistration(updatedReg);

        // Fetch updated list and forward to JSP
        List<Registration> members = dao.getAllRegistrations();
        request.setAttribute("members", members);
        request.getRequestDispatcher("viewmembers.jsp").forward(request, response);
    }
}
