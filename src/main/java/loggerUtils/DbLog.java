package loggerUtils;

import loggerApi.DbLogAPI;
import loggerBase.Operations;
import loggerBase.ResultCode;

public class DbLog {

	
	public static void updateSuccess(String sql){
		DbLogAPI.logger(sql, ResultCode.SUCCESS.result, Operations.UPDATE.operat);
	}
	
	public static void updateFailed(String sql){
		DbLogAPI.logger(sql, ResultCode.FAILED.result, Operations.UPDATE.operat);
	}
	
}
