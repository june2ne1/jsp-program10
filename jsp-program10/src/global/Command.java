package global;

public class Command {
	private String directory, action, view;
	public Command(String directory, String action, String view) {
		this.directory = directory;
		this.action = action;
		this.view = view;
	}
	public String getDirectory() {
		return directory;
	}
	public String getAction() {
		return action;
	}
	public String getView() {
		return view;
	}
	public void setDirectory(String directory) {
		this.directory = directory;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public void setView(String view) {
		this.view = view;
	}
	
}
