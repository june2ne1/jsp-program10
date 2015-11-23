package global;

public class CommandFactory {
	public Command createCommand(String action, String page){
		System.out.println("팩토리 내부 액션 :"+action);
		System.out.println("팩토리 내부 페이지 :"+page);
		return new Command(action, page);
	}
}
