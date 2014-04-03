import javax.mail.*;
import javax.mail.internet.*;
import java.util.*; 
public class SendMail{
	public void postMail( String hostname,String recipients[ ], String subject, String message , String from) throws MessagingException
	{
	    boolean debug = false;

	     //Set the host smtp address
	     Properties props = new Properties();
	     //props.put("mail.smtp.host", "smtp.jcom.net");
	     props.put("mail.smtp.host", hostname);
	     props.put("mail.smtp.user", "anil.kumar@nic.in");
	     props.put("mail.smtp.password", "mannu#321");
	     props.put("mail.smtp.port", "25");

	    // create some properties and get the default Session
	    Session session = Session.getDefaultInstance(props, null);
	    session.setDebug(debug);

	    // create a message
	    Message msg = new MimeMessage(session);

	    // set the from and to address
	    InternetAddress addressFrom = new InternetAddress(from);
	    msg.setFrom(addressFrom);

	    InternetAddress[] addressTo = new InternetAddress[recipients.length];
	    for (int i = 0; i < recipients.length; i++)
	    {
	        addressTo[i] = new InternetAddress(recipients[i]);
	    }
	    msg.setRecipients(Message.RecipientType.TO, addressTo);
	   

	    // Optional : You can also set your custom headers in the Email if you Want
	    msg.addHeader("MyHeaderName", "myHeaderValue");

	    // Setting the Subject and Content Type
	    msg.setSubject(subject);
	    msg.setContent(message, "text/html");
	    Transport.send(msg);
	}
	public void sendMail(String rec,String userName,String password, String industryName){
		
		String recept[] = {rec};
		String mymsg = "<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.0Transitional//EN'> \n";
		mymsg+="<html> \n";
		mymsg+="<head> \n";
		mymsg+=" <title>E-Mail</title> \n";
		mymsg+="</head> \n";
		mymsg+="<body> \n";
		mymsg+="";
		mymsg+="Greetings!";
		mymsg+="";
		mymsg+="";
		mymsg+="<P>You are sucessfuly registered your Industry ("+ industryName+") at Online Consent Management & Monitoring System (Punjab). Please use following login credential to log into the OCMMS Application.</p>\n";
		//mymsg+="</p>\n";
		mymsg+="\n";
		mymsg+="<P>URL : http://164.100.148.165/OCMMS-0.1</P>\n" ;
		mymsg+="<P>UserID : "  +userName+  "</P>\n" ;
		mymsg+="<P>Password : "  +password+  "</P>\n";
		mymsg+="\n";
		mymsg+="\n";
		mymsg+="<P>Note : Please change your password within 15 days.</P>\n";
		mymsg+="\n";
		mymsg+="\n";
		mymsg+="\n";
		mymsg+="\n";
		mymsg+="\n";
		//mymsg+="<P><a href=http://us01s200:80/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=chg+SKIPLIST=1+QBE.EQ.id= 5556788 >http://us01s200:80/CAisd/pdmweb.exe?OP=SEARCH+FACTORY=chg+SKIPLIST=1+QBE.EQ.id= 55567567</a></P>\n";
		mymsg+="<P>Thanks & Regards:</p>\n";
		mymsg+="<P>Ashish Duggal</p>";
		mymsg+="<P>Programmer</p>";
		mymsg+="<P>New Delhi</p>";
		mymsg+="<P>Mobile: +91-9654574562</p>";
		mymsg+="</body>\n";
		mymsg+="</html>\n"; 
		try{
		postMail("164.100.17.96",recept,"Online Industry Registration Details (OCMMS)",mymsg,"anil.kumar@nic.in");
		System.out.println("mail sent");
		}catch(Exception e){
			e.printStackTrace();
		}
	
}

}