<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개별 회원정보 조회</title>
</head>
<body>

	<form action="${pageContext.request.contextPath}/member/view_action.do" method="get">
	
		<label id="userid">조회할 회원 아이디</label>
		
		<input type="text" id="userid" name="userid" size="20" 
			maxlength="10" 
			required 
			pattern="[a-zA-Z]{1}\w{1,9}" 
			title="아이디는 2~10자 사이로 영문/숫자 조합으로 입력하셔야 합니다.">
			
		<!-- 추가 필드 : view(조회) 모드 -->
		<input type="text" name="mode" value="view" readonly/>
		<!-- <input type="hidden" name="mode" value="view" /> -->
			
		<input type="submit" value="회원정보 조회" />
		
	</form>
</body>
</html>