<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b>배열 성적처리</b><Br>
<%
				//1차원 점수배열 선언과 생성 및 초기화
int kor[] = {90,90,90};
				//1차원 과목명배열 선언과 생성 및 초기화
String title[] = {"kor","eng","math","총점","평균"};

						//변수 초기화
int total = 0;				//총점
float avg = 0;				//평균
int i;
						//성적처리(총점, 평균 계산) 및 출력
for(i = 0; i<kor.length; i++){			//for (i = 0; i < 3; i++), i = 2까지 반복
%>
<%=title[i] %> = <%=kor[i] %><Br>
<%
	total +=+kor[i];			//total += kor[i];
}							//i=3이 되면서 for문 빠져나옴
	avg = total / 3;			//평균은 반복수행 할 필요 없음. 한번만 실행.

%>

<%=title[i] %> = <%=total %> <Br>       
<%=title[i+1] %> = <%=avg %>
</body>
</html>