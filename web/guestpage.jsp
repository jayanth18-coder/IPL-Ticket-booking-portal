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
.style3 {font-size: 18px}
-->
</style>
</head>
<body>
<div id="container">
  <div id="header"> 
    <div align="center" class="style2">IPL2022.com(Stadium Ticket booking) </div>
  </div>
  <div id="menu">  <span class="style1"><a href="gedp.jsp">Edit Password</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="buytickets.jsp">Buy Tickets</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="viewbookingshistory.jsp">View Bookings</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="index.jsp">Logout</a></span> </div>
  <div id="footer">
    <p align="center"><span class="style3">WELCOME GUEST </span> <% String gmailid=(String)session.getAttribute("email"); out.println(gmailid);  %></p>
    <p align="center"><img src="img2.jpg" width="621" height="1173" /></p>
  </div>
</div>
<div align=center></div>
</body>
</html>
