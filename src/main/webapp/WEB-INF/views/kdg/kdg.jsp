
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function champ(a) {
		var idName = a;

		$('#champList').css("visibility", "visible");
		$('#name').html(a);
	}

	function submit(b) {
		var a = $('#name').text();
		var c = a + 'ion';
		var champName = b;
		let str1 = '<img onclick="javascript:champ(this.id)" id=';
		let str2 = ' src="https://ddragon.leagueoflegends.com/cdn/14.1.1/img/champion/';
		let str3 = '.png">';
		let str = str1 + a + str2 + b + str3;

		$('#' + c).html(str);
		$('#champList').css("visibility", "hidden")
	}
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta charset="UTF-8">
<title>김동근</title>
<!-- css들어갈자리  -->

<style type="text/css">
#myChampion {
	width: 50%;
	height: 500px;
	float: left;
	position: relative;
}

#enemyChampion {
	width: 50%;
	height: 500px;
	float: right;
	position: relative;
}

#myChampion #myChamp {
	border-radius: 50%;
	border: 1px solid black;
	width: 300px;
	height: 300px;
	position: absolute;
	top: 50%;
	left: 60%;
	transform: translate(-50%, -50%);
	cursor: pointer;
}

#enemyChampion #enemyChamp {
	border-radius: 50%;
	border: 1px solid black;
	width: 300px;
	height: 300px;
	position: absolute;
	top: 50%;
	right: 35%;
	transform: translate(-50%, -50%);
	cursor: pointer;
}

#versus {
	position: absolute;
	top: 40%;
	left: 46.2%;
	font-size: 100px;
}

#champList {
	background-color: white;
	width: 40%;
	height: 800px;
	visibility: hidden;
	overflow: scroll;
	float: left;
}

li {
	position: relative;
	width: 72px;
	height: 72px;
	float: left;
	padding: 1px;
	margin-left: 10px;
	margin-bottom: 30px;
	cursor: pointer;
}

ul {
	list-style: none;
	height: 500px;
	padding-inline-start: 10px;
}

span {
	display: block;
	width: 72px;
	line-height: 14px;
	font-size: 16px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	margin-top: 2px;
	height: 16px;
	text-align: center;
}

#searchChamp {
	margin-top: 10px;
	margin-bottom: 10px;
	margin-left: 20px;
}
</style>

</head>

<body>

	<%@include file="inc/header.jsp"%>
	<div style="height: 2000px; background: lightpink;">
		<p id="name" style="visibility: hidden; position: absolute;"></p>
		<!-- <h1>김동근 페이지 입니다.</h1> -->
		<div id="myChampion">
			<img onclick="javascript:champ(this.id)" src="../img/champ.jpg"
				id="myChamp"></img>

		</div>
		<div id="enemyChampion">
			<img onclick="javascript:champ(this.id)" src="../img/champ.jpg"
				id="enemyChamp"></img>

		</div>
		<h1 id="versus">vs</h1>

		<div id="champList">
			<input type="text" id="searchChamp" name="searchChamp">
			<ul>
				<c:forEach var="cham" items="${list}">
					<li><img id="${cham.champion_name}"
						src="https://ddragon.leagueoflegends.com/cdn/14.1.1/img/champion/${cham.champion_name}.png"
						width="72" height="72" alt="${cham.champion_name}"
						class="bg-image" onclick="javascript:submit(this.id)"> <span
						id="">${cham.champion_name_kr}</span></li>
				</c:forEach>
			</ul>
		</div>

	</div>

	<%@include file="inc/footer.jsp"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#searchChamp").keyup(function() {

				let cn = $('#searchChamp').val()
				console.log(cn);

				data = {
					"searchChamp" : cn
				}
				$.ajax({
					type : "POST",
					url : "/kdg/search",
					data : data,
					success : function(res) {
						console.log(res);
					}
				})
			});
		});
	</script>
</body>

</html>