<%-- 
    Document   : RemoveCompanyFinal
    Created on : Jun 6, 2021, 4:22:44 PM
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
String company_name=request.getParameter("company");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placement-assistance", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM active_companies WHERE company_name='"+company_name+"'");
//out.println("Deleted");
st.executeUpdate("ALTER TABLE student_register DROP COLUMN "+company_name);
response.setHeader("Refresh", "2;url=RemoveCompanyLanding.jsp");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>