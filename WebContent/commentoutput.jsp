<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

  ${error}  

<div id="member">
	<h1>ȸ�� ���� �ϱ�</h1>
	<form action = "userInsert.do" method ="post" >
	I.D : <INPUT TYPE=text name="user_id"><br/><br/>
	P.W : <input type=password name="user_pwd"><br/><br/>
	�̸� : <input type=text name="user_name"><br/><br/>
	�� : <input type=text name="phone"><br/><br/>
	
	���� : 
		<input type="radio" name ="sex"  value="m"/> ����
		<input type="radio" name ="sex"  value="f"/> ����
		
	
	���ɻ� : 
		<input type="radio" name ="interest"  value="travel"/> ����
		<input type="radio" name ="interest"  value="study"/> ���͵�
		<input type="radio" name ="interest"  value="friend"/> ģ��
		<input type="radio" name ="interest"  value="culture"/> ��ȭ
		<input type="radio" name ="interest"  value="sports"/> �<br/><br/>
	</div>
	�ּ� : <input type=text name="address"><br/><br/>
	<br/>
	<br/>
	<input type= "submit" value="ȸ������"/>
	</form>