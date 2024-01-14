<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

	<h1 align="center">롤 듀오DUO 구하기</h1>
	<div id=duoTable style="width: 1700px;">
		<div align="right">
			<button type="button" class="btn btn-success" type="button"
				class="btn btn-primary" data-bs-toggle="modal"
				data-bs-target="#exampleModal">글쓰기</button>
			<p></p>
		</div>
		<table class="table table-hover">
			<thead>
				<tr class="table-secondary">
					<th scope="col">연승/연패</th>
					<th scope="col">이름</th>
					<th scope="col">주포지션</th>
					<th scope="col">티어</th>
					<th scope="col">찾는포지션</th>
					<th scope="col">최근 챔피언</th>
					<th scope="col">메모</th>
					<th scope="col">등록일시</th>
					<th scope="col"></th>
				</tr>
			</thead>
			<tbody class="table-dark" id = "cnt">
				<tr id="duoContents">
					<td>2연승</td>
					<td>소환사아이디</td>
					<td>탑</td>
					<td>플레티넘</td>
					<td>원딜</td>
					<td>자야</td>
					<td>내용</td>
					<td>2024-01-14</td>
					<td>
						<div class="dropdown">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								data-bs-toggle="dropdown" aria-expanded="false">...</button>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">수정</a></li>
								<li><a class="dropdown-item" href="#">삭제</a></li>
							</ul>
						</div>
					</td>


				</tr>

			</tbody>

		</table>
	</div>


	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">소환사 찾기</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">


					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">${userId}님의
							듀오를 찾아드립니다.</label> <input type="hidden" id="uesrId" value="${userId}">
					</div>
					<hr>
					<p>본인 포지션</p>

					<select class="form-select form-select-sm"
						aria-label="Small select example">
						<option selected>포지션</option>
						<option value="1">탑</option>
						<option value="2">정글</option>
						<option value="3">미드</option>
						<option value="3">원딜</option>
						<option value="3">서폿</option>
					</select>

					<hr>
					<p>찾는 듀오의 라인을 골라주세요</p>

					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio"
							name="inlineRadioOptions" id="inlineRadio1" value="option1">
						<label class="form-check-label" for="inlineRadio1">탑</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio"
							name="inlineRadioOptions" id="inlineRadio2" value="option2">
						<label class="form-check-label" for="inlineRadio2">정글</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio"
							name="inlineRadioOptions" id="inlineRadio3" value="option3">
						<label class="form-check-label" for="inlineRadio3">미드</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio"
							name="inlineRadioOptions" id="inlineRadio3" value="option4">
						<label class="form-check-label" for="inlineRadio3">원딜</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio"
							name="inlineRadioOptions" id="inlineRadio3" value="option5">
						<label class="form-check-label" for="inlineRadio3">서폿</label>
					</div>

					<hr>

					<div class="input-group mb-3">
						<label class="input-group-text" for="inputGroupSelect01">현재티어</label>
						<select class="form-select" id="inputGroupSelect01">
							<option selected>필수선택</option>
							<option value="1">브론즈</option>
							<option value="2">실버</option>
							<option value="3">골드</option>
						</select> <label class="input-group-text" for="inputGroupSelect01">원하는
							게임종류</label> <select class="form-select" id="inputGroupSelect01">
							<option selected>필수선택</option>
							<option value="1">칼바람나락</option>
							<option value="2">솔로랭크</option>
							<option value="3">자유랭크</option>
							<option value="3">아레나</option>
							<option value="3">일반게임</option>
						</select>

					</div>


					<hr>



					<div class="mb-3">
						<label for="exampleFormControlTextarea1" class="form-label">남길
							메모(맨트가 좋을수록 승률이 올라갑니다.)</label>
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="1" placeholder="멘탈 좋으신분 찾습니다."></textarea>
					</div>



				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id = "duoSearchBtn">듀오찾기</button>
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>

				</div>
			</div>
		</div>
	</div>






</body>
</html>