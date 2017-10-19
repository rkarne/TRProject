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
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  

    public class HomeServlet extends HttpServlet {  
            @Override
            protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                                    throws ServletException, IOException {  
                response.setContentType("text/html");  
                PrintWriter out=response.getWriter(); 
                Connection con = null;
                try {
                    con = DBConnection.getConnection();
                } catch (SQLException ex) {
                    Logger.getLogger(HomeServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
                    ArrayList<String> getList = sourceList(con);
                     request.setAttribute("source", getList);
                     ArrayList<String> destinList = destinationList(con);
                     request.setAttribute("destination", destinList);
                     request.getRequestDispatcher("home.jsp").include(request, response);  
                     out.close();  
        }
            
    public ArrayList<String> sourceList(Connection con){
         ArrayList<String> listName = new ArrayList<String>();
        try {
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM path");
            while (rs.next()) {
                 String source = rs.getString(2);
                 listName.add(source);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listName;
    }
    
    public ArrayList<String> destinationList(Connection con){
         ArrayList<String> listName = new ArrayList<String>();
        try {
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM path");
            while (rs.next()) {
                 String source = rs.getString(3);
                 listName.add(source);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listName;
    
    }
    }  