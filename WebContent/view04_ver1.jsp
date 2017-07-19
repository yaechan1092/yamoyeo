<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>group_detail</title>
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
        <li><a href="view07.jsp"><span class="glyphicon glyphicon-log-in"><font size="5" color=" #ffffff"></span> 마이페이지</font></a></li>
        <li><a href="view01.jsp"><span class="glyphicon glyphicon-log-in"><font size="5" color=" #ffffff"></span> 로그아웃</font></a></li>
      </ul>
    </div>
  </div>
</nav>
 
<!-- 하단 몸체 부분 입니다. 양쪽 사이드 네비 있고 가운데 메인 네비 -->
<div class="container-fluid">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
    </div>
    <div class="col-sm-8 "> 
		<table align="center">
			<thead>
				<td colspan="2" class="gname" align="center"><h4><b>모임${group.group_name}</b></h4><br/><br/></td><br/><br/>
			</thead>
			<tbody>
				<tr>
					<td><img src = ""width="200" height="200" alt = "모임대표이미지를 등록해 주세요"></td>
					<td><ul style="list-style:none">
						<li>카테고리  ${group.interest}</li>
						<li>요일  ${group.day}</li>
						<li>지역  ${group.address}</li>
						<li>상태  ${group.state}</li>
						<li>모임장  ${group.user_id}</li>
						<li><br></li>
						<a href= "GroupJoin.do?group_id=${group.group_id}">
						<li><button id="makegroup">가입하기</button>
						</a>
						<a href = "GroupDrop.do?group_id=${group.group_id}">
							<button id="reset">탈퇴하기</button></li>
						</a>
						</ul>
					</td>
				</tr>
		
				<tr>
					<td colspan="2" class="introduce" align="center"><br><br><h4>모임 소개글</h4></td>
				</tr>
			</tbody>
		</table>

<hr>

		
		<form action="view04.jsp" method="get">
		<div align="center">
			<h2>댓 글</h2>
				<div align="center">
					<input type=text size="80" id="makereple">
					<button id="enter">댓글쓰기</button>
				</div>
		</div>
		</form>
    </div>
    <div class="col-sm-2 sidenav">
    
    </div>
  </div>
</div>

</body>
</html>