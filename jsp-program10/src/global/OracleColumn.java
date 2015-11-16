package global;

public class OracleColumn {
	// C : varchar2 컬럼 생성
	public static String makeString(String table, String column,String size){
		return "alter table "+table+" add("+column+" varchar2("+size+"))";
	}
	// C : number 컬럼 생성
	public static String makeNumber(String table, String column){
		return "alter table "+table+" add("+column+" number)";
	}
	// C : date 컬럼 생성
	public static String makeDate(String table, String column){
		return "alter table "+table+" add("+column+" date)";
	}
	// R : 컬럼 조회(X)
	// U : 컬럼 이름 수정
	public static String changeName(String table, String oldName, String newName){
		return "alter table "+table+" rename column "+oldName+" to "+newName;
	}
	// U : 컬럼 타입 수정
	public static String changeType(String table,String column, String newType){
		return "alter table "+table+" modify("+column+" "+newType+")";
	}
	// D : 컬럼 삭제
	public static String remove(String table,String column){
		return "alter table "+table+" drop column "+column;
	}
}
