package web.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * [/login.do]
 *
 */
public class LoginModel implements Action {

	@Override
	public ForwardInfo execute(HttpServletRequest request, HttpServletResponse response) {
		ForwardInfo forwardInfo=new ForwardInfo();
		forwardInfo.setForward(false);
		forwardInfo.setPath("test");
		
		return forwardInfo;
	}

}
