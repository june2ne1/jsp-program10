package global;

public class OracleSchema {
	// C : 스키마 생성
	public static String make(String name,String pass){
		return "create user "+name+" identified by "+pass;
	}
	// R : 스키마 조회
	public static String show(){
		return "show user";
	}
	// U : 스키마 수정 (X)
	// D : 스키마 삭제
	public static String remove(String name){
		return "drop user "+name+" cascade";
	}
}
