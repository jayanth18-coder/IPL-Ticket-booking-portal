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
.style6 {	color: #000099;
	font-weight: bold;
	font-size: 14px;
}
.style9 {color: #000099; font-weight: bold; }
.style2 {font-size: 24px}
-->
</style>
</head>
<body>
<div id="container">
  <div id="header"> <a href="http://all-free-download.com/free-website-templates/"><span class="style2">IPL2022.com(Stadium Ticket booking) </span></a></div>
  <div id="menu">  <span class="style1"><a href="about.jsp">About</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="schedule.jsp">Schedule</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="signin.jsp">SignIn</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="signup.jsp">New User</a></span> </div>
  <div id="sidebar">
    <h1>Welcome</h1>
  </div>
  <div id="main">
    <p>&nbsp;</p>
    <form id="form1" name="form1" method="post" action="">
      <p>&nbsp;</p>
      <table width="487" height="128" align="center">
        <tr>
          <td colspan="3"><div align="center" class="style6">Forgot Password ?</div></td>
        </tr>
        <tr>
          <td width="115"><span class="style9">Email Id </span></td>
          <td width="186"><input type="text" name="textfield3" /></td>
          <td width="170" rowspan="2"><img src="images/k0127693.jpg" width="170" height="113" /></td>
        </tr>
        
        <tr>
          <td><div align="center">
              <input type="submit" name="Submit" value="Reset Password" />
          </div></td>
          <td><div align="center">
            <a href="signin.jsp">Remember Password ?</a></div></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    </form>
    <p align="center">  <%@page import="javax.mail.*"%>
      <%@page import="javax.mail.internet.*"%>
      <%@page import="javax.activation.*"%>
      <%@page import="java.util.Random"%>
      <%@page import="javax.swing.JOptionPane"%>
      <%@page import="java.util.Properties"%>
      <%@page import="java.util.*,java.io.*"%>
      <%@page import ="java.sql.*"%>
         <%@page import ="Emailpackage.*"%>
      <%
  if(request.getParameter("Submit")!= null)
   	{
	try {
	
		String mailid = request.getParameter("textfield3");




Calendar  calendar = null;
	    calendar = Calendar.getInstance();
	    java.util.Date trialTime = new java.util.Date();
	    calendar.setTime(trialTime);	


	    int year = calendar.get(Calendar.YEAR);
	    int month = 1 + calendar.get(Calendar.MONTH);
	    
	    int dayofmonth = calendar.get(Calendar.DAY_OF_MONTH);

	    String date = month + "/" + dayofmonth + "/" +  year;

 	    int hour = calendar.get(Calendar.HOUR_OF_DAY);
	    int min = calendar.get(Calendar.MINUTE);
	    int sec = calendar.get(Calendar.SECOND);
	    String dot1 = date +" "+ hour + ":" + min  ; 

//	out.println(dot1);
	
	
       Class.forName("com.mysql.jdbc.Driver");
//      Connection con = DriverManager.getConnection("JDBC:ODBC:DON","","");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/ipl","root","mysql"); 
		
		Statement stmt=con.createStatement();
	
	  ResultSet rs;			
	 	  rs=stmt.executeQuery("select * from signup where emailid="+"'"+mailid+"'");
		int found=0;
	      while(rs.next())
    	  {
		
				found++;
			}

		if(found==0)
		{
				out.println("Sorry, invalid login");
			
		}
		else
		{	
		
		  String str="Update signup set pwd=? where emailid=?";
	//	  out.println(str);
		  		PreparedStatement psmt =con.prepareStatement(str);
				psmt.setString(1,dot1);
				psmt.setString(2,mailid);
				psmt.executeUpdate();
				//out.println(s1+","+s3);
				psmt.close();
				rs.close();

						out.println("<h1>done</h1>");

			
			String emailto=mailid;
Emailclass new1=new Emailclass();


new1.SendMail(emailto,dot1);
out.println("Sent Mail Successfully to your registered Email Id.....");
						//out.println("<h1>done</h1>");
	
	}
}
	catch (Exception ex) {
		out.println(ex);
	}
	}
%>&nbsp;</p>
    <p>&nbsp;</p>
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
