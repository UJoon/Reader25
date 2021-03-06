<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String result = (String)request.getAttribute("result"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reader들을 위한 Reader 25</title>

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/serchId.css">

<style>
.outer{
		width: 400px; min-height: 520px; margin-left: auto; margin-right: auto; 
		margin-top:3%; margin-bottom: 3%;
	}
</style>
</head>
<body>
	
	<div class="outer" align="center">

		<h3 class="txt_serch" align="center">아이디 찾기</h3>
		
		<form action="<%= request.getContextPath() %>/searchId.me" method="post" id="serchIdForm" name="serchIdForm" onsubmit="return send(this);">
			<table class="serch_put">
				<tr>
					<th class="txt_serch_div1" width="100px">이름</th>
					<td>
						<div class="input_name">
							<input type="text" name="userName" id="userName" required="required" placeholder="이름을 입력하세요">
						</div>
					</td>
				</tr>
				<tr>
					<th class="txt_serch_div1" width="100px">휴대전화</th>
					<td>
						<div class="input_phone">
							<input type="phone" name="phone" required="required" placeholder="휴대번호를 입력하세요">
						</div>
					</td>
				</tr>
			</table>
			
			<br><br>
			
			<input type="submit" value="찾기" class="btn1" onclick="findId();">
			
			<br><br>
		
			<% if(result==null) { %>
				<h2 class="txt_serch_div2" name=findIdResult1 align="center">해당정보의 아이디가<br>없습니다.</h2>
			<% } else { %>
				<h4 class="txt_serch_div2" name=findIdResult1 align="center">회원님의 아이디는</h4>
				<h2 class="txt_serch_div2" name=findIdResult2 align="center">
					'<%=result%>' 입니다.
				</h2>
			<% } %>
			
			<div class="BtnDiv" align="center">
				<input type="button" onclick="window.close();" class="btn3" value="확인">
			</div>
		</form>
	</div>
	
</body>
</html>