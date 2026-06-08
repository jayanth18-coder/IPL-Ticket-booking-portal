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
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  font-size:12px;
  width: 100%;
  color:#000;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
  font-size:12px;
}

#customers tr:nth-child(even){background-color: #81A4F5;}

#customers tr:hover {background-color: #249BBD;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color:#003399;
  color: white;
  font-size:12px;
}
</style>

</head>
<body>
<div id="container">
  <div id="header"> 
    <div align="center" class="style2">IPL2022.com(Stadium Ticket booking) </div>
  </div>
  <div id="menu">  <span class="style1"><a href="gedp.jsp">Edit Password</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="buytickets.jsp">Buy Tickets</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="viewbookingshistory.jsp">View Bookings</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="index.jsp">Logout</a></span> </div>
  <p>&nbsp;  </p>
  <p>&nbsp;</p>
  <p>
    <%@page import ="java.sql.*"%>
    <%@page import="java.util.*,java.io.*"%>
    <%   
                                          
try
{
     Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ipl","root","");
      Statement stmt=con.createStatement();
      ResultSet rs;
      ResultSetMetaData rmd;
	 
       
 
	 
 String s11="select matchno as MatchNo,place as Venue,dom as DateofMatch,ttypen as NormalTicket,pricen as Price,avln as Avialable  from ticket";
	
     rs = stmt.executeQuery(s11);
      
		out.println("<body><h1><div align=center><strong><span class=style1>Match DETAILS</span></strong></div></h1></body>");
      
        out.println("<table border=10 align=center width=50% bordercolor=blue ><tr>");
        
        rmd =rs.getMetaData();
        int n=rmd.getColumnCount();
        for(int i=1;i<=n+1;i++)
        {
		    if(i<=n)
            out.println("<td><b><font size=5>"+rmd.getColumnName(i)+"</font></b></td>");
			else
			out.println("<td><b><font size=5>Book</font></b></td>");
        }
        String s="",s1="",s2="",s22="",s3="",s33="",s4="",s5="";
        while (rs.next())
        {
            out.println("<tr>");
            
                for(int x=1;x<=n;x++)
                {
        	         s=rs.getString(x);
					 if(x==1)
					 {
					 	s1=s;
						   out.println("<td><b>"+s1+"</b></td>");
					 }
					 else if(x==2)
					 {
						 	s22=s;
						   out.println("<td><b>"+s22+"</b></td>");
					 }
					 else if(x==3)
					 {
						 	s33=s;
						   out.println("<td><b>"+s33+"</b></td>");
					 }
					 else if(x==4)
					 {
					 	s2=s;
						   out.println("<td><b>"+s2+"</b></td>");
					 }
					 else if(x==5)
					 {
					 	s3=s;
						   out.println("<td><b>"+s3+"</b></td>");
					 }
					 else if(x==6)
					 {
					 	s4=s;
						   out.println("<td><b>"+s4+"</b></td>");
					 }
					 
					  else
					  {
					                 out.println("<td><b>"+s+"</b></td>");
					 }
			
                 }   
 out.println("<td><b><a href=buytickets1.jsp?mno="+s1+"&ttype="+s2+"&p="+s3+"&a="+s4+"&v="+s22+"&dom="+s33+">BookThis</b><a/></td>");
                
            
            
                
            
          out.println("</tr>");
        }
		out.println("</table><br></body></html>");
        rs.close();
		stmt.close();
		con.close();
		
    
}
  catch(Exception e)
    {
        
      out.println(e);
    }
%>
    </p>
  <p>&nbsp;</p>
  <p>
    <%@page import ="java.sql.*"%>
    <%@page import="java.util.*,java.io.*"%>
    <%   
                                          
try
{
     Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ipl","root","");
      Statement stmt=con.createStatement();
      ResultSet rs;
      ResultSetMetaData rmd;
	 
       
 
	 
 String s11="select matchno as MatchNo,place as Venue,dom as DateofMatch,ttypee as EconomyTicket,pricee as Price,avle as Avialable  from ticket";
	
     rs = stmt.executeQuery(s11);
      
		out.println("<body><h1><div align=center><strong><span class=style1>Match DETAILS</span></strong></div></h1></body>");
      
        out.println("<table border=10 align=center width=50% bordercolor=blue ><tr>");
        
        rmd =rs.getMetaData();
        int n=rmd.getColumnCount();
        for(int i=1;i<=n+1;i++)
        {
		    if(i<=n)
            out.println("<td><b><font size=5>"+rmd.getColumnName(i)+"</font></b></td>");
			else
			out.println("<td><b><font size=5>Book</font></b></td>");
        }
        String s="",s1="",s2="",s22="",s3="",s33="",s4="",s5="";
        while (rs.next())
        {
            out.println("<tr>");
            
                for(int x=1;x<=n;x++)
                {
        	         s=rs.getString(x);
					 if(x==1)
					 {
					 	s1=s;
						   out.println("<td><b>"+s1+"</b></td>");
					 }
					 else if(x==2)
					 {
						 	s22=s;
						   out.println("<td><b>"+s22+"</b></td>");
					 }
					 else if(x==3)
					 {
						 	s33=s;
						   out.println("<td><b>"+s33+"</b></td>");
					 }
					 else if(x==4)
					 {
					 	s2=s;
						   out.println("<td><b>"+s2+"</b></td>");
					 }
					 else if(x==5)
					 {
					 	s3=s;
						   out.println("<td><b>"+s3+"</b></td>");
					 }
					 else if(x==6)
					 {
					 	s4=s;
						   out.println("<td><b>"+s4+"</b></td>");
					 }
					 
					  else
					  {
					                 out.println("<td><b>"+s+"</b></td>");
					 }
			
                 }   
 out.println("<td><b><a href=buytickets1.jsp?mno="+s1+"&ttype="+s2+"&p="+s3+"&a="+s4+"&v="+s22+"&dom="+s33+">BookThis</b><a/></td>");
                
            
            
                
            
          out.println("</tr>");
        }
		out.println("</table><br></body></html>");
        rs.close();
		stmt.close();
		con.close();
		
    
}
  catch(Exception e)
    {
        
      out.println(e);
    }
%>
</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <div id="footer"></div>
</div>
<div align=center></div>
</body>
</html>
