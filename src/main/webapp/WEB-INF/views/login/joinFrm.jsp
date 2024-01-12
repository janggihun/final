<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div>

<h3>빈곳을 입력해 가입해주세요</h3>
<form action="/join" method = "post">
아이디 : <input type="text" id = 'userId' name = "userId">
</br>
패스워드 : <input type = "text" id = "userPw" name = "userPw">
</br>
	<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-primary">회원가입하기</button>
				</div>

</form>

</div>

