<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h1>계좌개설</h1>
<form action="${context}/bank/open.do" id="frm_guest_open" method="post">
	이름 : <input type="text" name="name" placeholder="이름 입력"/>
	비밀번호 : <input type="password" name="password" placeholder="비번 입력"/>
	<input type="button" value="계좌개설" id="btn_guest_open" />
</form>
<hr />
<h1>잔액조회</h1>
<form action=""></form>
<hr />
<h1>입금</h1>
<form action=""></form>
<hr />
<h1>출금</h1>
<form action=""></form>
<script src="${context}/js/bank.js"></script>
<script>
	document.getElementById('btn_guest_open').addEventListener('click', function() {
		var frm_guest_open = document.getElementById('frm_guest_open');
		bank.open(frm_guest_open.name);
		frm_guest_open.submit();
	});
</script>
	
