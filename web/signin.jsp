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
  <div id="header"> <a href="http://all-free-download.com/free-website-templates/"><span class="style2">IPL2024.com(Stadium Ticket booking) </span></a></div>
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
          <td colspan="3"><div align="center" class="style6">Sign In </div></td>
        </tr>
        <tr>
          <td width="115"><span class="style9">Email Id </span></td>
          <td width="186"><input type="text" name="textfield3" /></td>
          <td width="170" rowspan="4"><img src="images/k0127693.jpg" width="170" height="113" /></td>
        </tr>
        <tr>
          <td><span class="style9">Password</span></td>
          <td><input type="password" name="textfield4" /></td>
        </tr>
        <tr>
          <td><span class="style9">User Type </span></td>
          <td><select name="select">
              <option value="Admin">Admin</option>
              <option value="Guest">Guest</option>
                      </select>
          </td>
        </tr>
        <tr>
          <td><div align="center">
              <input type="submit" name="Submit" value="Submit" />
          </div></td>
          <td><div align="center">
              <input type="reset" name="Submit2" value="Reset" />
              <a href="forgotpwd.jsp">Forgot Password ?</a></div></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    </form>
    <p align="center"><%@ page import ="java.io.*,java.sql.*,java.util.*,dbcon.DbConnection"%>
<%
if(request.getParameter("Submit")!= null)
	{
try
{


	String uname=request.getParameter("textfield3");
	String pword=request.getParameter("textfield4");
	String grp=request.getParameter("select");

	
	uname.trim();
	pword.trim();
	grp.trim();
	
	int found=0,found1=0;


	//Class.forName("com.mysql.jdbc.Driver");
	  //Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ipl","root","mysql");  
		ResultSet rs,rs1;
		Connection con=DbConnection.createconnection();
		Statement st=con.createStatement();
		if (grp.equals("Admin"))
		{
		
		
		
		String sql="select * from  adminlogin where u="+"'"+uname+"'"+" and p="+"'"+pword+"'"; 
		//out.println(sql);
			rs=st.executeQuery(sql);
			found1=0;
			while(rs.next())
			{
	
			
				found=1;
			
			}
	
		
			//out.println(found);
			if(found==1)
			{
			
							session.setAttribute("email",uname);
							response.sendRedirect("adminpage.jsp");
				
			}
			
			else
			{
			
									out.println("Login Unscuccess");
			}			

		}
		
		else if (grp.equals("Guest"))
	{
	
	
		String sql="select * from signup where emailid="+"'"+uname+"'"+" and pwd="+"'"+pword+"'"; 
			rs=st.executeQuery(sql);
			 found1=0;
			while(rs.next())
			{
				found1=1;
			
			}
	
			if(found1==1)
			{
			
									session.setAttribute("email",uname);
							response.sendRedirect("guestpage.jsp");
				
			}
			
			else
			{
			
									out.println("Login Unscuccess");
			}		
			
}
		}
		catch(Exception e)
		{
			out.println("problem"+e);
				
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
