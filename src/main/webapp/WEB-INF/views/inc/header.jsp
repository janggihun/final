<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"
	integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa"
	crossorigin="anonymous"></script>

   <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>

<input id="userId" type="hidden" value="${userid}">




<nav class="navbar navbar-dark bg-primary">
	<div class="container-fluid">
		<a class="navbar-brand" href="/main">파이널 프로젝트</a> <a
			class="navbar-brand" href="/1">장기훈</a> <a class="navbar-brand"
			href="/2">김동근</a> <a class="navbar-brand" href="/3">김윤태</a> <a
			class="navbar-brand" href="/4">김진문</a> <a class="navbar-brand"
			href="/5">송태민</a> <a class="navbar-brand" href="/6">정혜린</a>


		<c:choose>
			<c:when test="${userId != null}">
				<span class="navbar-brand">${userId}님 환영합니다.</span>
				<button type="button" class="btn btn-primary" data-bs-toggle="modal"
					data-bs-target="#exampleModal3">결제하기</button>
				<button  ><a class="btn btn-secondary" href="/logout">로그아웃</a></button>



			</c:when>
			<c:otherwise>
				<button type="button" class="btn btn-primary" data-bs-toggle="modal"
					data-bs-target="#exampleModal2">로그인</button>
				<button type="button" class="btn btn-primary" data-bs-toggle="modal"
					data-bs-target="#exampleModal1">회원가입</button>
			</c:otherwise>
		</c:choose>











	</div>
</nav>
<div class="idsearch" align="center"
	style="height: 100px; background: lightblue;"></div>
</div>



<!-- Modal -->
<div class="modal fade" id="exampleModal1" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">회원가입</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close">x</button>
			</div>
			<div class="modal-body">

				<h3>빈곳을 입력해 가입해주세요</h3>
				<form action="/join" method="post">
					아이디 : <input type="text" name="userId"> (ajax 비동기처리요망)</br> 패스워드
					:<input type="text" name="userPw"> (추후에 ***로 변경)</br>
					<hr>
					이름 : <input type="text" name="userName"> (db만들기) </br> e-mail :
					<input type="text" name="userEmail"> (db만들기) </br>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">닫기</button>
						<button type="submit" class="btn btn-primary">회원가입하기</button>
					</div>

				</form>

			</div>

		</div>
	</div>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal2" tabindex="-1"
	aria-labelledby="exampleModalLabel"  aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">로그인</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">

				<h3>로그인창</h3>

				<form action="/login" method="post">
					아이디 : <input type="text" id='userId' name="userId"> </br> 패스워드 :
					<input type="text" id="userPw" name="userPw"> </br>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">닫기</button>
						<button type="submit" class="btn btn-primary">로그인하기</button>
					</div>
				</form>


			</div>

		</div>
	</div>
</div>



<!-- Modal -->
<div class="modal fade" id="exampleModal3" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">결제창</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">



				<div>
					<h3 class="amount">결제 금액 :<span id = "tMoney"></span> 원<input type = "hidden" id = "totalMoney" value ="0" ></h3>
					<p>개월 수를 선택 해 주세요</p>
					<select onchange="monthSelect(this)">
						<option value="0">선택하기</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
				</div>

			</div>
			<div align = "center">
			
			<input type="button" class="btn btn-primary btn-sm" onclick="kakaopay()" value = "결제하기">
			<input type="button" class="btn btn-secondary btn-sm"data-bs-dismiss="modal"  value = "취소하기">
			
			</div>
			
			
			<p></p>
		</div>
	</div>
</div>





