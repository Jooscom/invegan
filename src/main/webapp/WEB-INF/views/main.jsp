<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>인비건 INVEGAN</title>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>

<style>
	.banner{
		background-color : 	#20B2AA;
		width: 1000px;
		height: 400px;
		margin: 0 auto;
	}
	.custom{
		width: 1200px;
		height: auto;
		margin: 0 auto;
	}
	.customFilterArea{
		height: 80px;
		clear: both;
	}
	.cF_title{
		position: inherit;
		float: left;
		width: 175px;
		height: 30px;
		margin-left: 50px;
	}
	.cF_move{
		position: inherit;
		float: right;
		width: 100px;
		height: 30px;
		margin-top: 25px;
		margin-right: 50px;
	}
	.customFilterList{
		display: flex;
		flex-direction: row;
	}
	.customFilterButton{
		width: 100px;
	}
	.cFL_Res{
		width : 328px;
		margin: 0px 2px;
	}
	.cFL_R_Img{
		width: 325px;
		height: 325px;
		background-color: 	#00CED1;
		margin: 0 auto;
	}
	.cFL_R_VT{
		margin: 2px 0px;
	}
	.cFL_R_Name{
		text-align: center;
		font-weight: 600;
		font-size: 30px;
		margin-top: 0px;
	}
	.blank{
		margin-bottom: 200px;
	}
	/* 지울꺼 */
	.qwe{
		background-color: #FFFACD;
		width: 90px;
		height: 90px;
		margin: 150px auto;
		text-align: center;
		font-size: 60px;
		font-weight: 600;
		
		
	
	}
