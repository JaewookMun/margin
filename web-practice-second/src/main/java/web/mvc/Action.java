package web.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 모델 클래스들이 상속
 *
 */
public interface Action {

	public ForwardInfo execute(HttpServletRequest request, HttpServletResponse response);
}
