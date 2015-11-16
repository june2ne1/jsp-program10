package bank;

/**
 * @file_name : Account.java
 * @author : coolbeat@naver.com
 * @date : 2015. 9. 23.
 * @story : 통장 개설 프로그램
 */

public class AccountVO {

	protected int accountNo; // 계좌번호
	protected String ownerName; // 계좌주인
	private String password; // 통장비번
	protected int restMoney; // 잔액
	protected static final String BANK_NAME = "한빛뱅크";

	/**
	 * 생성자를 만드시오. 단, 통장을 만듦과 동시에 은행 이름이 통장 바깥에 새겨지며(상수) 계좌번호는 랜덤숫자로 만들어 지며(총
	 * 6자리로 합시다) 계좌주인의 이름은 새겨지며 비번도 설정합니다. 다만, 잔액은 통장이 만들어진 이후에 입금이 되겠지요
	 * toString, 계좌생성.
	 * 
	 */
	public AccountVO() {
		this.accountNo = (int) ((Math.random() * 999999) + 100000);
	}

	public int getAccountNo() {
		return accountNo;
	}

	public String getOwnerName() {
		return ownerName;
	}

	public String getPassword() {
		return password;
	}

	public int getRestMoney() {
		return restMoney;
	}

	public void setAccountNo(int accountNo) {
		this.accountNo = accountNo;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setRestMoney(int restMoney) {
		this.restMoney = restMoney;
	}

	@Override
	public String toString() {
		return "[" + BANK_NAME + "]\n" + "입출금 계좌\n" // 입출금 계좌에 한빛은행 이름 붙어서 나오게
													// 하기
				+ "계좌번호 :" + getAccountNo() + "\n" + "계좌주 :" + getOwnerName() + "\n" + "비번 : " + getPassword() + "\n잔액:"
				+getRestMoney()+"으로 통장이 개설되었습니다";
	}

}
