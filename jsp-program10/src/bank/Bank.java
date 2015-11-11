package bank;

public interface Bank {
	
	// 1.개설
	public String open(String accountName, String password);
	
	// 2.입금
	public String deposit(int inMoney); // 추상메소드
	
	// 3.출금
	public String withdraw(int outMoney);
	
	// 4.조회
	public String search();
	
	
	
}
