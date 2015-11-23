<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<script type="text/javascript">
	$(document).ready(function() {
		Global.init();
		
		$('#header').load('${context}/main.do?page=header');
		$('#box').load('${context}/main.do?page=jumbotron').css('width','50%').css('margin','auto');
		$('#footer').load('${context}/main.do?page=footer');
	});
</script>