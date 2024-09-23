package javabeans_login;

//클래스 선언
public class LoginBean {

	//멤버변수 선언
	private String userid;
	private String passwd;
	
	final String _userid ="myuser";
	final String _passwd="1234";
	
	public  boolean checkUser() { // 비밀번호 검증 (T, F)
		if (userid.equals(_userid)&& passwd.equals(_passwd))
			return true;
		else
			return false;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}


}
