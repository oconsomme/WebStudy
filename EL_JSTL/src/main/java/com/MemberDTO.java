package com;

public class MemberDTO {
	
	private String id;
	private String pw;
	private String nick;
	private String addr;
	
	public MemberDTO(String id, String pw, String nick, String addr) {
		//super();
		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.addr = addr;
	}
	
	public String getId() {
		return id;
	}
	public String getPw() {
		return pw;
	}
	public String getNick() {
		return nick;
	}
	public String getAddr() {
		return addr;
	}
	
}
