package bank;

public class AdminServiceImpl implements AdminService {
	private static AdminService instance = new AdminServiceImpl();
	private AdminServiceImpl(){}
	public static AdminService getInstance(){return instance;}
	public AdminDAO dao = AdminDAOImpl.getInstance();
	
	private AccountVO[] accountList;
	private int count = 0;


	public AdminServiceImpl(int count) {
		accountList = new AccountVO[count];
	}

	public AccountVO[] getAccountList() {
		return accountList;
	}

	public int getCount() {
		return count;
	}

	public void setAccountList(AccountVO[] accountList) {
		this.accountList = accountList;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String openAccount(int accountNo, String name, String password, int restMoney) {
		AccountVO account = new AccountVO();
		String msg = "";
		account.setAccountNo(accountNo);
		account.setOwnerName(name);
		account.setPassword(password);
		account.setRestMoney(restMoney);
		accountList[count] = account;
		count++;
		msg = account.toString();
		return msg;
	}

	@Override
	public AccountVO searchAccountByAccountNo(int accountNo) {
		AccountVO searchAccount = null;
		for (int i = 0; i < this.getCount(); i++) {
			if (accountList[i].getAccountNo() == accountNo) {
				searchAccount = accountList[i];
			}
		}
		return searchAccount;
	}

	@Override
	public AccountVO[] searchAccountsByName(String name) {
		int tempCount = 0; // searchCountByName(name);
		for (int i = 0; i < count; i++) {
			if (accountList[i].getOwnerName().equals(name)) {
				tempCount++;
			}
		}
		AccountVO[] tempList = new AccountVO[tempCount];
		tempCount = 0;
		for (int i = 0; i < count; i++) {
			if (accountList[i].getOwnerName().equals(name)) {
				tempList[tempCount] = accountList[i];
				tempCount++;
			}

		}
		return tempList;
	}

	@Override
	public String closeAccount(int accountNo) {
		String result = "해지할 계좌가 존재하지 않습니다.";
		for (int i = 0; i < this.getCount(); i++) {
			if (accountList[i].getAccountNo() == accountNo) {
				accountList[i] = accountList[count - 1];
				accountList[count - 1] = null;
				result = "요청하신 계좌를 해지하였습니다.";
			}
		}
		count--;
		return result;
	}

	@Override
	public int countAll() {
		return this.getCount();
	}
}
