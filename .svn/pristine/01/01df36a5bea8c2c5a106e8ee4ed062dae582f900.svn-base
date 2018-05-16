package semi.utils;

import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;

public class JsonUtil {

	public static class DateSerializer implements JsonSerializer<Date> {
		
		private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		@Override
		public JsonElement serialize(Date date, Type typeOfDate, JsonSerializationContext context) {
			String formatedDate = sdf.format(date);
			return new JsonPrimitive(formatedDate);
		}
	}	
	
}