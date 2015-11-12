<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form action="${context}/form_tag/checkbox.do" id="frm_checkbox" method="post">
	이름 : <input type="text" name="name" />
	나이 : <input type="text" name="age" />
	<h1>주소</h1>
	<input type="radio" name="addr" value="서울" checked/> 서울
	<input type="radio" name="addr" value="인천" /> 인천
	<input type="radio" name="addr" value="경기" /> 경기
	<input type="radio" name="addr" value="부산" /> 부산
	<h1>전공</h1>
	<select name="sel" id="sel">
		<option value="not">전공선택</option>
		<option value="comgong">컴퓨터공학</option>
		<option value="network">네트워크공학</option>
		<option value="info">정보통신</option>
		<option value="app">응용프로그래밍</option>
	</select>
	<h1>수강 과목</h1>
	<input type="checkbox" name="subject" value="asp"/> ASP프로그래밍
	<input type="checkbox" name="subject" value="php" /> PHP프로그래밍
	<input type="checkbox" name="subject" value="jsp" /> JSP프로그래밍
	<input type="checkbox" name="subject" value="java" /> Java프로그래밍
	<input type="checkbox" name="subject" value="oralce" /> 오라클
	<input type="checkbox" name="subject" value="spring" /> 스프링
	<input type="checkbox" name="subject" value="linux" /> 리눅스
	<input type="checkbox" name="subject" value="nodejs" /> 노드JS
	<input type="checkbox" name="subject" value="web" /> 웹표준
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
    
