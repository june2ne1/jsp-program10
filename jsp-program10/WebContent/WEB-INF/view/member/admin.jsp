<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h1>테이블 생성</h1>
<form action="${context}/bank/main.do" id="frm_admin_table">
	<input type="text" name="table_name" placeholder="테이블명 입력" />
	<input type="text" name="column" placeholder="컬럼명/타입 입력" />
	<input type="text" name="pk" placeholder="프라이머리 키 입력" />
	<input type="button" id="btn_admin_table" value="생 성"/>
	<input type="hidden" name="page" value="admin_result"/>
</form>	
<script>
	document.getElementById('btn_admin_table').addEventListener('click', function() {
		document.getElementById('frm_admin_table').submit();
	});
</script>
