package web.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ErrorModel implements Action {

	@Override
	public ForwardInfo execute(HttpServletRequest request, HttpServletResponse response) {
		ForwardInfo forwardInfo=new ForwardInfo();
		
		
		
		return forwardInfo;
	}

}
