
function monthSelect(e) {
	let needMoney = (100 * e.value);
	$('#tMoney').html(needMoney)

	document.querySelector('#totalMoney').value = (100 * e.value)

}

function kakaopay() {

	let totalMoney = $('#totalMoney').val()
	let userId = $('#userId').val()

	if (totalMoney == null || totalMoney == 'none' || totalMoney == "") {
		alert("결제 금액을 선택해주세요");
		return;

	}
	let IMP = window.IMP;
	IMP.init('imp11857210');
	IMP.request_pay({
		pg: 'kakaopay',
		//		pay_method: 'card', //생략 가능
		merchant_uid: 'merchant_' + new Date().getTime(), // 상점에서 관리하는 주문 번호
		name: '결제테스트: 테스트',
		amount: totalMoney,
		buyer_email: 'jgh@naver.com',
		buyer_name: '테스트',
		buyer_tel: '010-1234-5678',
		buyer_addr: '인천시 주안동',
		buyer_postcode: '123-456'
	}, function(rsp) {
		console.log(rsp)
		if (rsp.imp_uid) {

			$.ajax({
				type: 'post',
				url: '/pay/' + rsp.imp_uid,
			}).done(function(data) {
				if (rsp.paid_amount == data.response.amount) {
					alert("결제 성공");
				} else {
					alert("결제 실패");
				}
			})



		} else {
			alert("결제 오류입니다. 관리자에게 문의하세요");
		}



	})
}