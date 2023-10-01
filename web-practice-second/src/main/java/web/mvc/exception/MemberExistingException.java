package web.mvc.exception;

public class MemberExistingException extends Exception {
	private static final long serialVersionUID = 1L;

	
	public MemberExistingException() {
	}


	public MemberExistingException(String message) {
		super(message);
	}
	
	
}
