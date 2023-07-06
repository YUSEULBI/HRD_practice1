<%@page import="Controller.Dto"%>
<%@page import="Controller.Dao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="header.jsp" %>
	<center>
		<h3>환자조회</h3>
		<table border="1" style="border-collapse: collapse; width: 700px;">
			<tr>
				<th>환자번호</th><th>환자성명</th>
				<th>생년월일</th><th>성별</th>
				<th>전화번호</th><th>지역</th>
			</tr>
			<%
				Dao dao = new Dao();
				List<Dto> dtoList = dao.getPatientList();
				for ( Dto dto : dtoList ){
					%>
					<tr>
						<th><%=dto.getP_no() %></th><th><%=dto.getP_name() %></th>
						<th><%=dto.getP_birth() %></th><th><%=dto.getP_gender() %></th>
						<th><%=dto.getP_tel() %></th><th><%=dto.getP_city() %></th>
					</tr>
					<%
				}
			%>
		</table>
	</center>
	<%@include file="footer.jsp" %>
</body>
</html>