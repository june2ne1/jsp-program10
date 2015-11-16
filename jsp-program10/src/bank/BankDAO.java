package bank;

import java.util.List;

public interface BankDAO {
	public void makeTable(String table,String column,String pk); 
	public String getRestMoney();
	public List<AccountVO> selectAll(String table);
}
