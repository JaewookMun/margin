package web.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 회원가입 폼
 *
 */
public class JoinFormModel implements Action {

	@Override
	public ForwardInfo execute(HttpServletRequest request, HttpServletResponse response) {
		ForwardInfo forwardInfo = new ForwardInfo();
		forwardInfo.setForward(true);
		forwardInfo.setPath("member/join_form.jsp");
		
		
		return forwardInfo;
	}

}
