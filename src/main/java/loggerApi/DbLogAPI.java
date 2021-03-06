package loggerApi;

import loggerBase.BaseLogger;
import loggerVo.Caller;

/**
 * 主要是对db操作进行日志记录
 * @author duzl
 *
 */
public class DbLogAPI extends BaseLogger{

	public static void logger(String sql,String resultCode,String method){
		db.info(method+"sql =["+sql+"]"+resultCode);
	}
	
	public static void logger(String sql,String resultCode,String method,String className){
		db.error(className+" : "+method+"sql =["+sql+"]"+resultCode);
	}
	
	
	
}
