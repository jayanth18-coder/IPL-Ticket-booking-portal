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
.style4 {font-size: 14px}
-->
</style>
</head>
<body>
<div id="container">
  <div id="header"> 
    <div align="center" class="style2">IPL2022.com(Stadium Ticket booking) </div>
  </div>
  <div id="menu">  <span class="style1"><a href="gedp.jsp">Edit Password</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="buytickets.jsp">Buy Tickets</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="viewbookingshistory.jsp">View Bookings</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="index.jsp">Logout</a></span> </div>
  <div id="sidebar">
    <h1>Welcome</h1>
    <p>Administrator</p>
  </div>
  <div id="main">
    <p>&nbsp;</p>
    <form id="form1" name="form1" method="post" action="">
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <table width="662" border="0" align="center">
        <tr>
          <th width="126" height="28" scope="row"><span class="style4">Old Password </span></th>
          <td width="144"><label>
            <input name="textfield" type="password" id="textfield" required="required"/>
          </label></td>
          <td width="180" rowspan="3"><img src="49LHPVCADNLU9UCAQEPJI7CASV50Y6CA7A2NX3CAOEPQ0TCA05QVGICAY5BD39CA0LDPLSCAEIHBVJCANQKHJ7CA9B9NK6CA6S2Q38CA93NPLBCABFUHXWCAJC7MZUCAASA387CAVPACJCCAU9XJV0CAUS5W5T.jpg" alt="" width="180" height="140" /></td>
        </tr>
        <tr>
          <th height="28" scope="row"><span class="style4">New Password </span></th>
          <td><label>
            <input type="password" name="textfield2" required="required"/>
          </label></td>
        </tr>
        <tr>
          <th height="58" scope="row"><span class="style4">Confirm Password </span></th>
          <td><label>
            <input type="password" name="textfield3" required="required"/>
          </label></td>
        </tr>
        <tr>
          <th height="58" scope="row">&nbsp;</th>
          <td><label>
            <input type="submit" name="Submit" value="Submit" />
            </label>
              <label>
              <input type="reset" name="Submit2" value="Reset" />
            </label></td>
          <td>&nbsp;</td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    </form>
    <p>&nbsp;</p>
    <p align="center">
      <%@page import ="java.sql.*"%>
      <%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
      <%
                                          
try
{
if(request.getParameter("Submit")!= null)
	
   	{
      Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ipl","root","mysql"); 
      Statement stmt=con.createStatement(); 
      ResultSet rs;

		String email=(String) session.getAttribute("email");
      String s=request.getParameter("textfield").trim();//old 
      String s1=request.getParameter("textfield2").trim();//new
       String s3=request.getParameter("textfield3").trim();//confirm
      if(!s1.equals(s3))
        {
          out.println("<p align=center> Passwords Do not Match...</p>");
        }
      else
      {

      int found=0;
	  
	          rs=stmt.executeQuery("select * from signup where emailid="+"'"+email+"'");
      while(rs.next())
      {
  			found++;        
          
      }
if(found==1)
{
          PreparedStatement pstmt=con.prepareStatement("Update signup set pwd=? where emailid=?");
          pstmt.setString(1,s3);
            pstmt.setString(2,email);
          pstmt.executeUpdate();
         
           pstmt.close();
          

  
     out.println("<p align=center> successfully updated...</p>");
      rs.close();
      con.close();
}   
else
{
	    out.println("<p align=center> Something Wrong Pls Chk</p>");
}


}}
}
catch(Exception e)
    {
   
      out.println(e);
    }

%>
</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </div>
  <div id="footer"></div>
</div>
<div align=center></div>
</body>
</html>
