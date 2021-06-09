<%-- 
    Document   : ApplyCompany
    Created on : Jun 6, 2021, 3:46:12 PM
    Author     : my pc
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page
    import="java.io.IOException;"
    import ="java.io.PrintWriter;"
    import ="javax.servlet.ServletException;"
    import ="javax.servlet.annotation.WebServlet;"
    import ="javax.servlet.http.HttpServlet;"
    import ="javax.servlet.http.HttpServletRequest;"
    import ="javax.servlet.http.HttpServletResponse;"
    import ="java.sql.*;"
    import ="java.sql.ResultSet;"
    import ="javax.servlet.http.HttpSession;"%>
<%
    
HttpSession ss = request.getSession();    
String grno=ss.getAttribute("GRNo").toString();
String company_name = request.getParameter("company");
int gr_no = Integer.parseInt(grno);
try
{
Class.forName("com.mysql.jdbc.Driver");
//out.println(gr_no);
//out.println(company_name);
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placement-assistance", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("UPDATE student_register SET "+company_name+" = 1 WHERE grno="+gr_no);
out.println("Applied Successfully!");
response.setHeader("Refresh", "2;url=TrackCompanies.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>