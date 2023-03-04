package com.example.lp_jee_miniproject;

import java.io.*;
import java.sql.SQLException;

import Models.User;
import Services.SimulationCreditService;
import Services.UserService;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        SimulationCreditService service = new SimulationCreditService();

           // User user = service.UserLogin("fatima@example.com","password456");
            //boolean bienajouter= service.UserInsert("Rida","rida@gmail.com","passwordrida");
            int msg = service.CalculeSimulation(100000,4,7);
            String msgg = Integer.toString(msg);
            // Hello
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<h1>Hello"+msgg+"</h1>");
            out.println("</body></html>");


    }

    public void destroy() {
    }
}