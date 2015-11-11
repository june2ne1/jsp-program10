<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<HTML>
<HEAD>
	<TITLE>SELECT 입력 양식</TITLE>

	<SCRIPT LANGUAGE="javascript">

		function check(form) {

			index = form.SUBJECT.selectedIndex;

			if( index == 0 ) {
				alert("과목을 선택하세요");
				return false;
			}

			list = form.SUBJECT.options[form.SUBJECT.selectedIndex].text;
			value = form.SUBJECT.options[form.SUBJECT.selectedIndex].value;

			var result = "";

			result += "선택항목의 인덱스 : " + index + "\n";
			result += "선택항목의 리스트 : " + list + "\n";
			result += "선택항목의 값 : " + value + "\n";

			alert(result);
		}

	</SCRIPT>

</HEAD>

<BODY>

<FORM NAME=CHECKBOX_BUTTON>

	<B>당신이 가장 좋아하는 프로그래밍 교과목은 무엇입니까?</B><P>

	<SELECT NAME=SUBJECT SIZE=1>
		<OPTION VALUE="NOT" SELECTED>과목 선택
		<OPTION VALUE="A"> ASP 프로그래밍
		<OPTION VALUE="P"> PHP 프로그래밍
		<OPTION VALUE="J"> JSP 프로그래밍
		<OPTION VALUE="V"> JAVA 프로그래밍
	</SELECT>

	<INPUT TYPE=BUTTON VALUE="확 인" onClick="check(this.form)">

</FORM>

</BODY>
</HTML>