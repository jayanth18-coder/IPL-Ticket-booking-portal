package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import dbcon.DbConnection;

public final class signin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<title>Keep it Simple</title>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\"/>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write(".style1 {font-weight: bold}\r\n");
      out.write(".style6 {\tcolor: #000099;\r\n");
      out.write("\tfont-weight: bold;\r\n");
      out.write("\tfont-size: 14px;\r\n");
      out.write("}\r\n");
      out.write(".style9 {color: #000099; font-weight: bold; }\r\n");
      out.write(".style2 {font-size: 24px}\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"container\">\r\n");
      out.write("  <div id=\"header\"> <a href=\"http://all-free-download.com/free-website-templates/\"><span class=\"style2\">IPL2024.com(Stadium Ticket booking) </span></a></div>\r\n");
      out.write("  <div id=\"menu\">  <span class=\"style1\"><a href=\"about.jsp\">About</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href=\"schedule.jsp\">Schedule</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href=\"signin.jsp\">SignIn</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href=\"signup.jsp\">New User</a></span> </div>\r\n");
      out.write("  <div id=\"sidebar\">\r\n");
      out.write("    <h1>Welcome</h1>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div id=\"main\">\r\n");
      out.write("    <p>&nbsp;</p>\r\n");
      out.write("    <form id=\"form1\" name=\"form1\" method=\"post\" action=\"\">\r\n");
      out.write("      <p>&nbsp;</p>\r\n");
      out.write("      <table width=\"487\" height=\"128\" align=\"center\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td colspan=\"3\"><div align=\"center\" class=\"style6\">Sign In </div></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td width=\"115\"><span class=\"style9\">Email Id </span></td>\r\n");
      out.write("          <td width=\"186\"><input type=\"text\" name=\"textfield3\" /></td>\r\n");
      out.write("          <td width=\"170\" rowspan=\"4\"><img src=\"images/k0127693.jpg\" width=\"170\" height=\"113\" /></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td><span class=\"style9\">Password</span></td>\r\n");
      out.write("          <td><input type=\"password\" name=\"textfield4\" /></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td><span class=\"style9\">User Type </span></td>\r\n");
      out.write("          <td><select name=\"select\">\r\n");
      out.write("              <option value=\"Admin\">Admin</option>\r\n");
      out.write("              <option value=\"Guest\">Guest</option>\r\n");
      out.write("                      </select>\r\n");
      out.write("          </td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td><div align=\"center\">\r\n");
      out.write("              <input type=\"submit\" name=\"Submit\" value=\"Submit\" />\r\n");
      out.write("          </div></td>\r\n");
      out.write("          <td><div align=\"center\">\r\n");
      out.write("              <input type=\"reset\" name=\"Submit2\" value=\"Reset\" />\r\n");
      out.write("              <a href=\"forgotpwd.jsp\">Forgot Password ?</a></div></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table>\r\n");
      out.write("      <p>&nbsp;</p>\r\n");
      out.write("      <p>&nbsp;</p>\r\n");
      out.write("      <p>&nbsp;</p>\r\n");
      out.write("      <p>&nbsp;</p>\r\n");
      out.write("      <p>&nbsp;</p>\r\n");
      out.write("    </form>\r\n");
      out.write("    <p align=\"center\">\r\n");

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
    

      out.write("&nbsp;</p>\r\n");
      out.write("    <p>&nbsp;</p>\r\n");
      out.write("    <p>&nbsp;</p>\r\n");
      out.write("    <p>&nbsp;</p>\r\n");
      out.write("    <p>&nbsp;</p>\r\n");
      out.write("    <p>&nbsp;</p>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div id=\"footer\"></div>\r\n");
      out.write("</div>\r\n");
      out.write("<div align=center></div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
