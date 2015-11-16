package bank;

import java.util.Scanner;

/**
 * @file_name : BankService.java 
 * @author    : dingo44kr@naver.com
 * @date      : 2015. 9. 24.
 * @story     : 사용자 은행업무 프로그램
 */


public class BankServiceImpl implements BankService{
	
	private static BankService instance = new BankServiceImpl();
	private BankServiceImpl(){}
	public static BankService getInstance(){return instance;}
	private AccountVO account = new AccountVO(); //공식 가져오는 곳
	BankDAO dao = BankDAOImpl.getInstance();

	@Override // deposit
	public String deposit(int inMoney) { // 입금
		account.setRestMoney(inMoney + account.getRestMoney());
		return ("잔액은: "+account.getRestMoney());
	
	}
	// 한 + 영 동시에 사이트 제작시  balance is
	public String deposit(int inMoney,String str) { // 입금
		account.setRestMoney(inMoney + account.getRestMoney());
		return ("잔액은: "+account.getRestMoney());
	
	}

	@Override
	public String withdraw(int outMoney) { // 출금
		String Massage = "";

		if (account.getRestMoney() - outMoney < 0) {
			Massage = "잔액이 부족합니다. 다시입력해주세요";
		}

		else {
			account.setRestMoney(account.getRestMoney()-outMoney);
			Massage = ("잔액: " + account.getRestMoney());
		}
		return Massage;
	}

	@Override
	public String search() { // 잔액조회
		
		return "잔액은: " +dao.getRestMoney();

	}

	@Override
	public String open(String accountName, String password) { // 계좌 개설
		
		int random = (int) ((Math.random()*999999)+100000);
		
		return  account.BANK_NAME+"\n"
				+"계좌번호: "+random+"\n"
				+"이름: "+ ""+"\n"
				+"비밀번호: *******\n"
				+"잔액: "+account.getRestMoney();
		
	}
	@Override
	public void makeTable(String table,String column, String pk) {
		System.out.println("테이블명 :"+table);
		dao.makeTable(table,column,pk);
	}
}
