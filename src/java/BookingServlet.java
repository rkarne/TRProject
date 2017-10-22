/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rkarne
 */
public class BookingServlet extends HttpServlet {

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
        PrintWriter out=response.getWriter();  
        String src=request.getParameter("sourceList");
        String dest=request.getParameter("destinationList");
        String date =  request.getParameter("date");
        String NoOfpass =  request.getParameter("passengers");
        System.out.println(src);
        System.out.println(dest);
        System.out.println(date);
        System.out.println(NoOfpass);
         HttpSession session=request.getSession();  
         session.setAttribute("src",src);
         session.setAttribute("des",dest);
         session.setAttribute("date",date);
         session.setAttribute("pass",NoOfpass);
        PrintWriter writer = response.getWriter();
         
//        // build HTML code
//        String htmlRespone = "<html>";
//        htmlRespone += "<h2>Your username is: <br/>";      
//        htmlRespone += "Your password is: </h2>";    
//        htmlRespone += "</html>";
//        writer.println(htmlRespone);
        
        request.getRequestDispatcher("booking.jsp").include(request, response);
    }

}
