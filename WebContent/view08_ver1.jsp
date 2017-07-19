<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>mypage_group</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
 
  	form {display:inline;}
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
  
    background-color: #3366ff;
      margin-bottom: 0;
      border-radius: 0;
      
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 900px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<!--상단 헤드 부분 입니다.  -->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="view02.jsp">
      
      <img src="yamo03.bmp" width="100" height="40">
    
    </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
     
      <ul class="nav navbar-nav navbar-right">
		<li><span><font size="0.5"></span><br></font><font size="4" color="#EAEAEA">${user_id} 회원님으로 로그인하셨습니다</font></li>
        <li><a href="view07.jsp"><span class="glyphicon glyphicon-log-in"><font size="5" color=" #ffffff"></span> 마이페이지</font></a></li>
        <li><a href="view01.jsp"><span class="glyphicon glyphicon-log-in"><font size="5" color=" #ffffff"></span> 로그아웃</font></a></li>      </ul>
    </div>
  </div>
</nav>
 
 <!-- 하단 몸체 부분 입니다. 양쪽 사이드 네비 있고 가운데 메인 네비 --> 
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
    
    </div>
    <div class="col-sm-8 align-center"> 
     
	<h1> 마이 페이지</h1>
		<form action="view07.jsp" method="post">
	<input type=submit id="memadmin" value="회원정보 관리"/>
	</form>

	
	<form action="view08.jsp" method="post">
	<input type=submit id="groupadmin" value="모임 관리"/>
	</form><p><br/>
	
	<h3> 내가 개설한 모임</h3>
	<table id="mytable">
		<thead>
				<tr>
					<th class="group_id">모임명</th>
					<th class="interest">관심사</th>
					<th class="address">지역</th>
					<th class="day">요일</th>
					<th class="now_member">인원</th>
					<th class="state">상태</th>
					<th class="delete">모임삭제</th>
				</tr>
			</thead>
		<tbody id="rowbody">
				<tr id = "temprow">
					<td class="group_id">모임명</td>
					<td class="interest">관심사</td>
					<td class="address">지역</td>
					<td class="day">요일</td>
					<td class="now_member">인원</td>
					<td class="state">상태</td>
					<td><input type="button" class="pdel" value="삭제하기" /></td>
				</tr>
			</tbody>
	</table><p>
	
	<h3> 내가 가입한 모임</h3>
	<table id="jointable">
		<thead>
				<tr>
					<th class="group_id">모임명</th>
					<th class="interest">관심사</th>
					<th class="address">지역</th>
					<th class="day">요일</th>
					<th class="now_member">인원</th>
					<th class="state">상태</th>
					<th class="delete">모임삭제</th>
				</tr>
			</thead>
			<tbody id="rowbody">
				<tr id = "temprow">
					<td class="group_id">모임명</td>
					<td class="interest">관심사</td>
					<td class="address">지역</td>
					<td class="day">요일</td>
					<td class="now_member">인원</td>
					<td class="state">상태</td>
					<td><input type="button" class="pdel" value="탈퇴하기" /></td>
				</tr>
			</tbody>
	</table><p>
    </div>
    <div class="col-sm-2 sidenav">
    </div>
  </div>
</div>

</body>
</html>