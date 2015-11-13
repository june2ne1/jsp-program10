<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<form id="frm_rps" action="${context}/rps/main.do">
	<h1>가위 바위 보</h1>
	<input type="radio" name="rps" value="가위" checked/> 가위
	<input type="radio" name="rps" value="바위" /> 바위
	<input type="radio" name="rps" value="보" /> 보 <br />
	<input type="button" id="btn" value="확 인" />
	<input type="hidden" name="page" value="rps_result" />
</form>

<script src="${context}/js/rps.js"></script>
<script type="text/javascript">
	document.getElementById("btn").addEventListener("click", function() {
		var form = document.getElementById("frm_rps");
		rps.display(form.rps); // 알러트 창 띄우기
		form.submit();
	});
</script>

