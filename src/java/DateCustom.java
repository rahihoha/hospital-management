import java.io.*;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.*;

public class DateCustom {

	public  java.sql.Date toDate(java.sql.Timestamp timestamp) {
	    long milliseconds = timestamp.getTime() + (timestamp.getNanos() / 1000000);
	    java.util.Date tt= new java.util.Date(milliseconds);
	    
	    java.sql.Date dt=sQLdate(tt);
	    
	    return dt;
	}
	  public java.sql.Date sQLdate(java.util.Date tt) {
		    
		    java.sql.Date sqlDate = new java.sql.Date(tt.getTime());
		    
		    return sqlDate;
		  }
	  
	  
	  public java.sql.Date sQLdate1(java.util.Date tt) {
		    
		    java.sql.Date sqlDate = new java.sql.Date(tt.getTime());
		    
		    return sqlDate;
		  }
}
