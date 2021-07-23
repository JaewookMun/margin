package web.data;

/*
ÀÌ¸§      ³Î?       À¯Çü             
------- -------- -------------- 
NO      NOT NULL NUMBER         
NAME    NOT NULL VARCHAR2(10)   
TITLE   NOT NULL VARCHAR2(100)  
CONTENT          VARCHAR2(1000) 
REGDATE          DATE   
 */

public class BoardDTO {
	private int no;
	private String name;
	private String title;
	private String content;
	private String regDate;
	
	public BoardDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public BoardDTO(int no, String name, String title, String content, String regDate) {
		super();
		this.no = no;
		this.name = name;
		this.title = title;
		this.content = content;
		this.regDate = regDate;
	}



	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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
	
}
