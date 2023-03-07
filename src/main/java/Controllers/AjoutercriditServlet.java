package Controllers;

import Models.Credit;
import Services.CreditService;
import Services.SimulationCreditService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "AjoutercriditServlet", value = "/Views/AjoutercriditServlet")
public class AjoutercriditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int montant = Integer.parseInt(request.getParameter("montant"));
        int taux = Integer.parseInt(request.getParameter("taux"));
        int duree = Integer.parseInt(request.getParameter("duree"));
        SimulationCreditService service = new SimulationCreditService();
        int mensualites= service.CalculeSimulation(montant,taux,duree);
        request.setAttribute("mensualites",mensualites);
        request.setAttribute("montant",montant);
        request.setAttribute("taux",taux);
        request.setAttribute("duree",duree);
        request.setAttribute("sucess","true");
        CreditService creditService = new CreditService();
        double cout_total = (mensualites*duree)-montant;
        HttpSession session = request.getSession();
        int iduser = (int) session.getAttribute("iduser");
        Credit credit = new Credit();
        credit.setNom((String) request.getParameter("nom"));
        credit.setDescription((String) request.getParameter("descr"));
        credit.setDuree((Integer) request.getAttribute("duree"));
        credit.setMontant((Integer) request.getAttribute("montant"));
        credit.setSimulation(String.valueOf( mensualites)+"DH");
        credit.setTaux((Integer) request.getAttribute("taux"));
        creditService.CreditInsert(credit,iduser);
        request.setAttribute("cout_total",cout_total);
        ArrayList<Credit> List = creditService.getallCreditbyuser(iduser);
        session.setAttribute("modele",List);
        request.getRequestDispatcher("/Views/Ajoutercredit.jsp").forward(request, response);
    }
}
