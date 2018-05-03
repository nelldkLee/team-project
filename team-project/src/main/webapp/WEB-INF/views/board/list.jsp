<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	Massively by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Elements Reference - Massively by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/resources/assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="/resources/assets/css/noscript.css" />
</noscript>
</head>
<body class="is-loading">

	<!-- Wrapper -->
	<div id="wrapper">
		<div id="intro">
			<h1>
				This is<br /> Massively
			</h1>
			<p>
				A free, fully responsive HTML5 + CSS3 site template designed by <a
					href="https://twitter.com/ajlkn">@ajlkn</a> for <a
					href="https://html5up.net">HTML5 UP</a><br /> and released for
				free under the <a href="https://html5up.net/license">Creative
					Commons license</a>.
			</p>
			<ul class="actions">
				<li><a href="#header"
					class="button icon solo fa-arrow-down scrolly">Continue</a></li>
			</ul>
		</div>
		<!-- Header -->
		<header id="header"> <a href="index.html" class="logo">TEAM-PROJECT</a>
		</header>

		<!-- Nav -->
		<nav id="nav">
		<ul class="links">
			<li><a href="index.html">This is Massively</a></li>
			<li><a href="generic.html">Generic Page</a></li>
			<li class="active"><a href="elements.html">자유게시판</a></li>
		</ul>
		<ul class="icons">
			<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
			<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
			<li><a href="#" class="icon fa-instagram"><span
					class="label">Instagram</span></a></li>
			<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
		</ul>
		</nav>

		<!-- Main -->
		<div id="main">

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
									<option value="t" selected="selected">제목</option>
									<option value="c">내용</option>
									<option value="w">작성자</option>
									<option value="t-w">제목+작성자</option>
									<option value="c-w">내용+작성자</option>
									<option value="t-c-w">제목+내용+작성자</option>
								</select>
							</div>
						</div>
						<div class="4u 12u$(xsmall)">
							<input type="text" name="keyword" id="demo-name"
								placeholder="Keyword" />
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

		<!-- Footer -->
		<footer id="footer"> </footer>
		<!-- Copyright -->
		<div id="copyright">
			<ul>
				<li>&copy; Untitled</li>
				<li>Design: <a href="localhost:8080/board/list">HTML5 UP</a></li>
			</ul>
		</div>
	</div>

	<!-- Scripts -->
	<script src="/resources/assets/js/jquery.min.js"></script>
	<script src="/resources/assets/js/jquery.scrollex.min.js"></script>
	<script src="/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="/resources/assets/js/skel.min.js"></script>
	<script src="/resources/assets/js/util.js"></script>
	<script src="/resources/assets/js/main.js"></script>
	<script>
		$("table").on("click","tr",function(e){
			console.dir(e);
			console.dir($(this));
			console.log($(this).attr("data-bno"));
		});
	</script>
</body>

</html>