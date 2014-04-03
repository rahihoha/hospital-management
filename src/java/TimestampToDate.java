 import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class TimestampToDate {

  private static final SimpleDateFormat monthDayYearformatter = new SimpleDateFormat("MM/dd/yyyy");

  private static final SimpleDateFormat monthDayformatter = new SimpleDateFormat("MMMMM dd");

  public static String timestampToMonthDayYear(Timestamp timestamp) {
    if (timestamp == null) {
      return null;
    } else {
      return monthDayYearformatter.format((java.util.Date) timestamp);
    }
  }

  public static String timestampToMonthDay(Timestamp timestamp) {
    if (timestamp == null) {
      return null;
    } else {
      return monthDayformatter.format((java.util.Date) timestamp);
    }
  }

  public static java.sql.Timestamp getTimestamp() {
    java.util.Date today = new java.util.Date();
    return new java.sql.Timestamp(today.getTime());
  }
}