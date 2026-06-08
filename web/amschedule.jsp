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
    <div align="center" class="style2">IPL2022.com(Stadium Ticket booking) </div>
  </div>
  <div id="menu">  <span class="style1"><a href="aedp.jsp">Edit Password</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="amschedule.jsp">Match Schedule</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="viewbookings.jsp">View Bookings</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="index.jsp">Logout</a></span> </div>
  <div id="sidebar">
    <h1>Welcome</h1>
    <p>Administrator</p>
  </div>
  <div id="main">
    <form id="form1" name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <th width="66%" scope="col"><div align="center">Match No </div></th>
          <th width="34%" scope="col"><input type="text" name="a" /></th>
        </tr>
        <tr>
          <th scope="col"><div align="center">Team </div></th>
          <th scope="col"><input type="text" name="b" /></th>
        </tr>
        <tr>
          <td><div align="center">Place/Venue</div></td>
          <td><select name="c">
            <option value="Bengaluru">Bengaluru</option>
            <option value="Chennai">Chennai</option>
            <option value="Mumbai">Mumbai</option>
            <option value="Delhi">Delhi</option>
          </select>          </td>
        </tr>
        <tr>
          <td><div align="center">Date of the Match </div></td>
          <td><input type="date" name="d" /></td>
        </tr>
        <tr>
          <td><div align="center">Ticket Type </div></td>
          <td><input name="e" type="text" value="Normal" /></td>
        </tr>
        <tr>
          <td><div align="center">Price in Rs. </div></td>
          <td><input type="text" name="f" /></td>
        </tr>
        <tr>
          <td><div align="center">Available</div></td>
          <td><input type="text" name="g" /></td>
        </tr>
        <tr>
          <td><div align="center">Ticket Type </div></td>
          <td><input name="h" type="text" value="Executive" /></td>
        </tr>
        <tr>
          <td><div align="center">Price in Rs. </div></td>
          <td><input type="text" name="i" /></td>
        </tr>
        <tr>
          <td><div align="center">Available</div></td>
          <td><input type="text" name="j" /></td>
        </tr>
        <tr>
          <td><div align="center">Coach Team-1</div></td>
          <td><input type="text" name="k" id="textfield" /></td>
        </tr>
        <tr>
          <td><div align="center">Coach Team-2</div></td>
          <td><input type="text" name="l" id="textfield2" /></td>
        </tr>
        <tr>
          <td><div align="center">Umpire-1 Name</div></td>
          <td><input type="text" name="m" id="textfield3" /></td>
        </tr>
        <tr>
          <td><div align="center">Umpire-2 Name</div></td>
          <td><input type="text" name="n" id="textfield4" /></td>
        </tr>
        <tr>
          <td><div align="center">Umpire-3 Name</div></td>
          <td><input type="text" name="o" id="textfield5" /></td>
        </tr>
        <tr>
          <td><div align="center"></div></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>
            
            <div align="center">
              <input type="submit" name="Submit" value="Add Ticket Details" />
              </div></td>
          <td><input type="reset" name="Submit2" value="Reset" /></td>
        </tr>
      </table>
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
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ipl","root","");  
       	 String t1=request.getParameter("a").trim();
		 String t2=request.getParameter("b").trim();
		 String t3=request.getParameter("c").trim();
	     String t4=request.getParameter("d").trim();
         String t5=request.getParameter("e").trim();
         String t6=request.getParameter("f").trim();
         String t7=request.getParameter("g").trim();
          String t8=request.getParameter("h").trim();
           String t9=request.getParameter("i").trim();
            String t10=request.getParameter("j").trim();
         String t11=request.getParameter("k").trim();
         String t12=request.getParameter("l").trim();
          String t13=request.getParameter("m").trim();
           String t14=request.getParameter("n").trim();
           String t15=request.getParameter("o").trim();

        
        Statement stmt=con.createStatement();
		
       
        PreparedStatement pstmt=con.prepareStatement("insert into ticket values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            pstmt.setString(5,t5);
            pstmt.setString(6,t6);
            pstmt.setString(7,t7);
            pstmt.setString(8,t8);
            pstmt.setString(9,t9);
           pstmt.setString(10,t10);
            pstmt.setString(11,t11);
            pstmt.setString(12,t12);
            pstmt.setString(13,t13);
            pstmt.setString(14,t14);
            pstmt.setString(15,t15);
           
            
             pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
            con.close(); 
			out.println("SUCCESFULLY REGISTERED");
            //response.sendRedirect("http://localhost:8084/Quickmail/succsignup.html");
    
	

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
  </div>
  <div id="footer"></div>
</div>
<div align=center></div>
</body>
</html>
