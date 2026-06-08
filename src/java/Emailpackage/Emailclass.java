/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Emailpackage;

import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



public class Emailclass {
     public  void SendMail(String emailto,String pwd) 
    {
    // TODO Auto-generated method stub
		// Recipient's email ID needs to be mentioned.
			String sender_email = "jeevithayr13@gmail.com";
		//	String sender_password = "your password";
			String sender_host = "smtp.gmail.com";
			String sender_port = "465";
			String reciever_id = emailto;
			String subject_to_be_given = "New Password ";
                       
		//	Calendar cal = Calendar.getInstance();
			//SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
	     //   String val = sdf.format(cal.getTime());	
             
			String message_mi = "New Password  is "+pwd;

			Properties props = new Properties();
			 props.put("mail.smtp.user", sender_email);
			 props.put("mail.smtp.host", sender_host);
			 props.put("mail.smtp.port", sender_port);
			 props.put("mail.smtp.starttls.enable","true");
			 props.put("mail.smtp.auth", "true");
			 //props.put("mail.smtp.debug", "true");
			 props.put("mail.smtp.socketFactory.port",sender_port);
			 props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
			 props.put("mail.smtp.socketFactory.fallb","false");

			 SecurityManager security = System.getSecurityManager();

			 try
			 {
			 Authenticator auth = new SMTPAuthenticator();
			 Session session = Session.getInstance(props, auth);
			 //session.setDebug(true);

			 MimeMessage msg = new MimeMessage(session);
			 msg.setText(message_mi);
			 msg.setSubject(subject_to_be_given);
			 msg.setFrom(new InternetAddress(sender_email));
			 //msg.addRecipient(Message.RecipientType.TO,new InternetAddress(reciever_id));
			 msg.addRecipient(MimeMessage.RecipientType.TO, new InternetAddress(reciever_id));
			 Transport.send(msg);
			 }
			 catch (Exception mex)
			 {
				 mex.printStackTrace();
			 }
  
        
    }
    
}
class SMTPAuthenticator extends javax.mail.Authenticator
{
	String sender_email = "jeevithayr13@gmail.comm",
			sender_password = "9663135417";
	public PasswordAuthentication getPasswordAuthentication()
	{
			return new PasswordAuthentication(sender_email, sender_password);
	}
}
