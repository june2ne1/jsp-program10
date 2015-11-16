package bank;

public interface AdminService {
	// 계좌를 개설하는데 관리자 입장에서 개설해 주는 로직
	// 사용자입장에서 입력한 데이터를 받아서 계좌를 개설해 준다
	public String openAccount(int accountNo, String name, String password, int restMoney);
	
	// 계좌번호로 특정계좌가 존재하는지 체크하고
	// 존재한다면 계좌정보를 호출하는 기능
	// 계좌명, 계좌번호, 잔액
	public AccountVO searchAccountByAccountNo(int accountNo);
	// 계좌명으로 계좌번호를 검색하는 기능
	public AccountVO[] searchAccountsByName(String name);
	// 계좌를 해지하는 기능
	// 사용자가 해지를 요청하면
	// 그 계좌가 존재하는지 체크하고
	// 존재하면 해지해 주고, "홍길동 고객님, 요청하신 해지건이 완료되었습니다."
	// 존재하지않으면, "홍길동 고객님, 요청하신 계좌는 존재하지 않습니다."
	public String closeAccount(int accountNo);
	// 전체 계좌수
	public int countAll();

}
