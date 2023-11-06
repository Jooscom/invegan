<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style>
	.top {
		clear: both;
		height: 150px;
	}	
	.logoImg{
		position: inherit;
		float: left;
	}
	.loginInfo{
		position: inherit;
		float: right;
		width: 200px;
		height: 30px;
		margin-top: 25px;
		margin-right: 50px;
		
	}
	.loginInfo > p {
		display: inline-block;
	}
	.infoModal{
		border: 1px solid black;
		display: none;
		position: absolute;
		background-color: grey;
		z-index: 100;

	}
	.sideBar{
		width: 60px;
		height: 372px;
		position: fixed;
		top: 35%;
		right: 3%;
	}	
	.sideList{
		width: 60px;
		height: 60px;
		margin: 1px 0px;
		border: 1px solid black;
		background-color: #F0F8FF;		
	}
	#last{
		border: 2px gray solid;
		width: 100%;
	}
	.nav{
		float: right;
		margin: 0 auto;
		width: 1000px;
	}
	.nav_item_1{
		list-style: none;
		float: left;
		margin: 0 15px;
		position: relative;
	}
	.nav_item_1 > a{
		font-size: 40px;
		text-decoration: none;
		color: black;

	}
	.nav_list_2{
		display: none;
		position: absolute;
		top: 100%;
		background-color: grey;
	}
	.nav_item_1{
		list-style: none;
		position: relative;
	}
	.nav_litm_2 > a{
		text-align: center;
		text-decoration: none;
		font: 40px;
	}
</style>
</head>
<body>


	<div class="top">
		<div class = "logoImg">
			<img src="<c:url value='/resources/main/logo.png'/>" width=300px height=150px, alt="Logo Img" id="Logo"/>
		</div>
		<div class="loginInfo">
				<!-- 로그인 안했을 때 -->
			<c:if test="${empty loginInfo}">
				<p><a href = "<c:url value='/member/login.go'/>">로그인</a></p>
				<p>/</p>
				<p><a href = "<c:url value='/member/signup'/>">회원가입</a></p>
			</c:if>
		
			<!-- 로그인 했을 때 -->
 			<c:if test="${not empty loginInfo}">
				<p>프로필사진</p>
				<p id="loginNickname">${loginInfo.getNickname()}</p>
				<p id="loginId">${loginInfo.getId()}</p>
				<div class="infoMB">
					<button id="infoButton">@</button>
					<div class="infoModal">
						<div class="infoModalList"><a href = "<c:url value='/member/signup'/>">로그아웃</a></div>
						<div class="infoModalList"><a href = "<c:url value='/myPage/info.go'/>">마이페이지</a></div>
						<c:if test="${loginInfo.getIs_admin() eq '1'}">
							<div class="infoModalList_admin"><a href = "<c:url value='/member/signup'/>">회원 관리</a></div>
							<div class="infoModalList_admin"><a href = "<c:url value='/member/signup'/>">신고관리</a></div>
							<div class="infoModalList_admin"><a href = "<c:url value='/member/signup'/>">식재료추가</a></div>
						</c:if>
					</div>
				</div>
			</c:if>
		</div>
		
	</div>
		<nav class="nav">
			<ul class="nav_list_1">
				<li class="nav_item_1"><a href="<c:url value='/diet/tempCalander'/>">식단관리</a></li>
				<li class="nav_item_1" id="nav_item_categori"><a href="<c:url value='/restaurant/list'/>">카테고리</a>
	 				<ul class="nav_list_2">
						<li class="nav_item_2"><a href="<c:url value='/restaurant/list'/>">식당</a></li>
						<li class="nav_item_2"><a href="<c:url value='/restaurant/list'/>">레시피</a></li>
						<li class="nav_item_2"><a href="<c:url value='/restaurant/list'/>">음식</a></li>
						<li class="nav_item_2"><a href="<c:url value='/restaurant/list'/>">뷰티</a></li>
						<li class="nav_item_2"><a href="<c:url value='/restaurant/list'/>">패션</a></li>
					</ul>
					
				</li>
				<li class="nav_item_1"><a href="<c:url value='/feed/list.go'/>">피드</a></li>
				<li class="nav_item_1"><a href="<c:url value='/restaurant/list'/>">자유게시판</a></li>
				<li class="nav_item_1"><a href="<c:url value='/restaurant/list'/>">소식지</a></li>
			</ul>
		</nav>
	

	<div class="sideBar">
		<div class="sideList">
			<p>위</p>
		</div>
		<div class="sideList">
			<p>사</p>
		</div>
		<div class="sideList">
			<p>이</p>
		</div>
		<div class="sideList">
			<p>드</p>
		</div>
		<div class="sideList">
			<p>바</p>
		</div>
		<div class="sideList">
			<p>아래</p>
		</div>
	</div>





<hr id="last">
</body>
<script>
	$('#Logo').on('click',function(){
		location.href = '<c:url value='/'/>';
	});

	$('#infoButton').on('click',function(){
		var displayChk = $('.infoModal').css('display');
		console.log(displayChk);
		
		if(displayChk == 'block'){
			$('.infoModal').css({'display':'none'});
		}else{
			$('.infoModal').css({'display':'block'});
		}
	});

	$('#nav_item_categori').on('mouseover',function(){
		$('.nav_list_2').css({"display":"block"});	
	});
	$('#nav_item_categori').on('mouseout',function(){
		$('.nav_list_2').css({"display":"none"});	
	});


</script>
</html>