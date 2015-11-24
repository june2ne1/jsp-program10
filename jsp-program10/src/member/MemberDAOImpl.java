package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import global.Constants;
import global.DML;
import global.DQL;
import global.DatabaseFactory;
import global.Vendor;

public class MemberDAOImpl implements MemberDAO{
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private List<MemberVO> list = new ArrayList<MemberVO>();
	private MemberVO member = new MemberVO();
	
	private static MemberDAO instance = new MemberDAOImpl();
	public static MemberDAO getInstance(){
		return instance;
	}
	private MemberDAOImpl() {
		con = DatabaseFactory
				.getDatabase(Vendor.ORACLE, Constants.ORACLE_ID, Constants.ORACLE_PASSWORD)
				.getConnection();
	}
	public List<MemberVO> selectAll() {
		List<MemberVO> list = new ArrayList<MemberVO>();
		try {
			stmt = con.createStatement(); // 쿼리를 실행하는 객체
			rs = stmt.executeQuery(DQL.searchAll("member"));
		     
			while (rs.next()) {
				MemberVO temp = new MemberVO(); 
				temp.setUserid(rs.getString("userid"));
				temp.setPassword(rs.getString("password"));
				temp.setName(rs.getString("name"));
				temp.setBirth(rs.getString("birth"));
				temp.setGender(rs.getString("gender"));
				temp.setPhone(rs.getString("phone"));
				temp.setProfile(rs.getString("profile"));
				temp.setRegdate(rs.getString("regdate"));
				list.add(temp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public int insert(MemberVO o) {
		int result = 0;
		try {
			String sql = "insert into member values(?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, o.getUserid());
			pstmt.setString(2, o.getPassword());
			pstmt.setString(3, o.getName());
			pstmt.setString(4, o.getBirth());
			pstmt.setString(5, o.getPhone());
			pstmt.setString(6, o.getEmail());
			pstmt.setString(7, o.getGender());
			pstmt.setString(8, o.getAddr());
			pstmt.setString(9, o.getProfile());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("실행 후  "+result);
		return result;
	}
	public int update(MemberVO o) {
		int result = 0;
		try {
			String sql = DML.update("member", "?,?,?", "userid", o.getUserid());
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, o.getPassword());
			pstmt.setString(2, o.getAddr());
			pstmt.setString(3, o.getUserid());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public List<MemberVO> selectSomeBy(String s1,String s2) {
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(DQL.searchSome("member", s1, s2));
			while (rs.next()) {
				MemberVO temp = new MemberVO(); 
				temp.setUserid(rs.getString("userid"));
				temp.setPassword(rs.getString("password"));
				temp.setName(rs.getString("name"));
				temp.setBirth(rs.getString("birth"));
				temp.setGender(rs.getString("gender"));
				temp.setPhone(rs.getString("phone"));
				temp.setProfile(rs.getString("profile"));
				temp.setRegdate(rs.getString("regdate"));
				list.add(temp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public MemberVO selectOneBy(String key) {
		MemberVO temp = new MemberVO();
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery("select * from member where userid = '"+key+"'");
			
			while (rs.next()) {

				temp.setUserid(rs.getString("userid"));
				temp.setPassword(rs.getString("password"));
				temp.setName(rs.getString("name"));
				temp.setBirth(rs.getString("birth"));
				temp.setGender(rs.getString("gender"));
				temp.setPhone(rs.getString("phone"));
				temp.setProfile(rs.getString("profile"));
				temp.setRegdate(rs.getString("regdate"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("홍길동 명세DAO "+temp.getName());
		return temp;
	}

	@Override
	public int count() {
		int temp = 0;
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(DQL.count("member"));
			while (rs.next()) {
				temp = rs.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return temp;
	}

	public int delete(String key) {
		int result = 0;
		try {
			pstmt = con.prepareStatement(DML.delete("member", "userid", key));
			pstmt.setString(1, key);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	public MemberVO login(String id, String pass){
		MemberVO loginMember = new MemberVO();
		loginMember = this.selectOneBy(id);
		System.out.println("로그인DAO 이름출력 : "+loginMember.getName());
		if (loginMember.getUserid() == null) {
			return null;
		} 
		if (loginMember.getPassword().equals(pass)) {
			return loginMember;
		}else{
			return null;
		}
	}
}
