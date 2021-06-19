import java.io.*;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;



@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)
public class Profile extends HttpServlet{
  public void init(ServletConfig config) throws ServletException{
  super.init(config);
  }
  /**Process the HTTP Get request*/
  public void doPost(HttpServletRequest req, 
  HttpServletResponse res) throws ServletException,
  IOException{
  String connectionURL = "jdbc:mysql://localhost:3306/placement-assistance";
  Connection connection=null;
  ResultSet rs;
  res.setContentType("text/html");
  PrintWriter out = res.getWriter();
  InputStream inputStream = null;
  Part filePart = req.getPart("resume");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
  
  //get the variables entered in the form
  
        String grno = req.getParameter("gr_no");
        String email = req.getParameter("email");
        String full_name = req.getParameter("full_name");
        String gender = req.getParameter("gender");
        String dob = req.getParameter("dob");
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd"); // your template here
        java.util.Date dateStr = null;
      try {
          dateStr = formatter.parse(dob);
      } catch (ParseException ex) {
          Logger.getLogger(Profile.class.getName()).log(Level.SEVERE, null, ex);
      }
        java.sql.Date dateDB = new java.sql.Date(dateStr.getTime());
        String mbno = req.getParameter("mb_no");
        String per_email = req.getParameter("personal_email");
        String quali = req.getParameter("qualification");
        String pass_yr = req.getParameter("passing_year");
        String tenth_per = req.getParameter("tenth_per");
        String twelth_per = req.getParameter("twelth_per");
        String diploma_per = req.getParameter("diploma_per");
        String college_name = req.getParameter("college_name");
        String grad_cgpa = req.getParameter("grad_cgpa");
        String grad_per = req.getParameter("grad_per");
        String resume1 = req.getParameter("resume");
   
  try {
  // Load the database driver
  Class.forName("com.mysql.jdbc.Driver");
  // Get a Connection to the database
  connection = DriverManager.getConnection
  (connectionURL, "root", ""); 
  //Add the data into the database
  String sql = 
  "INSERT INTO student_register(grno, email, full_name, gender, dob, mb_number, personal_email, qualification, passing_year, 10th_per , 12th_per , diploma_per , college_name, graduation_cgpa, graduation_per , resume) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
  
  PreparedStatement pst = 
  connection.prepareStatement(sql);
  
            pst.setString(1, grno);
            pst.setString(2, email);
            pst.setString(3, full_name);
            pst.setString(4, gender);
            pst.setString(5, dob);
            pst.setString(6, mbno);
            pst.setString(7, per_email);
            pst.setString(8, quali);
            pst.setString(9, pass_yr);
            pst.setString(10, tenth_per);
            pst.setString(11, twelth_per);
            pst.setString(12, diploma_per);
            pst.setString(13, college_name);
            pst.setString(14, grad_cgpa);
            pst.setString(15, grad_per);
             if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                pst.setBlob(16, inputStream);
            }
            int row = pst.executeUpdate();
              res.setHeader("Refresh", "2;url=announcements.jsp");

            if (row > 0) {
                out.println( "File uploaded and saved into database \n");
            }
            
  int numRowsChanged = pst.executeUpdate();
  // show that the new account has been created
  out.println(" Hello : ");
  out.println(" '"+full_name+"'");
  pst.close();
  }
  catch(ClassNotFoundException e){
  out.println("Couldn't load database driver: " 
  + e.getMessage());
  }
//  catch(SQLException e){
//  out.println("SQLException caught: " 
//  + e.getMessage());
//  }
  catch (Exception e){
  out.println(e);
  }
  finally {
  // Always close the database connection.
  try {
  if (connection != null) connection.close();
  }
  catch (SQLException ignored){
  out.println(ignored);
  }
  }
  }
}
