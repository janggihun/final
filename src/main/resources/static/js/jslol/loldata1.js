/**
 * 
 *///만들어야 할것 >>id입력시에 밑에 연관으로 아이디 나올수 있게하기


$('#idSearch').on("click", function() {
	LoadingWithMask()
	$('#loadingimg').show();
	let gameName = $('#gameName').val()
	let tagLine = $('#tagLine').val()

	if (gameName == '' || tagLine == '') {

		alert("소환사 이름을 선택해주세요")
		closeLoadingWithMask()
		return false;
	} else {
		data = {
			'gameName': gameName,
			'tagLine': tagLine
		}

		$.ajax({
			type: 'post',
			url: '/main/info',
			data: data,
			traditional: true,


		}).done(function(result) {
console.log("성공")
			console.log(result)

		}).fail(function() {
			console.log(error)
		})


	}
})


//function check(id) {
//
//	if ($('.' + id).css("display") == 'none') {
//
//		$('.' + id).fadeTo(50, 1);
//	}
//	// btn` 보이기 (display: block)
//	else {
//		$('.' + id).hide();
//	}
//
//}

function LoadingWithMask() {
	var maskHeight = $(document).height(); var maskWidth = window.document.body.clientWidth;
	var mask = "<div id='mask' style='position:absolute; z-index:9000; background-color:#000000; display:none; left:0; top:0;'></div>";
	var loadingImg = '';
	loadingImg += " <img src='/loadingimg.gif' style='position: absolute; display: block; margin: 0px auto;'/>";
	$('body').append(mask)
	$('#mask').css({ 'width': maskWidth, 'height': maskHeight, 'opacity': '0.3' });
	$('#mask').show();
	$('#loadingImg').append(loadingImg);
	$('#loadingImg').show();
}

function closeLoadingWithMask() {
	$('#mask, #loadingImg').hide();
	$('#mask, #loadingImg').empty();
}