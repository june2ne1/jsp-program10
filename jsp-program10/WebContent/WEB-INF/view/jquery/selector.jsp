<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="myDiv">
	Hello
</div>
<div class="classDiv">
	클래스 선택
</div>
<input type="button" id="btn" value="버튼"/>
<script type="text/javascript">
/* 	alert(document.getElementById('myDiv').innerHTML); */
	
	$('#btn').click(function() {
		alert($('#myDiv').html());
		alert($('.classDiv').html());
	});
</script>
