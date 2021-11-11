package com.neo;

public class WithdrawAmount  {
	
	
	private static final long serialVersionUID = 1L;
	public static int bal  = 25000;
	
	
	public static void withdraw(int amt) throws ExceptionWithdraw {
		if(amt<bal) {
			bal = bal-amt;
		}
		else {
			throw new ExceptionWithdraw("Low Balance : ");
		}
	}
	public static int ShowBal() {
		return bal;
	}

}