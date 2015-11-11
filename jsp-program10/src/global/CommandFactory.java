package global;

public class CommandFactory {
	public Command createCommand(String directory, String action, String view){
		return new Command(directory, action, view);
	}
}
