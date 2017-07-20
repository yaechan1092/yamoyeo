<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>group_create</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
 
  	
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
        <li><a href="view07_ver1.jsp"><span class="glyphicon glyphicon-log-in"><font size="5" color=" #ffffff"></span> 마이페이지</font></a></li>
        <li><a href="view01_ver1.jsp"><span class="glyphicon glyphicon-log-in"><font size="5" color=" #ffffff"></span> 로그아웃</font></a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- 하단 몸체 부분 입니다. 양쪽 사이드 네비 있고 가운데 메인 네비 -->
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
    </div>
   	<div class="col-sm-8 text-center"> 
    	<form action="view02.jsp" method="get">
			<h1>새로운 모임 만들기</h1>
			모임명 : <INPUT TYPE=text name = "group_id"><br/><br/>
			관심사 : <input type="radio" name="interest" value="여행">여행 <input type="radio" name="interest" value="스터디">스터디 <input type="radio" name="interest" value="친목">친목 <input type="radio" name="interest" value="문화">문화 <input type="radio" name="interest" value="운동">운동
			<br/><br/>
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
				</select><br/><br/>
			요일 : 
				<input type="radio" name = "dday" value="월"/> 월
				<input type="radio" name = "dday" value="화"/> 화
				<input type="radio" name = "dday" value="수"/> 수	
				<input type="radio" name = "dday" value="목"/> 목
				<input type="radio" name = "dday" value="금"/> 금
				<input type="radio" name = "dday" value="토"/> 토
				<input type="radio" name = "dday" value="일"/> 일 <br/><br/>
			모임 소개글 : 
			<TEXTAREA ROWS=10 COLS=30 name="memo"></TEXTAREA><br/><br/>
				
				<div id= "image" align="center">
					이미지 파일을 넣어주세요<input type="file" name="image"/><br/><br/><br/>
				</div>
				
				<input type=submit value="모임 만들기"/>
				<input type="reset" value="다시 쓰기">
				
			</form>
    	</div>
    	<div class="col-sm-2 sidenav">
    	</div>
	</div>
</div>

</body>
</html>