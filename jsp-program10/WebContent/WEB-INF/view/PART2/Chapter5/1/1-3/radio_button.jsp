<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>
<HEAD>
	<TITLE>라디오 버튼 입력 양식</TITLE>

	<SCRIPT LANGUAGE="javascript">

		function check(form) {
			for(var i=0; i<form.SUB1.length; i++)
			{
				if(form.SUB1[i].checked==true)
				{
					alert( i+1 + "번째가 선택되었습니다.");
					break;
				}
			}
		}

	</SCRIPT>

</HEAD>

<BODY>

<FORM NAME=RADIO_BUTTON>

	<B>당신이 가장 좋아하는 프로그래밍 교과목은 무엇입니까?</B><P>

	<INPUT TYPE=RADIO NAME="SUB1" VALUE="A"> ASP 프로그래밍 <BR>
	<INPUT TYPE=RADIO NAME="SUB1" VALUE="P"> PHP 프로그래밍 <BR>
	<INPUT TYPE=RADIO NAME="SUB1" VALUE="J"> JSP 프로그래밍 <BR>
	<INPUT TYPE=RADIO NAME="SUB1" VALUE="V"> JAVA 프로그래밍 <BR>

	<INPUT TYPE=BUTTON VALUE="확 인" onClick="check(this.form)">
</FORM>

</BODY>
</HTML>