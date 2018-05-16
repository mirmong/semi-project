package semi.utils;

public class StringUtil {
	
	public static String getStrWithBr(String str) {
		return str.replace("\n", "<br/>");
	}
	
	public static String getShortString(String str , int cutLine , int commaCount) {
		if(str.length() < cutLine)
			return str;
		
		String result = str.substring(0, cutLine);
		for(int i=0; i<commaCount; i++) {
			result += ".";
		}
		return result;
	}
	
}