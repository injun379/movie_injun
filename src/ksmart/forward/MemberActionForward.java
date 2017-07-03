package ksmart.forward;

public class MemberActionForward {
	private boolean isRedirect=false;	//false(포워드)와  true(리다이렉트) 구분
	private String path=null;			//경로
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		System.out.println(isRedirect + " <-- isRedirect MActionForward.java");
		this.isRedirect = isRedirect;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		System.out.println(isRedirect + " <-- path MActionForward.java");
		this.path = path;
	}
	
}
