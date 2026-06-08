<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Keep it Simple</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<style type="text/css">
<!--
.style1 {font-weight: bold}
.style2 {font-size: 24px}
-->
</style>
</head>
<body>
<div id="container">
  <div id="header"> 
    <div align="center" class="style2">IPL2024.com(Stadium Ticket booking) </div>
  </div>
  <div id="menu">  <span class="style1"><a href="about.jsp">About</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="schedule.jsp">Schedule</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="signin.jsp">SignIn</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="signup.jsp">New User</a></span> </div>
  <div id="sidebar">
    <h1>Welcome</h1>
  </div>
  <div id="main">
    <p>&nbsp;</p>
    <form id="form1" name="form1" method="post" action="">
      <table width="357" align="center">
        <tr>
          <td width="76">Email-ID </td>
          <td width="269"><label>
            <input type="email" name="textfield" required="required" />
          </label></td>
          <td width="269" rowspan="7"><img src="images/register2.jpg" alt="" width="400" height="267" /></td>
        </tr>
        <tr>
          <td>Password</td>
          <td><label>
            <input type="password" name="textfield2"   placeholder="Password:" required="required" id="t10" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"/>
          </label></td>
        </tr>
        <tr>
          <td>Name</td>
          <td><label>
            <input type="text" name="textfield3" pattern="[A-Za-z]+" title="letters only" required="required" />
          </label></td>
        </tr>
        <tr>
          <td>Gender</td>
          <td><label>
            <input name="radiobutton" type="radio" value="Female" />
            </label>
            F
            <label>
              <input name="radiobutton" type="radio" value="Male" />
            </label>
            M</td>
        </tr>
        <tr>
          <td>Date of birth </td>
          <td><label>
            <input type="date" name="textfield4" required="required"/>
          </label></td>
        </tr>
        <tr>
          <td>Address</td>
          <td><label>
            <textarea name="textarea"></textarea>
          </label></td>
        </tr>
        <tr>
          <td height="28">Phone</td>
          <td><label>
            <input name="textfield5" maxlength="10" placeholder="Phone or Mobile no"  pattern="^\d{10}$" title="only nos should be 10 digits" required="required"/>
          </label></td>
        </tr>
        <tr>
          <td height="47" colspan="3"><label>
              <div align="center">
                <input type="submit" name="Submit" value="Submit" />
                <input type="reset" name="Submit2" value="Reset" />
              </div>
            </label></td>
        </tr>
      </table>
      <p>&nbsp;</p>
    </form>
    <p>&nbsp;</p>
    <p align="center">
     <%@ page import ="java.io.*,java.sql.*,java.util.*,dbcon.DbConnection;"%>
      <%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
      <%
   

try
{
if(request.getParameter("Submit")!= null)
	
   	{
            Connection con=DbConnection.createconnection();
   		//Class.forName("com.mysql.jdbc.Driver");
	//  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ipl","root","mysql");  
       	 String t1=request.getParameter("textfield").trim();
		 String t2=request.getParameter("textfield2").trim();
		 String t3=request.getParameter("textfield3").trim();
	     String t4=request.getParameter("radiobutton").trim();
         String t5=request.getParameter("textfield4").trim();
         String t6=request.getParameter("textarea").trim();
         String t7=request.getParameter("textfield5").trim();
        
        Statement stmt=con.createStatement();
		       int count=0;
	        ResultSet rs,rs1;
			 rs=stmt.executeQuery("select * from signup where emailid="+"'"+t1+"'");

      int found=0;
      while(rs.next())
      {
			count++;
		}

			 if(count==0)
	  {
       

		
       
        PreparedStatement pstmt=con.prepareStatement("insert into signup values(?,?,?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            pstmt.setString(5,t5);
            pstmt.setString(6,t6);
            pstmt.setString(7,t7);
           
            
             pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
            con.close(); 
			out.println("SUCCESFULLY REGISTERED");
            //response.sendRedirect("http://localhost:8084/Quickmail/succsignup.html");
    }
	
	else
		{
			out.println("User already Registrered with us ....");
		}
		}
}
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
%>
</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </div>
  <div id="footer"></div>
</div>
<div align=center></div>
</body>
</html>
