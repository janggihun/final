<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div>


	메인페이지입니다.



	<div class="idsearch" align="center">
		<form action="/main/info" method = "Post">
			<input type="text" placeholder="캐릭터명을 입력해주세요" style="width: 400px;"
				value="bury my비애" id="gameName" name="gameName"> <input
				type="text" placeholder="태그를 입력해주세요" style="width: 50px;"
				value="KR1" id="tagLine" name="tagLine"> <input
				type="submit"  value="검색" id="idSearch">
		</form>
	</div>
	<div id='mask' style='position: absolute; z-index: 9000; background-color: #000000; display: none; left: 0; top: 0;'></div>


	<img scr="/img/loadingimg.gif" style='display: block;'> </br>
	
	
	 <a href="/logout">로그아웃</a>








</div>