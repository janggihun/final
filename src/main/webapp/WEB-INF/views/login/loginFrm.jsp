<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div>
	<h3>로그인창</h3>

	<form action="/login" method="post">
		아이디 : <input type="text" id='userId' name="userId"> </br> 패스워드 : <input
			type="text" id="userPw" name="userPw"> </br>
		<div class="modal-footer">
			<button type="button" class="btn btn-secondary"
				data-bs-dismiss="modal">닫기</button>
			<button type="submit" class="btn btn-primary">로그인하기</button>
		</div>


	</form>

</div>

