<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form action="" id="frm_select">
	<select name="sel" id="sel">
		<option value="not">과목선택</option>
		<option value="asp">ASP 프로그래밍</option>
		<option value="php">PHP 프로그래밍</option>
		<option value="jsp">JSP 프로그래밍</option>
		<option value="java">Java 프로그래밍</option>
	</select>
	<input type="button" id="btn" value="확 인"/>
</form>
<script src="part2.js"></script>
<script type="text/javascript">
	document.getElementById('btn').addEventListener('click', function() {
		select(document.getElementById('frm_select').sel);
	});
</script>    
