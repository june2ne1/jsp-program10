package global;

public class OracleTable {
	// C : 테이블 생성
	public static String make(String table,String column,String pk){
		return "create table "+table+"("
				+ column
				+ ",constraint "+table+"_pk"+" primary key("+pk+"))";
	}
	// R : 테이블 조회
	public static String show(String name){
		return "desc "+name;
	}
	// U : 테이블 이름 수정
	public static String change(String oldName, String newName){
		return "rename "+oldName+" to "+newName;
	}
	// D : 테이블은 살리고, 데이터만 삭제
	public static String empty(String table){
		return "truncate table "+table;
	}
	// D : 테이블까지 전부 삭제
	public static String remove(String table){
		return "drop table "+table;
	}
}
