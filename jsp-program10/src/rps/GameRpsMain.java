package rps;

import java.util.Scanner;

public class GameRpsMain {
	/**
	 * [결과]
	 * 컴퓨터는 바위고 당신은 가위이므로 컴퓨터가 이겼습니다.
	 */
	public static void main(String[] args) {
		System.out.println("가위바위보 게임을 시작합니다.");
		GameRpsService service = new GameRpsServiceImpl(); // 깊은 복사(deep copy)
		GameRpsValidation valid = new GameRpsValidation();
		GameRps game = new GameRps();
		Scanner scanner = new Scanner(System.in);
		int start=1,limit=3;
		while (true) {
			System.out.println("가위:1 바위:2 보자기:3 을 입력하세요");
			int userVal = scanner.nextInt();
			if (userVal<start||userVal>limit) {
				System.out.println(valid.showRange(start, limit));
				continue;
			}
			game.setComVal();
			System.out.println(service.playGame(userVal, game.getComVal()));
			
		}
	}
}
