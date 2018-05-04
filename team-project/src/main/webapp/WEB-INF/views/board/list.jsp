<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../includes/header.jsp" %>
			<!-- Table -->
			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th>No</th>
							<th>Title</th>
							<th>Content</th>
							<th>Writer</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="boardVO">
							<tr data-bno="${boardVO.bno}">
								<td>${boardVO.bno}</td>
								<td>${boardVO.title}</td>
								<td>${boardVO.content}</td>
								<td>${boardVO.writer}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<form method="get" action="/board/list" class="alt">
					<div class="row uniform">

						<div class="4u 12u$(xsmall)">
							<div class="select-wrapper">
								<select name="type" id="demo-category">
									<option value="">-검색-</option>
									<option value="t" <c:out value="${cri.type eq 't'?'selected':''}"/>>제목</option>
									<option value="c" <c:out value="${cri.type eq 'c'?'selected':''}"/>>내용</option>
									<option value="w" <c:out value="${cri.type eq 'w'?'selected':''}"/>>작성자</option>
									<option value="t-w" <c:out value="${cri.type eq 't-w'?'selected':''}"/>>제목+작성자</option>
									<option value="c-w" <c:out value="${cri.type eq 'c-w'?'selected':''}"/>>내용+작성자</option>
									<option value="t-c-w" <c:out value="${cri.type eq 't-c-w'?'selected':''}"/>>제목+내용+작성자</option>
								</select>
							</div>
						</div>
						<div class="4u 12u$(xsmall)">
							<input type="text" name="keyword" id="demo-name"
								placeholder="Keyword" value=<c:out value="${cri.keyword}"/>>
						</div>
						<div class="2u 12u$(xsmall)">
							<button class="button special icon fa-search">Search</button>
						</div>
						<div class="2u 12u$(xsmall)">
							<a href="/board/register" class="button">register</a>
						</div>

					</div>
				</form>
				<div id="footer">

					<div class="pagination">
						<c:if test="${pageMaker.prev}">
							<a href="/board/list?page=${pageMaer.startPage-1}"
								class="previous">Prev</a>
						</c:if>

						<c:forEach begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}" var="idx">
							<a href="/board/list?page=${idx}"
								class="page <c:if test="${pageMaker.cri.page == idx}">active</c:if>">${idx}</a>
						</c:forEach>
						<c:if test="${pageMaker.next}">
							<a href="/board/list?page=${pageMaker.endPage +1}" class="next">Next</a>
						</c:if>
					</div>
				</div>
			</div>
		</div>
<%@ include file="../includes/footer.jsp" %>

<script>
	$("table tr").on("click", function(e) {
		console.dir(e);
		console.dir($(this));
		console.log($(this).attr("data-bno"));
		var bno = $(this).attr("data-bno");
		//검색 조건 유지 관련 추가 예정
		location.href = "/board/read?bno=" + bno + "&${cri.makeURL()}";
	});

	if(${msg != null}){
		if(${msg == "Success"}){
			alert("등록 완료");
		}else{
			alert("등록 실패");
		}
	};
	
	
</script>
		