package semi.utils;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class IbatisUtil {

	private static SqlMapClient sqlMap;

	static {
		try {
			Reader reader = Resources.getResourceAsReader("semi/conf/SqlMapConfig.xml");
			sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
		} catch ( IOException e ) {
			e.printStackTrace();
		}
	}

	public static SqlMapClient getsqlMap () {
		return sqlMap;
	}

}