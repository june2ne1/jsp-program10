<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/tr/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#text_button_table1{
		border : 1px solid black;
		width : 300px;
		cellspacing : 0;
		cellpadding : 2px;
		text-align: center;
	}
	#text_button_table1 td:first-child{
		width : 100px;
		background-color : #f2f2f2;
	}
	#text_button_table1 td{ width : 200px }
	#text_button_table2{
		border: 0;
		width: 300px;
	}
</style>

</head>
<body>
<form id="login">

<table id="text_button_table1" >

	<tr>
		<td>아 이 디 : </td>
		<td><input type='text' name='userid' size=20></td>
	</tr>
	<tr>
		<td>패스워드 : </td>
		<td><input type="password" name='password' size=20></td>
	</tr>
	<tr>
		<td>출신국가 : </td>
		<td><input type='text' name='nation' size=20></td>
	</tr>

</table>

<table id="text_button_table2">
	<tr>
		<td>
			<input type='button' id='btn_confirm' value="확인">
			<input type='reset' id='btn_cancel' value="취소">
		</td>
	</tr>
</table>
</form>
<script src="part2.js"></script>
<script type="text/javascript">
	var btn = document.getElementById('btn_confirm');
	var form = document.getElementById('login');
	btn.addEventListener('click',function() {  // 이때 이 function 을 콜백함수라고 한다.
		var id = form.userid.value;
		var pw = form.password.value;
		var nation = form.nation.value;
		display(id,pw,nation);
	});
</script>
</body>
</html>