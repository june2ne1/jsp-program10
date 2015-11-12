package global;

public class Command {
	private String directory, action, view;
	public Command(String directory, String action) {
		this.directory = directory;
		this.action = action;
		this.setView();
	}
	public Command(String directory, String action, String page) {
		this.directory = directory;
		this.action = action;
		this.setView(page);
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
	public void setView() {
		this.view = Constants.VIEW+this.directory+"/"+this.action+".jsp";
	}
	public void setView(String page) {
		this.view = Constants.VIEW+this.directory+"/"+page+".jsp";
	}
	
}
