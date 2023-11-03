<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<style>
    table, th, td{
        border: 1px solid black;
        border-collapse: collapse;
        padding: 5px 10px;
    }
    
    input[type="submit"]{
    	height: 50px;
    }    
</style>
</head>
<body>
	<table>
	        <tr>
	            <th>ID</th>
	            <th>
	                <input type="text" name="id" value="" placeholder="아이디를 입력 하세요"/>
	            </th>
	            <th rowspan="2">
	                <input type="button" id="login" value="login"/>
	            </th>
	        </tr>
	        <tr>
	            <th>PW</th>
	            <th>
	                <input type="password" name="pw" value="" placeholder="비밀번호를 입력 하세요"/>
	            </th>                
	        </tr>
	        <tr>
	            <th colspan="3">
	                <input id="signup" type="button" value="회원가입"/>
	                <input id="findId" type="button" value="아이디/비밀번호 찾기"/>
	            </th>    
	        </tr>
	    </table>
</body>
<script>


$('#login').on('click',function(){
	var id = $('input[name="id"]').val();
	var pw = $('input[name="pw"]').val();
	console.log(id+"/"+pw);
	
	$.ajax({
		type:'post',
		url:'login',
		data:{'id':id, 'pw':pw},
		dataType:'JSON',
		success:function(data){
			console.log(data);
			alert(data.msg);
			if(data.id != null){
				location.href = 'main';
				//location.reload();
					
			}		
		},
		error:function(e){
			console.log(e);
		}
	}); 
	
});


	$('#signup').on('click',function(){
		console.log('a');
		location.href='signup';
	});
	
	$('#findId').on('click',function(){
		console.log('b');
		location.href='findId';
	});
	
	var msg = "${msg}";
	if(msg != ""){
		alert(msg);
	}


</script>
</html>