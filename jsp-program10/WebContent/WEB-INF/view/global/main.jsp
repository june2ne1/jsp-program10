<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../global/header.jsp"%>
<div class="outbox"><div class="box">
</div></div>
<div id="footer"></div>
<script type="text/javascript">
	$(document).ready(function() {
		$('.box').load('${context}/main.do?page=jumbotron');
		$('#footer').load('${context}/main.do?page=footer');
	});
</script>