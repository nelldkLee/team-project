<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../includes/header.jsp"%>
<!-- Table -->
<div class="row uniform read">
	<div class="8u 12u$(xsmall)">
		<h3>Title</h3>
		<input type="text" name="demo-name" id="read" value="${boardVO.title}"
			readonly="readonly" />
	</div>
	<div class="4u 12u$(xsmall)">
		<h3>Writer</h3>
		<input type="text" name="demo-email" id="read"
			value="${boardVO.writer}" readonly="readonly" />
	</div>
	<div class="12u$">
		<h3>Content</h3>
		<textarea name="demo-message" id="read"
			placeholder="Enter your message" rows="10" readonly="readonly">${boardVO.content}</textarea>
	</div>
	<!-- Break -->
	<div class="12u$">
		<ul class="actions">
			<li><a class="button special"
				href="/board/modify?bno=${boardVO.bno}&${cri.makeURL()}">Modify</a></li>
			<li><a class="button remove">Delete</a></li>
			<li><a class="button" href="/board/list?${cri.makeURL()}">List</a></li>
		</ul>
	</div>
</div>
</div>
<%@ include file="../includes/footer.jsp"%>
<script>
$(document).ready(function(){
	if(${msg != null}){
		if(${msg == "Success"}){
			alert("수정 완료");
		}else{
			alert("수정 실패");
		}
	};
	$(".actions .remove").on("click",function(e){
		$.post("/board/remove",
		        {
		          bno: ${boardVO.bno},
		        },
		        function(data){
		            alert("Data: " + data);
		            location.href = "/board/list";
		        });	
	});
});

</script>
