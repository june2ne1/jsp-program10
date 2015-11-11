<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<FORM NAME="myform" id="frm_score"  METHOD=POST action="${context}/score.do">
   	번호(정수) : <INPUT TYPE=TEXT NAME="num" SIZE=10><BR>
      이름(문자열) : <INPUT TYPE=TEXT NAME="name" SIZE=20><BR>
      평점(실수) : <INPUT TYPE=TEXT NAME="score" SIZE=5><BR>
    <INPUT TYPE='submit' id="btn_score" VALUE="저장">
</FORM>
<script>
	document.getElementById('frm_score').addEventListener('click', function() {
		
	})
</script>