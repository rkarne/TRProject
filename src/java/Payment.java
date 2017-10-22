/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rkarne
 */
public class Payment extends HttpServlet {

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
         HttpSession session=request.getSession();  
        String cardNumber=request.getParameter("cardNumber");
         session.setAttribute("cardNumber",cardNumber);
        String ExpDate=request.getParameter("cardExpiry");
        session.setAttribute("ExpDate",ExpDate);
        String cv=request.getParameter("cardCVC");
        session.setAttribute("cv",cv);
        String name=request.getParameter("paymentName");
        session.setAttribute("name",name);
        String street=request.getParameter("paymentAddress");
        session.setAttribute("street",street);
        String city=request.getParameter("paymentCity");
        session.setAttribute("city",city);
        String state=request.getParameter("paymentProvince");  
        session.setAttribute("state",state);
        String zip=request.getParameter("paymentZip");
        session.setAttribute("zip",zip);
        String phone=request.getParameter("paymentPhone");
        session.setAttribute("phone",phone);
        String email=request.getParameter("paymentEmail");
         session.setAttribute("email",email);
        System.out.println(cardNumber);
        System.out.println(ExpDate);
        System.out.println(cv);
        System.out.println(name);
        System.out.println(street);
        System.out.println(city);
        System.out.println(state);
        System.out.println(zip);
        System.out.println(phone);
        System.out.println(email);   
        
        request.getRequestDispatcher("confirmation.jsp").include(request, response);  
    }
}
