package web.mvc;

/**
 * 스레드 이동처리를 위한 정보 제공
 */
public class ForwardInfo {
	private String path;
	/** true: forward, false: redirect*/
	private boolean isForward;
	
	public ForwardInfo() {
		// TODO Auto-generated constructor stub
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public boolean isForward() {
		return isForward;
	}

	public void setForward(boolean isForward) {
		this.isForward = isForward;
	}
	
	
	
	
}
