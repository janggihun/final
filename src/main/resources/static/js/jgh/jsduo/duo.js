/**
 * 
 */
function duoSearch() {


	console.log("누름")

}

$('#duoSearchBtn').on("click", function() {

	let userId = $('#userId').val()
	let MyPosition = $('#position').val()
	let DuoPosition = $('input[name=inlineRadioOptions]:checked').val()
	let tier = $('#tier').val()
	let gameType = $('#gameType').val()
	let textArea = $('#textArea').val()

	if (MyPosition == '' || DuoPosition == '' || DuoPosition == ''
		|| tier == '' || gameType == '' || textArea == '') {

		alert("빠진부분이 있습니다 확인해주세요")

		return false;
	}
	data = {
		'userId': userId,
		'MyPosition': MyPosition,
		'DuoPosition': DuoPosition,
		'tier': tier,
		'gameType': gameType,
		'textArea': textArea
	}

	$.ajax({

		type: 'post',
		url: '/test',
		data: data,
		success: function(res) {	
			alert("등록중입니다.")
			
			//res 받으면 append 로 위로 가게 해서 뿌리기
			
			
		},
	})

	$('#exampleModal').modal("hide");

})