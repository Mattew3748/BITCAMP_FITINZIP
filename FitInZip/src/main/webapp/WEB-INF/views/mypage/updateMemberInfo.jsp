<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ��������</title>
<script type="text/javascript">
	function btn_click(frm){
		location.href="mypage/"
		frm.submit();
	}
</script>
</head>
<body>
	<table>
		<tr>
			<form method="post">
				<c:if test="${empty member}">
					<p>������� �ƴ� ����~</p>
				</c:if>
				<c:if test="${not empty member}">
					<tr>
						<th>���̵�</th>
						<td><input type="text" name="id" value="${member.id }"></td>
					</tr>
					 <tr>
						 <th>�����ȣ</th>
						 <input type="text" name="post" value="${member.post }">
					 </tr>
					 <tr>
						 <th>���θ��ּ�</th>
						 <input type="text" name="addr_1" value="${member.addr_1 }">
					 </tr>
					 <tr>
					 	<th>���ּ�<th>
					 	<input type="text" name="addr_2" value="${member.addr_2 }">
					 </tr>
				 </c:if>
				 <input type="button" onclick="btn_click(this.form)">
			</form>
		</tr>
	</table>
</body>
</html>