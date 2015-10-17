package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import loggerUtils.debugLog;
import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import utils.cookieUtils;

@Controller
//@RequestMapping("login")
public class LoginAction {

	@RequestMapping("login/index")
	public String doLogin(String username, String password,String cookie, ModelMap model,
			HttpServletRequest request,HttpServletResponse response) {
		if(username.equals("pzr") && password.equals("pzr")){
			debugLog.debug("doLogin", "cookie is open："+cookie);
			if(StringUtils.equals(cookie, "true")){
				debugLog.debug("test", "test");
				JSONObject json = new JSONObject();
				json.put("username", username);
				json.put("password", password);
				debugLog.debug("user", json.toString());
				cookieUtils.addCookie(request, response, json);
			}
			model.addAttribute("username", username);
			//加入缓存
			//UserMap.setUser(username);
			return "index/main";
		}
//		DbLogAPI.logger("login/index", "login/login", "test");
		debugLog.debug("doLogin", "登入");
		return "login/login";
		
	}
	
	@RequestMapping("index/index")
	public String toIndex(ModelMap model,
			HttpServletRequest request) {
		return "index/main";
	}
	
	@RequestMapping("login/login")
	public String doLoginSuccess(String username, String password,
			ModelMap model, HttpServletRequest request,HttpServletResponse response) {

//		DbLogAPI.logger("select", "-1", "query");
		debugLog.debug("doLoginSuccess", "username"+username);
		String json = cookieUtils.getCookie(request, response, "user");
		if(json!=null){
			debugLog.debug("dologinSuccess", "cookie登入成功");
			HttpSession session = request.getSession();
			session.setAttribute("username", JSONObject.fromObject(json).get("username"));
			debugLog.debug("dologinSuccess", "username and password登入成功 session="+session.getAttribute("username"));
			return "index/main";
		}else if (username.equals("pzr") && password.equals("pzr")) {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			debugLog.debug("dologinSuccess", "username and password登入成功 session="+session.getAttribute("username"));
			return "index/main";
		}
		return "login/login";
	}
	
	@RequestMapping("login/login1")
	public String doLogin1(String username, String password,
			ModelMap model, HttpServletRequest request) {

		debugLog.debug("dologin1", "登入");
		return "login/login";
	}
	
	
	@RequestMapping("login/logout")
	public String doLogout(String username, String password,
			ModelMap model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("username");
		debugLog.debug("dologout", "登出 session="+session.getAttribute("username"));
		return "index/main";
	}

}
