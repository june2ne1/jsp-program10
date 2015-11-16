package bank;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import global.Constants;
import global.DatabaseFactory;
import global.OracleData;
import global.OracleTable;
import global.Vendor;

public class BankDAOImpl implements BankDAO{
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private static BankDAO instance = new BankDAOImpl();
	private BankDAOImpl(){
		conn = DatabaseFactory
				.getDatabase(Vendor.ORACLE, Constants.ORACLE_ID, Constants.ORACLE_PASSWORD)
				.getConnection();
	}
	public static BankDAO getInstance(){return instance;}
	@Override
	public String getRestMoney() {
		// 잔액조회
		return null;
	}
	@Override
	public List<AccountVO> selectAll(String table) {
		List<AccountVO> list = new ArrayList<AccountVO>();
		String id = "";
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(OracleData.searchAll(table));
			while (rs.next()) {
				id = rs.getString("name");
			}
			System.out.println("ID : "+ id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public void makeTable(String table,String column,String pk) {
		try {
			stmt = conn.createStatement();
			System.out.println("쿼리 : "+OracleTable.make(table, column, pk));
			stmt.executeUpdate(OracleTable.make(table, column, pk));
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("테이블 생성시 에러발생 !!");
		}
	}
	
}
