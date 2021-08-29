package web.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * [/loginForm.do]
 *
 */
public class LoginFormModel implements Action {

	@Override
	public ForwardInfo execute(HttpServletRequest request, HttpServletResponse response) {
		ForwardInfo info = new ForwardInfo();
		info.setForward(true);
		info.setPath("member/login_form.jsp");
		
		
		return info;
	}

}
