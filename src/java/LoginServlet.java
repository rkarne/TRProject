/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import DBUtils.DBConnection;
import java.io.IOException;  
import java.io.PrintWriter;  
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;

/**
 *
 * @author rkarne
 */
public class LoginServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException {  
         
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        String name=request.getParameter("username");  
        String password=request.getParameter("password");  
        try {
            Connection con = DBConnection.getConnection();
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM users");
            boolean status = false;
             while (rs.next()) {
                 String user = rs.getString(2);
                 String pass = rs.getString(3);
                 if(password.equals(pass) && name.equals(user)){ 
                     HttpSession session=request.getSession();  
                     session.setAttribute("name",name);
                     status = true;
                      request.getRequestDispatcher("success.html").include(request, response);  
                     } 
             }
             if(status == false){
                 System.out.print("Sorry, username or password error!");  
                 request.getRequestDispatcher("index.html").include(request, response);
             } 
             out.close();
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }  
}
