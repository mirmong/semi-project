package semi.utils;

import java.text.DecimalFormat;

public class NumberUtil {

	private static DecimalFormat df = new DecimalFormat("###,###");
	
	public static String numberToString(int number) {
		return df.format(number);
	}
	
	public static String numberToString(Object number) {
		return df.format(number);
	}
}
