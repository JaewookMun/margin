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
		ForwardInfo forwardInfo = new ForwardInfo();
		forwardInfo.setForward(true);
		forwardInfo.setPath("member/login_form.jsp");
		
		
		return forwardInfo;
	}

}
