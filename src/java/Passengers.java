/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rkarne
 */
public class Passengers extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
          
//         String passengers=request.getParameter("passengers");
         HttpSession session=request.getSession();  
//         int passengersCount = (int)session.getAttribute("pass") ;
         int passengersCount = Integer.parseInt((String) session.getAttribute("pass"));
         int price = passengersCount*30;
         float hst= price/11;
         float total = price +hst;
         session.setAttribute("fare",price);
         session.setAttribute("hst",hst);
          session.setAttribute("total",total);
         String[] pass_name = request.getParameterValues("passName");
         String[] pass_age = request.getParameterValues("passAge");
         System.out.println(Arrays.toString(pass_name));
         System.out.println(Arrays.toString(pass_age));
         session.setAttribute("passengerName",pass_name);
         session.setAttribute("passengerAge",pass_age);
         request.getRequestDispatcher("ticket.jsp").include(request, response);  
          
    }
}
