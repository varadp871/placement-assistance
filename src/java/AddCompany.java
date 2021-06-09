/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author my pc
 */
public class AddCompany extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection conn;
        Statement stmt;
        ResultSet rs;
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/";
        String dbname = "placement-assistance";
        String userName = "root";
        String Password = "";
        String branches[] = request.getParameterValues("branch");
        String company_name = request.getParameter("company_name");
        String offered_ctc = request.getParameter("offered_ctc");
        String required_cgpa = request.getParameter("required_cgpa");
        String description = request.getParameter("description");
        int ELEX = 0, COMP = 0, IT = 0, ENTC = 0, INDUS = 0, PROD = 0, CHEM = 0, MECH = 0;
        String additionalDetails = "N/A";
        
        for (int i = 0; i < branches.length; i++) {
           if(branches[i].equals("COMP")){
               COMP = 1;
           }else if(branches[i].equals("IT")){
               IT = 1;
           }else if(branches[i].equals("ENTC")){
               ENTC = 1;
           }else if(branches[i].equals("ELEX")){
               ELEX = 1;
           }else if(branches[i].equals("MECH")){
               MECH = 1;
           }else if(branches[i].equals("INDUS")){
               INDUS = 1;
           }else if(branches[i].equals("PROD")){
               PROD = 1;
           }else if(branches[i].equals("CHEM")){
               CHEM = 1;
           }
        }

        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbname, userName, Password);
            stmt = conn.createStatement();
            String sql = "INSERT INTO active_companies VALUES('" + company_name + "', "+ offered_ctc +" , " + required_cgpa + " ,'" + description + "','"+additionalDetails+"',"+COMP +"," + IT + ", " + ENTC + ", " + ELEX + ", " + MECH + ", " + INDUS + ", " + PROD + ", " + CHEM + ")";
            String sqll = "ALTER TABLE student_register ADD "+company_name+" BOOL DEFAULT NULL";
            stmt.executeUpdate(sql);
         
            stmt.executeUpdate(sqll);
//            out.println("added to student register");
         response.setHeader("Refresh", "2;url=welcomeAdmin.jsp");
//         response.sendRedirect("welcomeAdmin.jsp");
       
        } catch (Exception e) {
            out.println(e);
        } 

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
