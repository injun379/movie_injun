package ksmart.forward;

public class MemberActionForward {
	private boolean isRedirect=false;	//false(������)��  true(�����̷�Ʈ) ����
	private String path=null;			//���
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
