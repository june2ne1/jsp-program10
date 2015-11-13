package global;

public class Command {
	/**
	 URL => http://localhost:9000/jsp-programming2/rps/main.do?rps=rock&page=rps_result
	 컨텍스트 패스 => http://localhost:9000/jsp-programming2 --> ${context}
	 WebContent => /
	 URI(포스트방식) => jsp-programming2/rps/main.do --> 포스트 방식은 쿼리스트링이 없다. 보안 O, 속도 X
	 URI(겟방식) => jsp-programming2/rps/main.do?rps=rock&page=rps_result 보안 X, 속도 O
	 쿼리스트링 구분자 ?
	 파라미터 구분자 => &
	 쿼리스트링 => rps=rock&page=rps_result
	 보기 예에서 쿼리스트링을 분해하면
	 파라미터 키값 2개가 나온다. rps 와 page 로 구분된다.
	 각각의 파라미터 키(name)값 rps 는 rock ,
	 	다른 키(name)값 page 는 rps_result 로 밸류가 정해져 있다.
	 이 URI 는 프로젝트 내부에서는 유일한 값(ID) 이어야 하며,
	 이 URI 를 분해해서 서블릿에게 명령을 내리는 구조로 이뤄진다.	
	 */
	private String directory, action, view, 
		page; // 겟방식으로 넘어온 URI 에서 view 를 결정하는 스트링값
	public Command(String directory, String action) {
		this.directory = directory;
		this.action = action;
		this.setView();
	}
	public Command(String directory, String action, String page) {
		this.directory = directory;
		this.action = action;
		this.page = page; // 겟방식으로 진입시 상황별 서비스 호출에 getPage()가 필요하다
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
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
}
