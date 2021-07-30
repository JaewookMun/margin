package web.data.dto;

/*
이름       널?       유형             
-------- -------- -------------- 
NO       NOT NULL NUMBER         - PK
WRITER            VARCHAR2(100)  
TITLE             VARCHAR2(500)  
REF               NUMBER         
RE_STEP           NUMBER         
RE_LEVLE          NUMBER         
CONTENT           VARCHAR2(4000) 
REG_DATE          DATE           
STATUS            NUMBER      
*/


// 계층형 게시판 생성 연습
public class ReBoardDTO {
	private int no;
	private String writer;
	private String title;
	private int ref;
	private int reStep;
	private int reLevel;
	private String content;
	private String regDate;
	private int status;
	
	public ReBoardDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getReStep() {
		return reStep;
	}

	public void setReStep(int reStep) {
		this.reStep = reStep;
	}

	public int getReLevel() {
		return reLevel;
	}

	public void setReLevel(int reLevel) {
		this.reLevel = reLevel;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
}
