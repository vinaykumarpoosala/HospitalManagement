package com.hms.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public class DateUtils {

	public static int getNoOfDaysStayed(String dateOfAdmission) {
		
		int noOfDays = 0;
		DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

		Date currentDate = new Date();
		
		Date date1 = null;
		Date date2 = null;

		try {
			// calculating the difference b/w startDate and endDate
			String endDate = simpleDateFormat.format(currentDate);

			date1 = simpleDateFormat.parse(dateOfAdmission);
			System.out.println(date1);
			date2 = simpleDateFormat.parse(endDate);
			System.out.println(date2);

			int getDiff = (int) (date2.getTime() - date1.getTime());

			// using TimeUnit class from java.util.concurrent package
			noOfDays = (int) TimeUnit.MILLISECONDS.toDays(getDiff);

			System.out.println("Differance between date " + dateOfAdmission + " and " + endDate + " is " + noOfDays + " days.");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return noOfDays;
	}

}
