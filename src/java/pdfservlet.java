/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.OutputStream;
import java.io.InputStream;

import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author my pc
 */
public class pdfservlet extends HttpServlet {

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
//        response.setContentType("text/html;charset=UTF-8");

        response.setHeader("Content-Disposition", "inline");
        Connection conn;
        Statement stmt;
        ResultSet rs;
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/";
        String dbname = "placement-assistance";
        String userName = "root";
        String Password = "";
        Blob file = null;
        ServletOutputStream output = response.getOutputStream();

        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbname, userName, Password);
            stmt = conn.createStatement();
            String grno = request.getParameter("grno");
            rs = stmt.executeQuery("SELECT resume FROM student_register WHERE grno='" + grno + "'");
            try {
                if (rs.next()) {
                    file = rs.getBlob("resume");
                } else {
                    return;
                }
                response.setContentType("application/pdf");

                InputStream in = file.getBinaryStream();
                int length = (int) file.length();
                response.setContentLength(length);
                int bufferSize = 1024;
                byte[] buffer = new byte[bufferSize];
                while ((length = in.read(buffer)) != -1) {
                    output.write(buffer, 0, length);
                }
                in.close();
                output.flush();

            } catch (Exception e) {
                e.getMessage();
            }

        } catch (Exception e) {
            e.getMessage();
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
