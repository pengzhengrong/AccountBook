package utils;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

import entrty.UserPo;

public class test extends JdbcDaoSupport{

	
	public static void main(String[] args) {
		
		Reflection reflect = new Reflection();
		UserPo po = new UserPo();
		String[] s=new String[2];
		s[0] = "name";
		try {
			Object w = reflect.invokeMethod(po, "setName", s );
			System.out.println(w);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
