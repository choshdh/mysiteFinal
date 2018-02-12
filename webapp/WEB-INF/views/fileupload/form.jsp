<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="${pageContext.request.contextPath }/assets/css/guestbook.css" rel="stylesheet" type="text/css">



<title>Mysite</title>
</head>
<body>
	
	<div id="container">
		
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>
		
		<div id="wrapper">
			<div id="content">
				<div id="guestbook">
					
					<form method="post" action="${pageContext.request.contextPath }/fileupload/upload" enctype="multipart/form-data">
						<table>
							<tr>
								<td>첨부파일</td>
								<td><input type="file" name="file"></td>
								<td><input type="submit" value="파일업로드"></td>
							</tr>
						</table>
					</form>
					
					<br>
					
					<c:forEach items="${requestScope.l }" var="fvo">
				
						<table>
							<tr>
								<td>[${fvo.fileNo }]</td>
								<td>파일명 : ${fvo.fileOriginalName }</td>
								<td>확장자 : ${fvo.fileExName }</td>
								<td><a href="${pageContext.request.contextPath}/fileupload/delete?fileNo=${fvo.fileNo }">삭제</a></td>
							</tr>
							<tr>
								<td colspan=4>
									파일 업로드 날짜 : ${fvo.fileRegDate}<br>
									<img src="${pageContext.request.contextPath }/upload/${fvo.fileSaveName}" style="width:150px">
								</td>
							</tr>
						</table>
						<br>
							
					</c:forEach>
					
					
				</div><!-- /guestbook -->
			</div><!-- /content -->
		</div><!-- /wrapper -->
		
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		
	</div><!-- /container -->
	
	
	
</body>
</html>		
		