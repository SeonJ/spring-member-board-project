<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<style>
	div#mypage-content {
		width:100%;
		height:calc(100vh - 60px);
		/*background-color:gray;*/
		display:flex;
		align-items:center;
		justify-content: center;
	}
</style>
</head>
<body>
<%-- 로그인 정보 : ${sessionScope.SESS_LOGIN_INFO}<br> --%>
<!-- 상단 공동 메뉴 -->
<%@ include file="../menu/top.jsp" %>
<!-- //상단 공동 메뉴 -->

<div id="mypage-content">
	마이 페이지
</div>

<%-- <a href="<%=request.getContextPath() %>">홈</a>&nbsp; --%>
<%-- <a href="view_member.do?userid=${sessionScope.SESS_LOGIN_INFO.userid}&mode=view">회원정보 보기</a>&nbsp;
<a href="view_member.do?userid=${sessionScope.SESS_LOGIN_INFO.userid}&mode=update">회원정보 수정</a> --%>
</body>
</html>