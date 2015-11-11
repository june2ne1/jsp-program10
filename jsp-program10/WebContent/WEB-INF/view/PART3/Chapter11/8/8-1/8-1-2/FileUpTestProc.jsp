<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<%request.setCharacterEncoding("euc-kr");%>

<%
// -------------------------- 업로드 디렉토리 이름
String saveFolder = "upload_files";

//-------------------------- MultipartRequest 객체 선언
MultipartRequest multi = null;

//-------------------------- MultipartRequest 클래스의 파라미터 설정
ServletContext context = getServletContext();
String realFolder = context.getRealPath(saveFolder);
out.println("저장경로 : "+realFolder+"<br>");

int sizeLimit = 10*1024*1024;
String encType = "euc-kr";
DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();

//-------------------------- MultipartRequest 객체 생성(파일업로드 발생)
multi = new MultipartRequest(request, realFolder, sizeLimit, encType, policy);

//-------------------------- 데이터 추출
String name = multi.getParameter("username");
int number = Integer.parseInt(multi.getParameter("usernumber"));

//-------------------------- 업로드되어 서버에 저장된 파일 이름
String filename = multi.getFilesystemName("userfile");
out.println("저장된 파일명 : "+filename+"<br>");

//-------------------------- 업로드를 수행한 파일의 이름
String orginfilename = multi.getOriginalFileName("userfile");
out.println("업로드 파일명 : "+orginfilename+"<br>");

//-------------------------- 파일이 업로드되면 실행되는 구문
if(filename != null) {	
	
	// -------------------------- <FORM>의 파일 입력상자 이름 
	Enumeration files = multi.getFileNames();
	
	//-------------------------- Enumeration 객체에 있는 파일의 이름을 추출	
	String fname = (String)files.nextElement();
	out.println("fname : " + fname + "<BR>");
	
	//-------------------------- 입력상자를 통해 업로드된 File 객체를 추출	
	File file = multi.getFile(fname);
	
	//--------------------------파일의 크기 출력 (바이트)
	int filesize = (int)file.length();
	out.println("파일의 크기 : "+filesize+"<br>");
	
	//--------------------------파일의 종류 출력 (MIME)
	String filetype = multi.getContentType(fname);
	out.println("파일의 타입 : "+filetype+"<br>");
	
}

%>