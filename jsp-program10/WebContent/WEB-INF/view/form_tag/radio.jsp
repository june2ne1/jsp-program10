<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<form action="" id="frm_radio_button">
	<h1>좋아하는 프로그램언어</h1>
	<input type="radio" name="subject" value="asp" checked/> ASP
	<input type="radio" name="subject" value="php" /> PHP
	<input type="radio" name="subject" value="jsp" /> JSP
	<input type="radio" name="subject" value="java" /> Java
	<input type="button" id="btn" value="확 인" />
</form>
<script src="part2.js"></script>
<script type="text/javascript">
	document.getElementById('btn').addEventListener('click', function() {
		var form = document.getElementById('frm_radio_button');
		check(form.subject);  /* form 객체 내부의 name 값으로 value 값에 접근할 수 있다 */
	});
</script>