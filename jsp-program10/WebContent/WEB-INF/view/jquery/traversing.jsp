<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/header.jsp"%>
<h1>조회(트래버싱)</h1>
<div class="outbox">
<div class="box">
	<h3>트래버싱(traversing)이란 ? DOM을 탐색하는 기능</h3>
	<table>
		<tr>
			<th>메소드</th>
			<th>설명</th>
		</tr>
		<tr>
			<td>add()
				<button id="btn_add">샘플</button>
			</td>
			<td>엘리먼트를 추가한다</td>
		</tr>
		<tr>
			<td>filter()
				<button id="btn_filter">샘플</button>
			</td>
			<td>조건에 맞는 엘리먼트 찾기</td>
		</tr>
		<tr>
			<td>not()<button id="btn_not">샘플</button></td>
			<td>표현식에 맞지 않는 엘리먼트 찾기</td>
		</tr>
		<tr>
			<td>slice()<button id="btn_slice">샘플</button></td>
			<td>원하는 범위의 엘리먼트만 반환</td>
		</tr>
		<tr>
			<td>children()<button id="btn_children">샘플</button></td>
			<td>자식 엘리먼트</td>
		</tr>
		<tr>
			<td>contents()</td>
			<td>엘리먼트 내용 변경</td>
		</tr>
		<tr>
			<td>next()</td>
			<td>엘리먼트 뒤에 있는 엘리먼트</td>
		</tr>
		<tr>
			<td>nextAll()</td>
			<td>엘리먼트 뒤에 있는 모든 엘리먼트</td>
		</tr>
		<tr>
			<td>prev()</td>
			<td>엘리먼트 앞에 있는 엘리먼트</td>
		</tr>
		<tr>
			<td>prevAll()</td>
			<td>엘리먼트 앞에 있는 모든 엘리먼트</td>
		</tr>
		<tr>
			<td>siblings()<button id="btn_siblings">샘플</button></td>
			<td>엘리먼트와 같은 노드 위치의 모든 엘리먼트</td>
		</tr>
		<tr>
			<td>parent()<button id="btn_parent">샘플</button></td>
			<td>엘리먼트에서 가장 인접한 부모 엘리먼트</td>
		</tr>
		<tr>
			<td>parents()<button id="btn_parents">샘플</button></td>
			<td>모든 부모 엘리먼트</td>
		</tr>
		<tr>
			<td>find()<button id="btn_find">샘플</button></td> 
			<td>엘리먼트의 자손 엘리먼트</td>
		</tr>
		<tr>
			<td>map()<button id="btn_map">샘플</button></td> 
			<td>셀렉트된 엘리먼트들의 내용을 변경</td>
		</tr>
		<tr>
			<td>andSelf()</td>
			<td>탐색한 엘리먼트들의 기준이 되었던 엘리먼트를 추가</td>
		</tr>
		<tr>
			<td>end()<button id="btn_end">샘플</button></td>
			<td>메소드 체이닝(chaning)중에 최초 엘리먼트로 돌아가기</td>
		</tr>
	</table>
</div>	
</div>
<script>

</script>