package com.neo;

import java.io.IOException;
import java.io.StringWriter;
import java.time.LocalTime;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class GreetingTag extends SimpleTagSupport {
	private String time1;
	
	
	public String getTime() {
		return time1;
	}
	public void setTime(String time) {
		this.time1 = time;
	}
	
	int timeOfDay = Calendar.getInstance().get(Calendar.HOUR_OF_DAY);

	 GregorianCalendar time = new GregorianCalendar();
	  int hour = time.get(Calendar.HOUR_OF_DAY);
	  int min = time.get(Calendar.MINUTE);
	  int day = time.get(Calendar.DAY_OF_MONTH);
	  int month = time.get(Calendar.MONTH) + 1;
	  int year = time.get(Calendar.YEAR);{


	  if (hour < 12)
		  setTime("Good Morning");
	  else if (hour < 17 && !(hour == 12))
		  setTime("Good Afternoon");
	  else if (hour == 12)
		  setTime("Good Evening");
	  else
		  setTime("Good night");
	 }
    
	@Override
	public void doTag() throws JspException, IOException {
		
		StringWriter sw = new StringWriter();
		getJspBody().invoke(sw);
		
	      JspWriter out = getJspContext().getOut();
	  	out.print("Hi "+sw.toString()+", Time is : "+LocalTime.now()+getTime());
	}

}
