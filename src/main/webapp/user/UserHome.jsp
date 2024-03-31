<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Hello Bookworm</title>
</head>

		
	<frameset rows="155,96,*">
		
		<frame src=HomeTop.jsp name="1" scrolling="no">
		<frameset cols="15%,67%,18%" frameborder="no">
				<frame src="HomeMiddleLeft.jsp" name="2.1" scrolling="no">	
				<frame src="HomeMiddleMiddle.jsp" name="2.2" scrolling="no">	
				<frame src="HomeMiddleRight.jsp" name="2.3" scrolling="no">	
		</frameset>	
		<frame src="HomeBottom.jsp" name="3">
	
	</frameset>

</html>