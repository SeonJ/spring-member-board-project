<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>게시글 패쓰워드 입력폼</title>

<%-- <%@ include file="../menu/top.jsp" %> --%>

<!-- bootstrap -->
<link rel="stylesheet" href="<c:url value='/bootstrap/css/bootstrap.min.css' />" >
<!-- jquery -->
<script src="<c:url value='/jquery/jquery.min.js' />" ></script>
<!-- popper.js -->
<script src="<c:url value='/popper.js/umd/popper.min.js' />" ></script>
<!-- bootstrap -->
<script src="<c:url value='/bootstrap/js/bootstrap.min.js' />" ></script>

<script type="text/javascript" src="<c:url value='/js/board.js' />" charset="UTF-8"></script>
</head>

<!-- context Path -->
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<body>
	<div align="center" class="container mt-5">
		<h3>비밀번호 확인</h3>
		<form action="${contextPath}/board/board_check_pass.do" class="form" name="frm" method="get">
			<input type="hidden" name="command" value="board_check_pass">
			<input type="hidden" name="num" value="${param.num}">
			
			<table class="table table-borderless mt-3">
				<tr>
					<th class="col-3 mt-3 pl-5 pr-0">비밀번호</th>
					<td class="col-6"><input type="password" class="form-control" name="pass" size="20"></td>
					<td class="col-3"> 
						<input type="submit" class="btn btn-primary" value="확 인 " onclick="return passCheck()"> 
					</td>
				</tr>
			</table>
			<!-- 패쓰워드 일치/불일치 메시지 -->
			<br>${message}
		</form>
	</div>
</body>
</html>