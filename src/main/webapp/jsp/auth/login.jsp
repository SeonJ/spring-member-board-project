<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>로그인</title>
<style>
#login-content {
	width:100%;
	height:calc(100vh - 105px);
	/*background-color:gray;*/
	display:flex;
	align-items:center;
	justify-content: center;
}

#login-box {
	/* background-color:gray; */
	padding: 80px;
	padding-bottom:50px
}

#button-style {
	display:flex;
	align-items:center;
	justify-content: center;
}
</style>
</head>
<body>

	<!-- 상단 공동 메뉴 -->
	<%@ include file="../menu/top.jsp" %>
	<!-- //상단 공동 메뉴 -->

<div id="login-content">
	<div id="login-box" class="border border-light rounded p-5">
		<form action="${contextPath}/auth/login_action.do" method="post">
		
			<!-- 타이틀 : 불릿+표제 -->
			<div class="bg-light pt-2 d-flex mb-4">
				<span class="material-icons mt-1 ml-2 mr-3">login</span>
				<h4>로그인</h4>
			</div>				
				<!--// 타이틀 -->
			
			<div class="form-group">
	      		<label for="userid">아 이 디 :</label>
	      		<input type="text" class="form-control" id="userid" placeholder="Enter id" name="userid"
	      				style="width: 500px"
	      				maxlength="10"
	      				required 
						pattern="[a-zA-Z]{1}\w{1,9}" 
						title="아이디는 2~10자 사이로 영문/숫자 조합으로 입력하셔야 합니다.">
	    	</div>
	    	<div class="form-group">
	      		<label for="pwd">패쓰워드 :</label>
	      		<input type="text" class="form-control" id="pwd" placeholder="Enter pwd" name="pwd"
	      				style="width: 500px"
	      				maxlength="10" required 
						pattern="(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,10}" 
						title="비밀번호 영문 대소문자 및 특수문자를 포함시켜서 6~10자 사이로 작성하십시오.">
	    	</div>
	    	<div id="button-style">
		    	<button type="submit" class="btn btn-dark m-3" value="로그인">로그인</button>
		    	<button type="reset" class="btn btn-dark m-3" value="취소">취소</button>
		    	<!-- <button type="button" class="btn btn-dark m-3" value="회원가입" onclick="javascript:location.href='join_form.jsp'">회원가입</button> -->
		    	<button type="button" class="btn btn-dark m-3" value="회원가입" onclick="javascript:location.href='${contextPath}/member/member_join.do'">회원가입</button>
	    	</div>
	    	
		</form>
	</div>
</div>
</body>
</html>