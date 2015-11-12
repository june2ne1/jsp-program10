<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form action="${context}/form_tag/school_register.do" id="frm_checkbox" method="post">
	이름 : <input type="text" name="name" />
	나이 : <input type="text" name="age" />
	<h1>주소</h1>
	<input type="radio" name="addr" value="서울" checked/> 서울
	<input type="radio" name="addr" value="인천" /> 인천
	<input type="radio" name="addr" value="경기" /> 경기
	<input type="radio" name="addr" value="부산" /> 부산
	<h1>전공</h1>
	<select name="major" id="major">
		<option value="not">전공선택</option>
		<option value="컴퓨터공학">컴퓨터공학</option>
		<option value="네트워크공학">네트워크공학</option>
		<option value="정보통신">정보통신</option>
		<option value="응용프로그래밍">응용프로그래밍</option>
	</select>
	<h1>수강 과목</h1>
	<input type="checkbox" name="subject" value="ASP프로그래밍"/> ASP프로그래밍
	<input type="checkbox" name="subject" value="PHP프로그래밍" /> PHP프로그래밍
	<input type="checkbox" name="subject" value="JSP프로그래밍" /> JSP프로그래밍
	<input type="checkbox" name="subject" value="Java프로그래밍" /> Java프로그래밍
	<input type="checkbox" name="subject" value="오라클" /> 오라클
	<input type="checkbox" name="subject" value="스프링" /> 스프링
	<input type="checkbox" name="subject" value="리눅스" /> 리눅스
	<input type="checkbox" name="subject" value="노드JS" /> 노드JS
	<input type="checkbox" name="subject" value="웹표준" /> 웹표준
	<input type="button" id="btn_checkbox" value="확 인" />
</form>
<script src="${context}/js/part2.js"></script>
<script type="text/javascript">
	   document.getElementById('btn_checkbox').addEventListener('click', function() {
		var form = document.getElementById('frm_checkbox');
		part2.checkbox(form.subject);  
		/* form 객체 내부의 name 값으로 value 값에 접근할 수 있다 */
		form.submit();
	});
</script>
    
