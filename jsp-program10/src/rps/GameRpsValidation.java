package rps;
/**
 * @file_name : GameRpsValidation.java 
 * @author    : coolbeat@naver.com
 * @date      : 2015. 9. 30.
 * @story     : 유효성 체크 클래스
 */
public class GameRpsValidation {
	public String showRange(int a, int b){
		return a + "부터" + b + "까지의 값만 입력하셔야 합니다.";
	}
	public String showInt() {
		return "정수값만 입력하세요";
	}
}
