<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form action="${context}/form_tag/checkbox_proc.do" id="frm_checkbox" method="post">
	이름 : <input type="text" name="name" />
	<h1>좋아하는 프로그램언어</h1>
	<input type="checkbox" name="subject" value="asp"/> ASP프로그래밍
	<input type="checkbox" name="subject" value="php" /> PHP프로그래밍
	<input type="checkbox" name="subject" value="jsp" /> JSP프로그래밍
	<input type="checkbox" name="subject" value="java" /> Java프로그래밍
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
    
