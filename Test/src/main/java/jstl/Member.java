package jstl;

/**
 * File : Member.java
 * Desc : Member Ŭ����
 * @author Ȳ����(dinfree@dinfree.com)
 */
public class Member {

	// ȸ�� ���� ��� ����
	private String name;
	private String email;
	
	public Member(String name,String email) {
		this.name = name;
		this.email = email;
	}
	
	// �⺻ �������� ��� ������ ���� �ű� ������ �ʱ�ȭ
	public Member() {
		name="ȫ�浿";
		email="test@test.net";
	}

	public String getName() { return name; }
	public String getEmail() { return email; }
	
	public void setEmail(String email) {
		this.email = email;
	}
	public void setName(String name) {
		this.name = name;
	}
}