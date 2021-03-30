<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 등록</title>
<%-- <script src="${path }/resources/ckeditor/ckeditor.js"></script> --%>
<script src="https://cdn.ckeditor.com/4.16.0/full/ckeditor.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	
	$(function(){
		
		$(".startTime").blur(function(){
			console.log($(".startTime").val());
		});
		
		$(".startDate").on(function(){
			console.log($(".startDate").val());
		});
		
	});
	
</script>
</head>
<body>
	<div style="text-align:center">
		<h1>강의 등록 화면</h1>
	</div>
	
	<div id="main-container" style="text-align:center">
		<form id="class-info" action="regCls" enctype="multipart/form-data" method="post">
			<div class="part1">
				<table>
					<tr>
						<td>
							<select name="clsCategory">
								<option>카테고리 선택</option>
								<option value="ct_wt">웨이트</option>
								<option value="ct_ft">피트니스</option>
								<option value="ct_yg">요오가</option>
								<option value="ct_fl">필라이트</option>
							</select>
						</td>
						<td colspan="4">
							<input type="text" name="clsName" placeholder="제목을 입력해주세요">
						</td>
					</tr>
					<tr>
						<th>태그</th>
						<td><input type="text" name="clsTag"></td>
					</tr>
					<tr>
						<th>프로그램 진행 기간</th>
						<td>
							<!-- 시스템적으로 처리할 수 있는 방법에 한계가 있는 것 같아, 끝 날짜까지 받아보려 함 -->
							<input type="date" class="startDate" name="startDate"> ~
							<input type="date" name="endDate">
						</td>
						<th>요일</th>
						<td>
							<!-- validation 시 %/% 조건 확인할 것 -->
							<input type="text" name="yoil" placeholder="ex)월/수/금">
						</td>
						<th>시작 시간</th>
						<td>
							<!-- 끝 시간은 시작에서 50분 더해 줌 -->
							<input type="time" class="startTime" name="startTime" > ~
							<input type="time" class="startTime" name="endTime">
						</td>
					</tr>
					<tr>
						<th>수업 횟수</th>
						<td><input type="number" name="lapse"></td>
						<th>회당 가격</th>
						<td><input type="number" name="perPrice"></td>
						<th>인원 수</th>
						<td>
							<select name="maxMem">
								<option>인원 수</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
							</select>
						</td>
					</tr>
				</table>
			</div>
			
			<div class="part2">
				<table>
					<tr>
						<th>난이도</th>
						<td>
							<select name="clsLevel">
								<option value="상">상</option>
								<option value="중">중</option>
								<option value="하">하</option>
							</select>
						</td>
						<th>소모 칼로리</th>
						<td>
							<input type="number" name="calorie">kcal
						</td>
					</tr>
					<tr>
						<th>운동장비</th>
						<td><input type="text" name="equip"></td>
					</tr>
					<tr>
						<th>강의 내용 소개</th>
						<td>
							<textarea id="clsInfo" name="clsInfo">수강생 여러분들이 참고할 수 있는 자세한 설명을 작성해주세요</textarea>
							<script type="text/javascript">CKEDITOR.replace("clsInfo")</script>
						</td>
					</tr>
					<tr>
						<th>커리큘럼 상세 정보</th>
						<td>
							<textarea id="curriculum" name="curriculum">강의의 상세한 커리큘럼을 작성해주세요</textarea>
							<script type="text/javascript">CKEDITOR.replace("curriculum")</script>
						</td>
					</tr>
				</table>
			</div>
			
			<div class="part3">
				<input type="file" name="clsFileName" placeholder="파일 선택">
				강의 주소:<input type="text" name="meetUrl">
				<input type="hidden" name="clsStatus" value="CS00">
				<input type="hidden" name="trainerId" value="kim">
				<p>
					<input type="submit" value="등록">
					<input type="button" value="취소">
				</p>
			</div>
		</form>
	</div>
	
</body>
</html>