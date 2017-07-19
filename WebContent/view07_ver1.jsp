<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>mypage_user</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.0.js"></script>
  <script type="text/javascript"></script>

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
    	<div class="col-sm-8 text-center"> 
     	 <h1>마이 페이지</h1>
			<div>
			<form action="view07.jsp" method="post">
				<input type=submit id="memadmin" value="회원정보 관리"/>
			</form>

			<form action="view08.jsp" method="post">
				<input type=submit id="groupadmin" value="모임 관리"/>
			</form><p><br/>
			</div>
			
			<form action="view07.jsp" method="post">
				I.D : <input type=text id="userID" name = "user_id" value ="${user_id}" disabled="disabled"><br/><br/>
				P.W : <input type=password name="user_pwd" value = "${user_pwd}"><br/><br/>
				이름 : <input type=text name="user_name" value = "${user_name}"><br/><br/>
			
				성별 : <input type="radio" name="sex" value="남자" checked/> 남자
					<input type="radio" name="sex" value="여자"/> 여자
					<br/><br/>
				핸드폰 번호 : <input type=text name="phone" value = "${phone}"/><br/><br/>
			
				관심사 : 
				<input type="radio" name = "interest" value="여행"/> 여행
				<input type="radio" name = "interest" value="스터디" checked/> 스터디
				<input type="radio" name = "interest" value="친목"/> 친목
				<input type="radio" name = "interest" value="문화"/> 문화
				<input type="radio" name = "interest" value="운동"/> 운동<br/><br/>
				지역 : 
					<select name="address">
						<option value="서울"> 서울
						<option value="경기도"> 경기도
						<option value="강원도"> 강원도
						<option value="충청남도"> 충청남도
						<option value="충청북도"> 충청북도
						<option value="전라북도"> 전라북도
						<option value="전라남도"> 전라남도
						<option value="경상북도"> 경상북도
						<option value="경상남도"> 경상남도	
						<option value="제주도"> 제주도
					</select><br/><br/><br/>
			
				<input type="submit" value="회원 정보 수정">
			</form>

   		</div>
   		
    <div class="col-sm-2 sidenav">
    
    </div>
    
  </div>
</div>

</body>
</html>