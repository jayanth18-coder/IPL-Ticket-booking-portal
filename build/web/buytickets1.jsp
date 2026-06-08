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
.style6 {font-weight: bold}
.style9 {font-weight: bold}
.style12 {font-weight: bold}
.style15 {font-weight: bold}
.style18 {font-weight: bold}
.style21 {font-weight: bold}
.style24 {font-weight: bold}
.style27 {font-weight: bold}
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
    <div align="center">
      <%
  		String mno=request.getParameter("mno");
  		String ttype=request.getParameter("ttype");
  		String p=request.getParameter("p");
  		String a=request.getParameter("a");
  		String v=request.getParameter("v");
 		String dom=request.getParameter("dom");
		
	//	out.println(mno+","+ttype+","+p+","+a+","+v+","+dom);
		
		
  %>
    </div>
    <p>&nbsp;</p>
    <form id="form1" name="form1" method="post" action="">
      <p>&nbsp;</p>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <caption align="top">
        <strong>          Booking Details        </strong>
        </caption>
        <tr>
          <th class="style6" scope="col"><div align="center">Match No </div></th>
          <th scope="col"><strong>
            <input type="text" name="textfield6" readonly="" value="<% out.println(mno); %>" />
          </strong></th>
        </tr>
        
        <tr>
          <th width="64%" class="style9" scope="col"><div align="center">Ticket No </div></th>
          <th width="36%" scope="col"><strong>
            <input type="text" name="textfield" value="<%@page import ="java.sql.*"%>
<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%><%try
{
   Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ipl","root",""); 
      Statement stmt=con.createStatement();
      ResultSet rs,rs1;
     
	     rs=stmt.executeQuery("select * from ticket ");
	      int count=1;
      while(rs.next())
      {
			count++;
				  
		}
		
		String s="";
		s="BNO-"+s.valueOf(count);
  		out.println(s.trim());
		  }

 catch(Exception e)
    {
     
     out.println("Exception occured" +e);
    }%>" />	      
          </strong></th>
        </tr>
        <tr>
          <td class="style12"><div align="center">Venue</div></td>
          <td><strong>
            <input type="text" name="textfield2" value="<%  v=request.getParameter("v"); out.println(v); %>"/>
          </strong></td>
        </tr>
        <tr>
          <td class="style15"><div align="center">Date</div></td>
          <td><strong>
            <input type="text" name="textfield3" value="<%   out.println(dom); %>" readonly=""/>
          </strong></td>
        </tr>
        <tr>
          <td class="style18"><div align="center">Ticket Type </div></td>
          <td><strong>
            <input type="text" name="textfield4" value="<%   out.println(ttype); %>" readonly=""/>
          </strong></td>
        </tr>
        <tr>
          <td class="style21"><div align="center">Amount</div></td>
          <td><strong>
            <input type="text" name="textfield5" value="<%   out.println(p); %>" readonly=""/>
          </strong></td>
        </tr>
        <tr>
          <td class="style24"><div align="center">Email Id </div></td>
          <td><strong>
            <input type="text" name="textfield7" readonly="" value="<% String ee=(String) session.getAttribute("email"); out.println(ee);%>"/>
          </strong></td>
        </tr>
        <tr>
          <td colspan="2" class="style27">
            <div align="center">
              <input type="submit" name="Submit" value="Submit" />
              </div></td>
        </tr>
      </table>
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
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ipl","root","");  
       	 String t1=request.getParameter("textfield6").trim();
		 String t2=request.getParameter("textfield").trim();
		 String t3=request.getParameter("textfield2").trim();
	     String t4=request.getParameter("textfield3").trim();
         String t5=request.getParameter("textfield4").trim();
         String t6=request.getParameter("textfield5").trim();
         String t7=request.getParameter("textfield7").trim();
        
			int avl=Integer.parseInt(a);
			if(avl==0)
			{
				out.println("sorry");			
			}
			else
			{
		
        Statement stmt=con.createStatement();
		    
	        

		
       
        PreparedStatement pstmt=con.prepareStatement("insert into booking values(?,?,?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            pstmt.setString(5,t5);
            pstmt.setString(6,t6);
            pstmt.setString(7,t7);
           
            
             pstmt.executeUpdate(); 
                    
            
            pstmt.close();  
	if(t5.equals("Normal"))
	{
			
			        PreparedStatement pstmt1=con.prepareStatement("update ticket set avln=avln-1 where matchno="+"'"+t1+"'"+" and ttypen='Normal'");   
             pstmt1.executeUpdate(); 
                    
            
            pstmt1.close();  
	}
	else
	{
	
			        PreparedStatement pstmt1=con.prepareStatement("update ticket set avle=avle-1 where matchno="+"'"+t1+"'"+" and ttypee='Executive'");   
             pstmt1.executeUpdate(); 
                    
            
            pstmt1.close();  
	
	}
            con.close(); 
			out.println("Booking Successfull <br>Please take print out of this as your ticket");
            //response.sendRedirect("http://localhost:8084/Quickmail/succsignup.html");
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
