package rps;

// 서비스 구현 객체
public class GameRpsServiceImpl implements GameRpsService{
	GameRps game = new GameRps();
	@Override
	public String getResult(int a) {
		String result = "";
		switch (a) {
		case 1:result = "승리";break;
		case 2:result = "패배";break;
		case 3:result = "비김";break;
		default:break;
		}
		return result;
	}
	// 두값을 받아서 가위,바위,보 승부
	@Override
	public String playGame(int a, int b) { // 사용자  a,  컴 b
		int win = 0;
		if (a==b) {
			return getResult(3);
		}
		switch (Math.abs(a-b)) {
		case 1: win = (a>b) ? a : b;break;
		case 2: win = (a>b) ? b : a;break;
		default:
			break;
		}
		String winner = (win==a) ? "당신":"컴퓨터";
		game.setRpsVal(a);
		String userRPS = game.getRpsVal();
		game.setRpsVal(b);
		String comRPS = game.getRpsVal();
		return "컴퓨터는 "+comRPS+" 이고, 당신은"+userRPS+" 이므로"+ winner+"이(가) 이겼습니다.";
	}

}
