package global;

public class CommandFactory {
	public Command createCommand(String directory, String action){
		return new Command(directory, action);
	}
}
