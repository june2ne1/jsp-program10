<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="temp">
<TABLE WIDTH=620 HEIGHT=40 BORDER=0 CELLSPACING=1 CELLPADDING=1 ALIGN=CENTER>
  <TR BGCOLOR=#A0A0A0>
    <TD ALIGN=CENTER><FONT SIZE=4><B>회 원 가 입3</B></FONT></TD>
  </TR>
</TABLE>

<FORM NAME="frm_join" id="frm_join" ACTION="">

<TABLE WIDTH=620 BORDER=1 CELLSPACING=0 CELLPADDING=2 ALIGN=CENTER>

	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>이름</B></TD>
		<TD WIDTH=500>
			<INPUT TYPE=TEXT NAME="name" id="name" SIZE=20 MAXLENGTH=20 style="ime-mode:active"/>
		</TD>
	</TR>

	<TR>
		<TD WIDTH=120 ALIGN=CENTER ><B>아이디</B></TD>
		<TD WIDTH=500>
			<INPUT TYPE=TEXT NAME="userid" id="userid" SIZE=20 MAXLENGTH=10 style="ime-mode:inactive">
			<IMG SRC="${context}/images/btn_dup_id_3.gif" BORDER=0 ALIGN=ABSMIDDLE STYLE=CURSOR:HAND>
		</TD>
	</TR>
  
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>패스워드</B></TD>
		<TD WIDTH=500>
			<INPUT TYPE=PASSWORD NAME="password" id="password" SIZE=20 MAXLENGTH=10>
		</TD>
	</TR>
  
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>패스워드 재입력</B></TD>
		<TD WIDTH=500>
			<INPUT TYPE=PASSWORD NAME="ReUserPass" SIZE=20 MAXLENGTH=10>
		</TD>
	</TR>
  
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>이메일</B></TD>
		<TD WIDTH=500>
			<INPUT TYPE=TEXT NAME="email" id="email" SIZE=60 MAXLENGTH=90 style="ime-mode:inactive">
		</TD>
	</TR>
  	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>생년</B></TD>
		<TD WIDTH=500>
			<INPUT TYPE=TEXT NAME="birth" SIZE=6 MAXLENGTH=6> 
		</TD>
	</TR>
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>성별</B></TD>
		<TD WIDTH=500>
			<input type="radio" name="gender" value="남" checked/> 남
			<input type="radio" name="gender" value="여" /> 여
		</TD>
	</TR>
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>주 소</B></TD>
		<TD WIDTH=500>
			<input type="checkbox" name="addr" value="서울"/> 서울
			<input type="checkbox" name="addr" value="인천" /> 인천
			<input type="checkbox" name="addr" value="경기" /> 경기
			<input type="checkbox" name="addr" value="강남구" /> 강남구
			<input type="checkbox" name="addr" value="서초구" /> 서초구
			<input type="checkbox" name="addr" value="강북구" /> 강북구
		</TD>
	  </TR>
  
	<TR>
		<TD WIDTH=120 ALIGN=CENTER><B>휴대전화</B></TD>
		<TD WIDTH=500>
			<SELECT NAME=phone SIZE=1>
				<OPTION VALUE="0" SELECTED>번호선택
				<OPTION VALUE="010-1234-5678">010-1234-5678
				<OPTION VALUE="011-2345-5644">011-2345-5644
				<OPTION VALUE="011-3456-5644">011-3456-5644
				<OPTION VALUE="011-4567-5644">011-4567-5644
			</SELECT> 
		</TD>
	</TR> 
	<TR ALIGN=CENTER>
		<TD colspan="2">		
			<IMG SRC="${context}/images/btn_be_member_3.gif" STYLE=CURSOR:HAND id="join">&nbsp;&nbsp;
			<IMG SRC="${context}/images/btn_mb_cancel_3.gif" STYLE=CURSOR:HAND id="cancel">
		</TD>
	</TR>
   
</TABLE>
</FORM>
</div>
<script type="text/javascript">
	$(function() {
		$('#join').click(function() {
			Join.join();
		});
	});
	var Join = {
			join : function () {
				alert("조인멤버 클릭했음");
				$('#frm_join').submit(function(e) {
					alert("조인멤버 서브밋통과했음");
					$.ajax('${context}/member.do',{
						data : {
							userid : $('#userid').val(),
							password : $('#password').val(),
							name : $('#name').val(),
							email : $('#email').val(),
							birth : $('#birth').val(),
							addr : '체크박스', 
							gender : $("input:radio[name=gender]:checked").val(),
							phone : $("select[name=phone] option:selected").val(),
							page : 'join_member'
						},
						dataType : 'json',
						success : function(data) {
							$('#temp').remove();
							var header = document.createElement('div');
							header.id = 'header';
							document.body.appendChild(header);
							var outbox = document.createElement('div');
							outbox.id = 'outbox';
							document.body.appendChild(outbox);
							var footer = document.createElement('div');
							footer.id = 'footer';
							document.body.appendChild(footer);
							$('<div id="box"></div>').appendTo($('#outbox').empty());
							$('#box').append('<h1>환영합니다.'+data.name+'</h1><br/><a href="${context}/main.do">홈으로</a>')
						},
						error : function(xhr,status,msg) {
							alert("상태 : "+status+", 내용 :"+msg);
						}
					});
					e.preventDefault();
				});
				$('#frm_join').submit(); 
				
			},
		checkbox : function(addr) {
				var arr = [];
				addr.each(function() {
					arr.push($(this).val());
				});
				return arr;
		}
	};
</script>






