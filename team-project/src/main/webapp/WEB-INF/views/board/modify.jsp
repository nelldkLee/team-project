<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../includes/header.jsp"%>
<!-- Table -->
<form method="post">
	<div class="row uniform">
		<input type="hidden" name="bno" value="${boardVO.bno}">
		<div class="8u 12u$(xsmall)">
			<h3>Title</h3>
			<input type="text" name="title" id="demo-name"
				value="${boardVO.title}" />
		</div>
		<div class="4u 12u$(xsmall)">
			<h3>Writer</h3>
			<input type="email" name="writer" id="demo-email"
				value="${boardVO.writer}" readonly="readonly" />
		</div>
		<div class="12u$">
			<h3>Content</h3>
			<textarea name="content" id="demo-message"
				placeholder="Enter your message" rows="10">${boardVO.content}</textarea>
		</div>
		<!-- Break -->
		<div class="12u$">
			<ul class="actions">
				<li><input type="submit" value="Modify Success" class="special"/></li>
				<li><a class="button" onclick="goBack()">back</a></li>
				<li><a class="button" href="/board/list?${cri.makeURL()}">List</a></li>
			</ul>
		</div>
	</div>
</form>
</div>
<%@ include file="../includes/footer.jsp"%>
<script>
function goBack() {
    window.history.back();
}
</script>