</style>
</head>
<body>

	  
	<c:import url="/main/header"/>

	<div class="banner">
		<p id="status"></p>
		<a id="map-link" target="_blank"></a>
	</div>
	<br>
	<input type="button" id="login" name="로그인"/>
	
	<!-- 맞춤 정보 제공 -->

	<div class="custom">
	
		<!-- 식당 -->
		<div class="customFilterArea">
			<div class="cF_title"><h1>추천 식당</h1></div>
			<div class="cF_move"><h3><a href="#">더보기...</a></h3></div>
		</div>
		<div class="customFilterList">
			<div class="customFilterButton">
				<!-- 버튼 대체해야함 -->
				<div class="qwe">L</div>
			</div>
			<div class="cFL_Res">
				<div class="cFL_R_Img"></div>
				<div class="cFL_R_Con">
					<p class="cFL_R_VT">#락토 #비건 # 오토</p>
					<h2 class="cFL_R_Name">식당 명</h2>
				</div>
			</div>
			<div class="cFL_Res">
				<div class="cFL_R_Img"></div>
				<div class="cFL_R_Con">
					<p class="cFL_R_VT">#락토 #비건 # 오토</p>
					<h2 class="cFL_R_Name">식당 명</h2>
				</div>
			</div>
			<div class="cFL_Res">
				<div class="cFL_R_Img"></div>
				<div class="cFL_R_Con">
					<p class="cFL_R_VT">#락토 #비건 # 오토</p>
					<h2 class="cFL_R_Name">식당 명</h2>
				</div>
			</div>
			<div class="customFilterButton">
				<!-- 버튼 대체해야함 -->
				<div class="qwe">R</div>
			</div>
		</div>
		
		<!-- 레시피 -->
		<div class="customFilterArea">
			<div class="cF_title"><h1>추천 레시피</h1></div>
			<div class="cF_move"><h3><a href="#">더보기...</a></h3></div>
		</div>
		<div class="customFilterList">
			<div class="customFilterL">
				<!-- 버튼 대체해야함 -->
				<div class="qwe">L</div>
			</div>
			<div class="cFL_Res">
				<div class="cFL_R_Img"></div>
				<div class="cFL_R_Con">
					<p class="cFL_R_VT">#락토 #비건 # 오토</p>
					<h2 class="cFL_R_Name">식당 명</h2>
				</div>
			</div>
			<div class="cFL_Res">
				<div class="cFL_R_Img"></div>
				<div class="cFL_R_Con">
					<p class="cFL_R_VT">#락토 #비건 # 오토</p>
					<h2 class="cFL_R_Name">식당 명</h2>
				</div>
			</div>
			<div class="cFL_Res">
				<div class="cFL_R_Img"></div>
				<div class="cFL_R_Con">
					<p class="cFL_R_VT">#락토 #비건 # 오토</p>
					<h2 class="cFL_R_Name">식당 명</h2>
				</div>
			</div>
			<div class="customFilterR">
				<!-- 버튼 대체해야함 -->
				<div class="qwe">R</div>
			</div>
		</div>
		
		<!-- 제품 -->
		<div class="customFilterArea">
			<div class="cF_title"><h1>추천 제품</h1></div>
			<div class="cF_move"><h3><a href="#">더보기...</a></h3></div>
		</div>
		<div class="customFilterList">
			<div class="customFilterL">
				<!-- 버튼 대체해야함 -->
				<div class="qwe">L</div>
			</div>
			<div class="cFL_Res">
				<div class="cFL_R_Img"></div>
				<div class="cFL_R_Con">
					<p class="cFL_R_VT">#락토 #비건 # 오토</p>
					<h2 class="cFL_R_Name">식당 명</h2>
				</div>
			</div>
			<div class="cFL_Res">
				<div class="cFL_R_Img"></div>
				<div class="cFL_R_Con">
					<p class="cFL_R_VT">#락토 #비건 # 오토</p>
					<h2 class="cFL_R_Name">식당 명</h2>
				</div>
			</div>
			<div class="cFL_Res">
				<div class="cFL_R_Img"></div>
				<div class="cFL_R_Con">
					<p class="cFL_R_VT">#락토 #비건 # 오토</p>
					<h2 class="cFL_R_Name">식당 명</h2>
				</div>
			</div>
			<div class="customFilterR">
				<!-- 버튼 대체해야함 -->
				<div class="qwe">R</div>
			</div>
		</div>
		
		<!-- 피드 -->
		<div class="customFilterArea">
			<div class="cF_title"><h1>추천 피드</h1></div>
			<div class="cF_move"><h3><a href="#">더보기...</a></h3></div>
		</div>
		<div class="customFilterList">
			<div class="customFilterL">
				<!-- 버튼 대체해야함 -->
				<div class="qwe">L</div>
			</div>
			<div class="cFL_Res">
				<div class="cFL_R_Img"></div>
				<div class="cFL_R_Con">
					<p class="cFL_R_VT">#락토 #비건 # 오토</p>
					<h2 class="cFL_R_Name">식당 명</h2>
				</div>
			</div>
			<div class="cFL_Res">
				<div class="cFL_R_Img"></div>
				<div class="cFL_R_Con">
					<p class="cFL_R_VT">#락토 #비건 # 오토</p>
					<h2 class="cFL_R_Name">식당 명</h2>
				</div>
			</div>
			<div class="cFL_Res">
				<div class="cFL_R_Img"></div>
				<div class="cFL_R_Con">
					<p class="cFL_R_VT">#락토 #비건 # 오토</p>
					<h2 class="cFL_R_Name">식당 명</h2>
				</div>
			</div>
			<div class="customFilterR">
				<!-- 버튼 대체해야함 -->
				<div class="qwe">R</div>
			</div>
		</div>
	
	</div>
		
	<div class="blank"></div>
	
<c:import url="/main/footer"/>

</body>


<script>

var msg = "${msg}";
if(msg != ""){
	alert(msg);
}

$('#login').on('click',function(){
	location.href='member/login.go';
});

// 위치 관련
var geodata = {};
navigator.geolocation.getCurrentPosition(geoSuccess, getError);
function geoSuccess(position){
	geodata.lat = position.coords.latitude;
	geodata.lng = position.coords.longitude;
	geoSubmit(geodata);
}
function getError() {
	geodata.lat = 37.4765;
	geodata.lng = 126.8802;
	geoSubmit(geodata);
}
function geoSubmit(data){
	$.ajax({
		type:'post',
		url:'geo',
		data:data,
		dataType:'JSON',
		success:function(data){
			console.log("dd");
		},
		error:function(e){
			console.log(e);
		}
	});
}

</script>
</html>