<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>
<HTML>
<HEAD>
	<TITLE>체크박스 버튼 입력 양식</TITLE>

	<SCRIPT LANGUAGE="javascript">

	function check(form) {
		var str="";
		for(var i=0; i<form.SUB1.length; i++)
		{
			if(form.SUB1[i].checked==true)
			{
				str += i+1 + "번째가 선택되었습니다.\n"
			}
		}
		alert(str);
	}

	</SCRIPT>

</HEAD>

<BODY>

<FORM NAME=CHECKBOX_BUTTON>

	<B>당신이 가장 좋아하는 프로그래밍 교과목은 무엇입니까?</B><P>

	<INPUT TYPE=CHECKBOX NAME="SUB1" VALUE="A"> ASP 프로그래밍 <BR>
	<INPUT TYPE=CHECKBOX NAME="SUB1" VALUE="P"> PHP 프로그래밍 <BR>
	<INPUT TYPE=CHECKBOX NAME="SUB1" VALUE="J"> JSP 프로그래밍 <BR>
	<INPUT TYPE=CHECKBOX NAME="SUB1" VALUE="V"> JAVA 프로그래밍 <BR>

	<INPUT TYPE=BUTTON VALUE="확 인" onClick="check(this.form)">
</FORM>

</BODY>
</HTML>