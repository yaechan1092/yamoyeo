
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>로그인/메인 페이지</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="description" content="">
    <meta name="author" content="">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
 
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      background-color: #2c3e50;
      margin-bottom: 0;
      border-radius: 0; 
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 900px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #ffffff;
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
 
}
    
table {text-align:center;}
form {display:inline;}
caption {text-align:center;}

#joinbutton {width : 200px}
#group_create {width : 200px}
#group_search {width : 200px}
#accordion .content {display:none;}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.0.js"></script>
<script type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
<script> 
$(document).ready(function() { 
   $('#accordion .subject').on('click', function(){ 
      var content = $(this).siblings('.content'); 
      if (content.css('display') == 'none') { 
         $('#accordion .content').slideUp(); 
         content.slideDown(); 
         } else { 
         content.slideUp(); 
      } 
   }); 
}); 
</script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">
      	<img src="logogo.bmp" width="100" height="40">
	  </a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-5">
      <ul class="nav navbar-nav navbar-right">
      	<li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i><font size="4px" color="#ffffff">${user_id} 회원님</font><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="view07_ver1.jsp"><i class="glyphicon glyphicon-user"></i> 마이 페이지</a>
                        </li>
                        <li class="divider">
                        </li>
                        <li>
                            <a href="#"><i class="glyphicon glyphicon-log-out"></i> 로그아웃</a>
                        </li>
                    </ul>
                </li>
      </ul>
    </div>
  </div>
</nav>


<div class="container">  
  <div class="row">
    <div class="col-sm-2 sidenav">
    <br><br><br>
		<ul style="list-style:none" id="accordion">
	<li>
	<p class="subject">
		<button id="joinbutton" class="btn btn-primary ">모임 조회하기</button>
	</p>
		<div class="content">
	<form action = "searchGroup.do" method = "get">
	
		<b>카테고리</b>
		<input type="radio" name="interest" value="여행">여행 <input type="radio" name="interest" value="스터디">스터디 <input type="radio" name="interest" value="친목">친목 <input type="radio" name="interest" value="문화">문화 <input type="radio" name="interest" value="운동">운동
		<br><br>
		<b>지역&nbsp;</b>
		<select name="address">
			<option value="서울">서울</option>
			<option value="경기도">경기도</option>
			<option value="강원도">강원도</option>
			<option value="충청북도">충청북도</option>
			<option value="충청남도">충청남도</option>
			<option value="전라북도">전라북도</option>
			<option value="전라남도">전라남도</option>
			<option value="경상북도">경상북도</option>
			<option value="경상남도">경상남도</option>
			<option value="제주도">제주도</option>
		</select>
		<br><br>
		<div>
			<b>요일</b><input type="radio" name="day" value="월">월 <input type="radio" name="day" value="화">화 <input type="radio" name="day" value="수">수 <input type="radio" name="day" value="목">목 <input type="radio" name="day" value="금">금 <input type="radio" name="day" value="토">토 <input type="radio" name="day" value="일">일
		</div>
		<br>
		<b>모임명</b><input id="group_name" type="text" size=200px><br>
		<input id="group_search" class="btn btn-info" type = "submit" value = "모임 검색하기">
	</form><br><br>
	</div>
		<button id="group_create" class="btn btn-primary " onclick="javascript:location.href='view06_ver1.jsp';">모임 생성하기</button>
	</li>
</ul>
</div>

<div class="col-md-9">
<div class="row carousel-holder">

                    <div class="col-md-12">
<br>
	<table align="center">
	<caption><b><h3>${user.user_id} 회원님을 위한 추천모임</h3></b></caption>
	<tr>
		<td>
			<ul style="list-style:none">
				<li><a href=""><img src="" width="200" height="200" alt="이미지를 업로드해주세요"></a></li>
				<li> ${group.group_name} </li>
				<li> ${group.interest} </li>
				<li> ${group.state} </li>
			</ul>
		</td>
		<td>
			<ul style="list-style:none">
				<li><a href=""><img src="" width="200" height="200" alt="이미지를 업로드해주세요"></a></li>
				<li> ${group.group_name} </li>
				<li> ${group.interest} </li>
				<li> ${group.state} </li>
			</ul>
		</td>
		<td>
			<ul style="list-style:none">
				<li><a href=""><img src="" width="200" height="200" alt="이미지를 업로드해주세요"></a></li>
				<li> ${group.group_name} </li>
				<li> ${group.interest} </li>
				<li> ${group.state} </li>
			</ul>
		</td>
	</tr>
	</table><br>

	<table align="center">
	<caption><b><h3>금주의 인기모임</h3></b></caption>
	<tr>
		<td>
			<ul style="list-style:none">
				<li><a href=""><img src="" width="200" height="200" alt="이미지를 업로드해주세요"></a></li>
				<li> ${group.group_name} </li>
				<li> ${group.interest} </li>
				<li> ${group.state} </li>
			</ul>
		</td>
		<td>
			<ul style="list-style:none">
				<li><a href=""><img src="" width="200" height="200" alt="이미지를 업로드해주세요"></a></li>
				<li> ${group.group_name} </li>
				<li> ${group.interest} </li>
				<li> ${group.state} </li>
			</ul>
		</td>
		<td>
			<ul style="list-style:none">
				<li><a href=""><img src="" width="200" height="200" alt="이미지를 업로드해주세요"></a></li>
				<li> ${group.group_name} </li>
				<li> ${group.interest} </li>
				<li> ${group.state} </li>
			</ul>
		</td>
	</tr>
	</table><br>
	
	<table align="center">
	<caption><b><h3>최근에 생성된 모임</h3></b></caption>
	<tr>
		<td>
			<ul style="list-style:none">
				<li><a href=""><img src="" width="200" height="200" alt="이미지를 업로드해주세요"></a></li>
				<li> ${group.group_name} </li>
				<li> ${group.interest} </li>
				<li> ${group.state} </li>
			</ul>
		</td>
		<td>
			<ul style="list-style:none">
				<li><a href=""><img src="" width="200" height="200" alt="이미지를 업로드해주세요"></a></li>
				<li> ${group.group_name} </li>
				<li> ${group.interest} </li>
				<li> ${group.state} </li>
			</ul>
		</td>
		<td>
			<ul style="list-style:none">
				<li><a href=""><img src="" width="200" height="200" alt="이미지를 업로드해주세요"></a></li>
				<li> ${group.group_name} </li>
				<li> ${group.interest} </li>
				<li> ${group.state} </li>
			</ul>
		</td>
	</tr>
	</table>
</div>
  </div>
</div>

<footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>DEVELOPER</h3>
                        <p>CHO Yo Sung, KIM Seo Yeon<br> KIM Yae Chan, SHIN Sang Yeop </p>
                    </div>
                    <div class="footer-col col-md-4">
                       
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; KODB CLASS-1 GROUP-3
                    </div>
                </div>
            </div>
        </div>
    </footer>




</body>
</html>