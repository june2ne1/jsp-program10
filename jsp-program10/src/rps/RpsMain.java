package rps;

import java.util.Scanner;

public class RpsMain {
	/**
	 * [결과] 컴퓨터는 바위고 당신은 가위이므로 컴퓨터가 이겼습니다.
	 */
	public static String main(String myRps) {
		System.out.println("가위바위보 게임을 시작합니다.");
		RpsService service = RpsServiceImpl.getInstance(); // 깊은 복사(deep copy)
		RpsValidation valid = new RpsValidation();
		Rps game = new Rps();
		System.out.println("가위:1 바위:2 보자기:3 을 입력하세요");
		int userVal = 0;
		if (myRps.equals("가위")) {
			userVal = 1;
		} else if (myRps.equals("바위")) {
			userVal = 2;
		} else if (myRps.equals("보")) {
			userVal = 3;
		}
		game.setComVal();
		return service.playGame(userVal, game.getComVal());
	}
}
