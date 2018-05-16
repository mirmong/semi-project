package semi.utils;

import java.text.SimpleDateFormat;
import java.time.ZonedDateTime;
import java.util.Date;

public class DateUtil {

	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public static String dateToString(Date date) {
		if(date == null) {
			return null;
		}
		return sdf.format(date);
	}
	
	/*
	 * 파라미터로 month를 넘기면 현재날짜로부터 month개월 이전의 날짜를 리턴합니다
	 */
	public static Date getDateBeforeMonth(int month) {
		return Date.from(ZonedDateTime.now().minusMonths(month).toInstant());
	}
	
}
