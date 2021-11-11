package com.neo;

public class ExceptionWithdraw extends Exception {

	
	private static final long serialVersionUID = 1L;
	
	String msg;
	
	public ExceptionWithdraw(String msg) {
		super(msg);
		this.msg = msg;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Withdraw Exception : "+msg;
	}

}
